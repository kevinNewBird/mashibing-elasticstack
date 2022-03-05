package com.mashibing.elk.esclient.rest_api;

import com.google.gson.Gson;
import com.mashibing.elk.esclient.base.entity.CarSerialBrand;
import com.mashibing.elk.esclient.base.entity.Product;
import com.mashibing.elk.esclient.base.service.CarSerialBrandService;
import com.mashibing.elk.esclient.base.service.ProductService;
import com.mashibing.elk.esclient.rest_api.util.ESRestClientUtil;
import lombok.SneakyThrows;
import lombok.extern.slf4j.Slf4j;
import org.elasticsearch.action.ActionListener;
import org.elasticsearch.action.admin.indices.alias.Alias;
import org.elasticsearch.action.admin.indices.create.CreateIndexRequest;
import org.elasticsearch.action.admin.indices.create.CreateIndexResponse;
import org.elasticsearch.action.admin.indices.delete.DeleteIndexRequest;
import org.elasticsearch.action.bulk.BulkRequest;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.delete.DeleteResponse;
import org.elasticsearch.action.get.*;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.index.IndexResponse;
import org.elasticsearch.action.support.master.AcknowledgedResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.indices.GetIndexRequest;
import org.elasticsearch.client.indices.GetIndexResponse;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.common.xcontent.XContentBuilder;
import org.elasticsearch.common.xcontent.XContentFactory;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.reindex.BulkByScrollResponse;
import org.elasticsearch.index.reindex.UpdateByQueryRequest;
import org.elasticsearch.script.Script;
import org.elasticsearch.script.ScriptType;
import org.elasticsearch.search.fetch.subphase.FetchSourceContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.Collections;
import java.util.List;

/**
 * description  RestClientService <BR>
 * <p>
 * author: zhao.song
 * date: created in 12:42  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Service
@Slf4j
public class RestClientCRUDService {

    @Autowired
    private ProductService productService;

    @Autowired
    private CarSerialBrandService carService;


    @SneakyThrows
    public void createIndexTemplate() {
        // region 创建客户端对象
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        // end region

        // region Request对象
        CreateIndexRequest request = new CreateIndexRequest("test_index_demo");
        //end region

        // setting
        request.settings(Settings.builder()
                .put("index.number_of_shards", 3)
                .put("index.number_of_replicas", 2));

        // mapping
        XContentBuilder builder = XContentFactory.jsonBuilder();
        builder.startObject();
        {
            builder.startObject("properties");
            {
                builder.startObject("message");
                {
                    builder.field("type", "text");
                }
                builder.endObject();
            }
            builder.endObject();
        }
        builder.endObject();
        request.mapping("mappings",builder);

        // 别名
        request.alias(new Alias("test_index_demo_alias").filter(QueryBuilders.termQuery("name","xiaomi")));

        request.timeout(TimeValue.timeValueSeconds(2));
        // 同步
        CreateIndexResponse createIndexResponse = client.indices().create(request, RequestOptions.DEFAULT);

        // 异步
        client.indices().createAsync(request, RequestOptions.DEFAULT, new ActionListener<CreateIndexResponse>() {
            @Override
            public void onResponse(CreateIndexResponse createIndexResponse) {

            }

            @Override
            public void onFailure(Exception e) {

            }
        });

        //是否所有节点都已确认请求
        boolean acknowledged = createIndexResponse.isAcknowledged();

        // 在超时之前是否为索引中的每个碎片启动所需数量的碎片副本
        boolean shardsAcknowledged = createIndexResponse.isShardsAcknowledged();


        client.close();
    }

    @SneakyThrows
    public void createIndex() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();

        CreateIndexRequest request = new CreateIndexRequest("test_index");

        request.settings(Settings.builder()
                .put("index.number_of_shards", 3)
                .put("index.number_of_replicas", 2)
        );
        CreateIndexResponse createIndexResponse = client.indices().create(request, RequestOptions.DEFAULT);
        if (createIndexResponse.isAcknowledged()) {
            System.out.println("创建index成功!");
        } else {
            System.out.println("创建index失败!");
        }

        client.close();
    }

    @SneakyThrows
    public void getIndex() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();

        GetIndexRequest request = new GetIndexRequest("test_index*");
        GetIndexResponse response = client.indices().get(request, RequestOptions.DEFAULT);
        String[] indices = response.getIndices();
        for (String indexName : indices) {
            System.out.println("index name:" + indexName);
        }
        client.close();
    }

    @SneakyThrows
    public void delIndex(String indexName) {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        DeleteIndexRequest request = new DeleteIndexRequest(indexName);
        AcknowledgedResponse response = client.indices().delete(request, RequestOptions.DEFAULT);
        if (response.isAcknowledged()) {
            System.out.println("删除index成功!");
        } else {
            System.out.println("删除index失败!");
        }
        client.close();
    }

    @SneakyThrows
    public void insertData() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();

        List<Product> list = productService.list();

        //插入数据，index不存在则自动根据匹配到的template创建。index没必要每天创建一个，如果是为了灵活管理，最低建议每月一个 yyyyMM。
        IndexRequest request = new IndexRequest("test_index");
        //最好不要自定义id 会影响插入速度。
        Product product = list.get(0);
        Gson gson = new Gson();
        request.id(product.getId().toString());
        request.source(gson.toJson(product)
                , XContentType.JSON);
        IndexResponse response = client.index(request, RequestOptions.DEFAULT);
        System.out.println(response);
        client.close();
    }

    @SneakyThrows
    public void batchInsertData() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        //批量插入数据，更新和删除同理
        BulkRequest request = new BulkRequest("test_index");
        Gson gson = new Gson();
        Product product = new Product();
        product.setPrice(3999.00);
        product.setDescription("xioami");
        for (int i = 0; i < 10; i++) {
            product.setProductName("name" + i);
            request.add(new IndexRequest().id(Integer.toString(i)).source(gson.toJson(product)
                    , XContentType.JSON));
        }
        BulkResponse response = client.bulk(request, RequestOptions.DEFAULT);
        System.out.println("数量:" + response.getItems().length);
        client.close();
    }

    @SneakyThrows
    public void getById() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        //注意 这里查询使用的是别名。
        GetRequest request = new GetRequest("test_index", "PPWhwnIBRwX67j4bTmV1");
        String[] includes = {"name", "price"};
        String[] excludes = {"desc"};
        FetchSourceContext fetchSourceContext = new FetchSourceContext(true, includes, excludes);
        //只查询特定字段。如果需要查询所有字段则不设置该项。
        request.fetchSourceContext(fetchSourceContext);
        GetResponse response = client.get(request, RequestOptions.DEFAULT);
        System.out.println(response);
        client.close();

    }

    @SneakyThrows
    public void delById() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        DeleteRequest request = new DeleteRequest("test_index", "1");
        DeleteResponse response = client.delete(request, RequestOptions.DEFAULT);
        System.out.println(response);
        client.close();
    }

    @SneakyThrows
    public void multiGetById() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        //多个根据id查询
        MultiGetRequest request = new MultiGetRequest();
        // 第一种：id传入方式
        request.add("test_index", "1");
        // 第二种：id传入方式
        request.add(new MultiGetRequest.Item(
                "test_index",
                "2"));
        MultiGetResponse response = client.mget(request, RequestOptions.DEFAULT);
        for (MultiGetItemResponse itemResponse : response) {
            System.out.println(itemResponse.getResponse().getSourceAsString());
        }
        client.close();
    }

    @SneakyThrows
    public void updateByQuery()  {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        UpdateByQueryRequest request = new UpdateByQueryRequest("test_index");
        //默认情况下，版本冲突会中止 UpdateByQueryRequest 进程，但是你可以用以下命令来代替
        //设置版本冲突继续
//        request.setConflicts("proceed");
        //设置更新条件
        request.setQuery(QueryBuilders.matchQuery("name", "name1 name3"));
//        //限制更新条数
//        request.setMaxDocs(10);
        request.setScript(
                new Script(ScriptType.INLINE, "painless", "ctx._source.desc+='#';", Collections.emptyMap()));
        BulkByScrollResponse response = client.updateByQuery(request, RequestOptions.DEFAULT);
        System.out.println(response);
        client.close();
    }


}
