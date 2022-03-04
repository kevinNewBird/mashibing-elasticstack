package com.mashibing.elk.esclient.java_api;

import com.mashibing.elk.esclient.base.entity.Product;
import com.mashibing.elk.esclient.base.service.ProductService;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.elasticsearch.action.ActionFuture;
import org.elasticsearch.action.DocWriteRequest;
import org.elasticsearch.action.admin.indices.delete.DeleteIndexRequest;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.get.GetResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexRequestBuilder;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.action.update.UpdateResponse;
import org.elasticsearch.client.transport.TransportClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.transport.TransportAddress;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.aggregations.Aggregation;
import org.elasticsearch.search.aggregations.AggregationBuilders;
import org.elasticsearch.search.aggregations.bucket.histogram.DateHistogramInterval;
import org.elasticsearch.search.aggregations.bucket.histogram.Histogram;
import org.elasticsearch.search.aggregations.bucket.terms.StringTerms;
import org.elasticsearch.search.aggregations.metrics.Avg;
import org.elasticsearch.transport.client.PreBuiltTransportClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.time.format.DateTimeFormatter;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 * description  ESTestsForJavaApi <BR>
 * <p>
 * author: zhao.song
 * date: created in 13:26  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Component
@Slf4j
public class JavaApiService {

    @Autowired
    private ProductService productService;

    private static TransportClient client;

    static {
        try {
            Settings settings = Settings.builder()
                    // 默认集群名称是elasticsearch
                    .put("cluster.name", "elasticsearch").build();
            // 因为java api已经不推荐被使用了，在8.0版本将完全移除。（为什么要学习？因为现在还有很多公司在使用7.x版本）
            client = new PreBuiltTransportClient(settings)
    //        TransportClient client = new PreBuiltTransportClient(Settings.EMPTY)
                    //通讯端口  而不是服务端口
                    .addTransportAddress(new TransportAddress(InetAddress.getByName("localhost"), 9300));
        } catch (Throwable e) {
            log.error("crate the es client of java api occur exception!", e);
        }
    }

    public void loadRSDBDataToES() throws IOException {

        //导入数据
        List<Product> list = productService.list();

        for (Product item : list) {
            System.out.println(item.getCreateTime().toLocalDateTime().format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
            IndexResponse response = client.prepareIndex("product", "_doc", item.getId().toString())
                    .setSource(XContentFactory.jsonBuilder()
                            .startObject()
                            .field("name", item.getProductName())
                            .field("desc", item.getDescription())
                            .field("price", item.getPrice())
                            .field("date", item.getCreateTime().toLocalDateTime().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")))
                            .field("tags", item.getTags().split(","))
                            .endObject())
                    .get();
            System.out.println(response.getResult());
        }
        //查询
        //get(client);
        //getAll(client);
//        update(client);
        //delete(client);

        System.out.println(client);
    }




    public void get() {
        GetResponse response = client.prepareGet("product", "_doc", "1").get();
        String index = response.getIndex();//获取索引名称
        String type = response.getType();//获取索引类型
        String id = response.getId();//获取索引id
        System.out.println("index:" + index);
        System.out.println("type:" + type);
        System.out.println("id:" + id);
        System.out.println(response.getSourceAsString());
        client.close();
    }
    //endregion

    //region getAll
    public void getAll() {
        SearchResponse response = client.prepareSearch("product")
                .get();
        SearchHits searchHits = response.getHits();
        SearchHit[] hits = searchHits.getHits();
        for (SearchHit hit : hits) {
            String res = hit.getSourceAsString();
            System.out.println("res" + res);
        }
        client.close();
    }
    //endregion

    //region update
    @SneakyThrows
    public void update() {
        UpdateResponse response = client.prepareUpdate("product", "_doc", "2")
                .setDoc(XContentFactory.jsonBuilder()
                        .startObject()
                        .field("name", "update name")
                        .endObject())
                .get();
        System.out.println(response.getResult());
        client.close();
    }
    //endregion

    //region delete
    @SneakyThrows
    public void delete() {
        DeleteResponse response = client.prepareDelete("product", "_doc", "2").get();
        System.out.println(response.getResult());
    }
    //endregion

    //region multiSearch
    /*
     * 功能描述: <br>
     * 〈多条件查找〉
     * @Param: []
     * @Return: void
     * @Author: wulei
     * @Date: 2020/6/17 10:02
     */
    @SneakyThrows
    public void multiSearch() {
        TransportClient client = new PreBuiltTransportClient(Settings.EMPTY)
                .addTransportAddress(new TransportAddress(InetAddress.getByName("localhost"), 9300));

        SearchResponse response = client.prepareSearch("product")
                .setQuery(QueryBuilders.termQuery("name", "xiaomi"))                 // Query
                .setPostFilter(QueryBuilders.rangeQuery("price").from(0).to(4000))
                // 分页(索引为1开始，也就是说第一页：（1-1）*3  第二页：（2-1）*3 )，和mysql一致
                .setFrom(1).setSize(3)
                .get();
        SearchHits searchHits = response.getHits();
        SearchHit[] hits = searchHits.getHits();
        for (SearchHit hit : hits) {
            String res = hit.getSourceAsString();
            System.out.println("res" + res);
        }
        client.close();
    }
    //endregion

    //region 聚合查询
    /*
     * 功能描述: <br>
     * 〈多条件查找〉
     * @Param: []
     * @Return: void
     * @Author: wulei
     * @Date: 2020/6/17 10:02
     */
    @SneakyThrows
    public void aggSearch() {
        //region 1->创建客户端连接
        TransportClient client = new PreBuiltTransportClient(Settings.EMPTY)
                .addTransportAddress(new TransportAddress(InetAddress.getByName("localhost"), 9300));
//                .addTransportAddress(new TransportAddress(InetAddress.getByName("localhost"), 9301));
        //endregion


        //region 2->计算并返回聚合分析response对象
        SearchResponse response = client.prepareSearch("product")
                .addAggregation(
                        AggregationBuilders.dateHistogram("group_by_month")
                                .field("date")
                                .calendarInterval(DateHistogramInterval.MONTH)
//                                .dateHistogramInterval(DateHistogramInterval.MONTH)
                                .subAggregation(
                                        AggregationBuilders
                                                .terms("by_tag")
                                                .field("tags.keyword")
                                                .subAggregation(
                                                        AggregationBuilders
                                                                .avg("avg_price")
                                                                .field("price")
                                                )
                                )
                )
                .execute().actionGet();
        //endregion


        //region 3->输出结果信息
        SearchHit[] hits = response.getHits().getHits();
        Map<String, Aggregation> map = response.getAggregations().asMap();
        Aggregation group_by_month = map.get("group_by_month");
        Histogram dates = (Histogram) group_by_month;
        Iterator<Histogram.Bucket> buckets = (Iterator<Histogram.Bucket>) dates.getBuckets().iterator();

        while (buckets.hasNext()) {
            Histogram.Bucket dateBucket = buckets.next();
            System.out.println("\n\n月份：" + dateBucket.getKeyAsString() + "\n计数：" + dateBucket.getDocCount());
            Aggregation group_by_tag = dateBucket.getAggregations().asMap().get("by_tag");
            StringTerms terms = (StringTerms) group_by_tag;
            Iterator<StringTerms.Bucket> tagsBucket = terms.getBuckets().iterator();
            while (tagsBucket.hasNext()) {
                StringTerms.Bucket tagBucket = tagsBucket.next();
                System.out.println("\t标签名称：" + tagBucket.getKey() + "\n\t数量：" + tagBucket.getDocCount());
                Aggregation avg_price = tagBucket.getAggregations().get("avg_price");
                Avg avg = (Avg) avg_price;
                System.out.println("\t平均价格：" + avg.getValue() + "\n");
            }
        }
        //endregion

        client.close();


    }
    //endregion
}
