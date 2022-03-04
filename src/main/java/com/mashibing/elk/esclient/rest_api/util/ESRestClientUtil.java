package com.mashibing.elk.esclient.rest_api.util;

import com.mashibing.elk.esclient.rest_api.constant.ElasticServerInfo;
import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.message.BasicHeader;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestClientBuilder;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.sniff.Sniffer;

import java.io.IOException;

/**
 * description  Java Rest Client Util <BR>
 * <p>
 * author: zhao.song
 * date: created in 10:47  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
public final class ESRestClientUtil {

    private static ESRestClientUtil ESClient;

    private ElasticServerInfo[] serverInfos = {ElasticServerInfo.builder()
            .serverIp("localhost").port(9200).protocol("http")
            .build()};

    private RestClientBuilder builder;
    private static Sniffer sniffer;
    private static RestHighLevelClient highClient;

    private ESRestClientUtil() {
    }

    public static ESRestClientUtil getInstance() {
        if (ESClient == null) {
            synchronized (ESRestClientUtil.class) {
                if (ESClient == null) {
                    ESClient = new ESRestClientUtil();
                    ESClient.initBuilder();
                }
            }
        }
        return ESClient;
    }

    public RestClientBuilder initBuilder() {
        HttpHost[] httpHosts = new HttpHost[serverInfos.length];
        for (int i = 0; i < serverInfos.length; i++) {
            ElasticServerInfo serverInfo = serverInfos[i];
            httpHosts[i] = new HttpHost(serverInfo.getServerIp(), serverInfo.getPort(), serverInfo.getProtocol());
        }

        builder = RestClient.builder(httpHosts);

        //region 在Builder中设置请求头
        //  1.设置请求头
        Header[] defaultHeaders = new Header[]{
                new BasicHeader("Content-Type", "application/json")
        };
        builder.setDefaultHeaders(defaultHeaders);
        //endregion
//        RestClient restClient = builder.build();

        //启用嗅探器
//        SniffOnFailureListener sniffOnFailureListener = new SniffOnFailureListener();
//        builder.setFailureListener(sniffOnFailureListener);
//        sniffer = Sniffer.builder(restClient)
//                .setSniffIntervalMillis(5000)
//                .setSniffAfterFailureDelayMillis(10000)
//                .build();
//        sniffOnFailureListener.setSniffer(sniffer);
        return builder;
    }

    public RestHighLevelClient getHighLevelClient() {
        if (highClient == null) {
            synchronized (ESRestClientUtil.class) {
                if (highClient == null) {
                    highClient = new RestHighLevelClient(builder);
//                    //十秒刷新并更新一次节点
                    sniffer = Sniffer.builder(highClient.getLowLevelClient())
                            .setSniffIntervalMillis(5000)
                            .setSniffAfterFailureDelayMillis(15000)
                            .build();
                }
            }
        }
        return highClient;
    }

    /**
     * 关闭sniffer client
     */
    public void closeClient() {
        if (null != highClient) {
            try {
                sniffer.close();    //需要在highClient close之前操作
                highClient.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}
