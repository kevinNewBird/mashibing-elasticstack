package com.mashibing.elk.esclient.rest_api;

import com.mashibing.elk.esclient.rest_api.util.ESRestClientUtil;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.apache.http.HttpHost;
import org.elasticsearch.client.Node;
import org.elasticsearch.client.RestClient;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.sniff.ElasticsearchNodesSniffer;
import org.elasticsearch.client.sniff.NodesSniffer;
import org.elasticsearch.client.sniff.SniffOnFailureListener;
import org.elasticsearch.client.sniff.Sniffer;
import org.springframework.stereotype.Service;

import java.util.Iterator;

/**
 * description  RestClientSnifferService <BR>
 * <p>
 * author: zhao.song
 * date: created in 14:30  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Service
@Slf4j
public class RestClientSnifferService {

    //*****************************************************************************************************************


    //region 嗅探器
    //嗅探器
    @SneakyThrows
    public void sniffer() {

        //region 监听器（和嗅探器的setSniffAfterFailureDelayMillis参数息息相关）
        SniffOnFailureListener sniffOnFailureListener =
                new SniffOnFailureListener();
        //endregion

        //region 1:获取Clients
        RestClient restClient = RestClient.builder(
                new HttpHost("localhost", 9200, "http")
        ).setFailureListener(sniffOnFailureListener).build();//设置用于监听嗅探失败的监听器 绑定监听器
        //endregion

        //region 2:使用HTTPS
        NodesSniffer nodesSniffer = new ElasticsearchNodesSniffer(
                restClient,
                ElasticsearchNodesSniffer.DEFAULT_SNIFF_REQUEST_TIMEOUT,
                ElasticsearchNodesSniffer.Scheme.HTTPS);
        //endregion

        //region 3:为RestClient绑定嗅探器
        Sniffer sniffer = Sniffer.builder(restClient)
                .setSniffIntervalMillis(5000)//每隔多久嗅探一次,默认5分钟
                .setSniffAfterFailureDelayMillis(30000) //若没有绑定监听器则无效 嗅探失败时候触发嗅探一次 经过设置的时间之后再次嗅探 直至正常
                .setNodesSniffer(nodesSniffer)//如果要使用HTTPS 必须设置的对象
                .build();
        //endregion

        //启用监听
        sniffOnFailureListener.setSniffer(sniffer);
        //注意释放嗅探器资源 关闭嗅探器必须在client关闭之前操作
        sniffer.close();
        restClient.close();
    }
    //endregion

    //region 测试自动探查节点
    @SneakyThrows
    public void snifferTest() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
//        while (true) {
//            Thread.sleep(5000);
//            System.out.println(client);
//        }
        Iterator<Node> nodes = client.getLowLevelClient().getNodes().iterator();
        while (nodes.hasNext()) {
            Node node = nodes.next();
            System.out.println(node);
        }
        Thread.sleep(5000);
        System.out.println("100年后:");
        nodes = client.getLowLevelClient().getNodes().iterator();
        while (nodes.hasNext()) {
            Node node = nodes.next();
            System.out.println(node);
        }
        ESRestClientUtil.getInstance().closeClient();
    }
    //endregion
}
