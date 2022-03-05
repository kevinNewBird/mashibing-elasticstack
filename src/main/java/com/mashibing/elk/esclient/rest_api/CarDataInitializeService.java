package com.mashibing.elk.esclient.rest_api;

import com.google.gson.Gson;
import com.mashibing.elk.esclient.base.entity.CarSerialBrand;
import com.mashibing.elk.esclient.base.entity.CarType;
import com.mashibing.elk.esclient.base.service.CarSerialBrandService;
import com.mashibing.elk.esclient.base.service.CarTypeService;
import com.mashibing.elk.esclient.rest_api.util.ESRestClientUtil;
import lombok.extern.slf4j.Slf4j;
import org.elasticsearch.action.admin.indices.create.CreateIndexRequest;
import org.elasticsearch.action.admin.indices.create.CreateIndexResponse;
import org.elasticsearch.action.admin.indices.delete.DeleteIndexRequest;
import org.elasticsearch.action.bulk.BulkRequest;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.support.master.AcknowledgedResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.client.indices.GetIndexRequest;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.xcontent.XContentType;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.io.IOException;
import java.util.List;

/**
 * description  汽车数据初始化服务类 <BR>
 * <p>
 * author: zhao.song
 * date: created in 23:02  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Service
@Slf4j
public class CarDataInitializeService {


    @Autowired
    private CarSerialBrandService carInfoService;

    @Autowired
    private CarTypeService carTypeService;


    /**
     * description   初始化car_info数据  <BR>
     *
      * @param :
     * @return
     * @author zhao.song  2022/3/5  9:27
     */
    public void bulkInitWithCarBrand() {
        try {
            String indexName = "msb_car_info";
            // 1.索引是否存在
            RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
            GetIndexRequest request = new GetIndexRequest(indexName);
            boolean exists = client.indices().exists(request, RequestOptions.DEFAULT);
            // 2.存在，删除索引
            if (exists) {
                DeleteIndexRequest delRequest = new DeleteIndexRequest(indexName);
                AcknowledgedResponse delResponse = client.indices().delete(delRequest, RequestOptions.DEFAULT);
                log.info(delResponse.isAcknowledged() ? "删除索引[" + indexName + "]成功！" : "删除索引[" + indexName + "]失败！");
            }

            // 3.创建索引
            CreateIndexRequest createRequest = new CreateIndexRequest(indexName);
            createRequest.settings(Settings.builder()
                    .put("index.number_of_shards", 3)
                    .put("index.number_of_replicas", 2)
            );
            // mapping
            createRequest.mapping("mappings","{\n" +
                    "    \"properties\": {\n" +
                    "      \"brandName\": {\n" +
                    "        \"type\": \"text\",\n" +
                    "        \"analyzer\": \"ik_max_word\",\n" +
                    "        \"fields\": {\n" +
                    "          \"keyword\": {\n" +
                    "            \"type\": \"keyword\",\n" +
                    "            \"ignore_above\": 256\n" +
                    "          }\n" +
                    "        }\n" +
                    "      },\n" +
                    "      \"createTime\": {\n" +
                    "        \"type\": \"long\"\n" +
                    "      },\n" +
                    "      \"id\": {\n" +
                    "        \"type\": \"long\"\n" +
                    "      },\n" +
                    "      \"initials\": {\n" +
                    "        \"type\": \"text\",\n" +
                    "        \"fields\": {\n" +
                    "          \"keyword\": {\n" +
                    "            \"type\": \"keyword\",\n" +
                    "            \"ignore_above\": 256\n" +
                    "          }\n" +
                    "        }\n" +
                    "      },\n" +
                    "      \"isHot\": {\n" +
                    "        \"type\": \"long\"\n" +
                    "      },\n" +
                    "      \"parentId\": {\n" +
                    "        \"type\": \"long\"\n" +
                    "      },\n" +
                    "      \"picUrl\": {\n" +
                    "        \"type\": \"text\",\n" +
                    "        \"fields\": {\n" +
                    "          \"keyword\": {\n" +
                    "            \"type\": \"keyword\",\n" +
                    "            \"ignore_above\": 256\n" +
                    "          }\n" +
                    "        }\n" +
                    "      },\n" +
                    "      \"sort\": {\n" +
                    "        \"type\": \"long\"\n" +
                    "      },\n" +
                    "      \"status\": {\n" +
                    "        \"type\": \"long\"\n" +
                    "      },\n" +
                    "      \"uniacid\": {\n" +
                    "        \"type\": \"long\"\n" +
                    "      }\n" +
                    "    }\n" +
                    "  }", XContentType.JSON);
            CreateIndexResponse createIndexResponse=client.indices().create(createRequest, RequestOptions.DEFAULT);

            List<CarSerialBrand> list = carInfoService.list();
            // 5.批量插入数据，更新和删除同理
            BulkRequest bulkRequest = new BulkRequest(indexName);
            Gson gson = new Gson();
            for (int i = 0; i < list.size(); i++) {
                bulkRequest.add(new IndexRequest().id(Integer.toString(i)).source(gson.toJson(list.get(i)), XContentType.JSON));
            }
            BulkResponse response = client.bulk(bulkRequest, RequestOptions.DEFAULT);
            System.out.println("数量:" + response.getItems().length);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            ESRestClientUtil.getInstance().closeClient();
        }
    }

    /**
     * description   初始化car_type数据  <BR>
     *
      * @param :
     * @return
     * @author zhao.song  2022/3/5  9:28
     */
    public void bulkInitWithCarType() {
        try {
            String indexName = "msb_car_type";

            RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
            boolean exists = client.indices().exists(new GetIndexRequest(indexName), RequestOptions.DEFAULT);
            if (exists) {
                DeleteIndexRequest delRequest = new DeleteIndexRequest(indexName);
                AcknowledgedResponse delResponse = client.indices().delete(delRequest, RequestOptions.DEFAULT);
                log.info(delResponse.isAcknowledged() ? "删除索引[" + indexName + "]成功！" : "删除索引[" + indexName + "]失败！");
            }

            CreateIndexRequest createIndexRequest = new CreateIndexRequest(indexName);
            createIndexRequest.settings(Settings.builder()
                    .put("index.number_of_shards",3)
                    .put("index.number_of_replicas",2)
                    .build());

            createIndexRequest.mapping("mappings", "{\n" +
                    "      \"properties\" : {\n" +
                    "        \"brandId\" : {\n" +
                    "          \"type\" : \"long\"\n" +
                    "        },\n" +
                    "        \"brandName\" : {\n" +
                    "          \"type\" : \"text\",\n" +
                    "          \"analyzer\":\"ik_max_word\",\n" +
                    "          \"fields\" : {\n" +
                    "            \"keyword\" : {\n" +
                    "              \"type\" : \"keyword\",\n" +
                    "              \"ignore_above\" : 256\n" +
                    "            }\n" +
                    "          }\n" +
                    "        },\n" +
                    "        \"createTime\" : {\n" +
                    "          \"type\" : \"long\"\n" +
                    "        },\n" +
                    "        \"id\" : {\n" +
                    "          \"type\" : \"long\"\n" +
                    "        },\n" +
                    "        \"picUrl\" : {\n" +
                    "          \"type\" : \"text\",\n" +
                    "          \"fields\" : {\n" +
                    "            \"keyword\" : {\n" +
                    "              \"type\" : \"keyword\",\n" +
                    "              \"ignore_above\" : 256\n" +
                    "            }\n" +
                    "          }\n" +
                    "        },\n" +
                    "        \"sort\" : {\n" +
                    "          \"type\" : \"long\"\n" +
                    "        },\n" +
                    "        \"status\" : {\n" +
                    "          \"type\" : \"long\"\n" +
                    "        },\n" +
                    "        \"uniacid\" : {\n" +
                    "          \"type\" : \"long\"\n" +
                    "        }\n" +
                    "      }\n" +
                    "    }",XContentType.JSON);
            CreateIndexResponse createIndexResponse = client.indices().create(createIndexRequest, RequestOptions.DEFAULT);
            log.info(createIndexResponse.isAcknowledged() ? "创建索引[" + indexName + "]成功！" : "创建索引[" + indexName + "]失败！");

            List<CarType> list = carTypeService.list();
            BulkRequest bulkRequest = new BulkRequest(indexName);
            for (int i = 0; i < list.size(); i++) {
                bulkRequest.add(new IndexRequest()
                        .id(String.valueOf(i))
                        .source(new Gson().toJson(list.get(i)),XContentType.JSON));
            }

            BulkResponse bulkResponse = client.bulk(bulkRequest, RequestOptions.DEFAULT);
            System.out.println("数量:" + bulkResponse.getItems().length);

        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            ESRestClientUtil.getInstance().closeClient();
        }

    }


}
