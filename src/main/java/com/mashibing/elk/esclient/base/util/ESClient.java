package com.mashibing.elk.esclient.base.util;

import org.apache.http.Header;
import org.apache.http.HttpHost;
import org.apache.http.message.BasicHeader;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestClientBuilder;

/**
 * description  ESClient <BR>
 * <p>
 * author: zhao.song
 * date: created in 10:47  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
public class ESClient {

    private static ESClient ESClient;
    private String host = "localhost:9200,localhost:9201";
    private RestClientBuilder builder;

    private ESClient(){
    }

    public static ESClient getInstance() {
        if (ESClient == null) {
            synchronized (ESClient.class) {
                if (ESClient == null) {
                    ESClient = new ESClient();
                    ESClient.initBuilder();
                }
            }
        }
        return ESClient;
    }

    public RestClientBuilder initBuilder() {
        String[] hosts = host.split(",");
        HttpHost[] httpHosts = new HttpHost[hosts.length];
        for (int i = 0; i < hosts.length; i++) {
            String[] host = hosts[i].split(":");
            httpHosts[i] = new HttpHost(host[0], Integer.parseInt(host[1]), "http");
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
}
