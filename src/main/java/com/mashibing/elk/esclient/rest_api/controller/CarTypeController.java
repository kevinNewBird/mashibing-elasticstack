package com.mashibing.elk.esclient.rest_api.controller;

import com.mashibing.elk.esclient.base.dto.ResultDto;
import com.mashibing.elk.esclient.rest_api.util.ESRestClientUtil;
import lombok.SneakyThrows;
import org.elasticsearch.action.admin.indices.create.CreateIndexRequest;
import org.elasticsearch.action.admin.indices.create.CreateIndexResponse;
import org.elasticsearch.action.bulk.BulkRequest;
import org.elasticsearch.action.bulk.BulkResponse;
import org.elasticsearch.action.delete.DeleteRequest;
import org.elasticsearch.action.index.IndexRequest;
import org.elasticsearch.action.search.*;
import org.elasticsearch.action.update.UpdateRequest;
import org.elasticsearch.client.Request;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.Response;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.settings.Settings;
import org.elasticsearch.common.unit.Fuzziness;
import org.elasticsearch.common.unit.TimeValue;
import org.elasticsearch.common.xcontent.XContentType;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.script.ScriptType;
import org.elasticsearch.script.mustache.SearchTemplateRequest;
import org.elasticsearch.script.mustache.SearchTemplateResponse;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import static org.elasticsearch.index.query.QueryBuilders.matchPhraseQuery;
import static org.elasticsearch.index.query.QueryBuilders.matchQuery;

/**
 * description  CarTypeController <BR>
 * <p>
 * author: zhao.song
 * date: created in 13:56  2022/3/5
 * company: TRS信息技术有限公司
 * version 1.0
 */
@RestController
@RequestMapping("/v1/car")
public class CarTypeController {


    @RequestMapping("/createIndex")
    public ResultDto createIndex(String indexName) {
        try {
            if (StringUtils.isEmpty(indexName)) {
                return ResultDto.builder().success(false).httpCode(200).message("创建失败！索引名为空！").build();
            }
            RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
            CreateIndexRequest createIndexRequest = new CreateIndexRequest(indexName);
            createIndexRequest.settings(Settings.builder()
                    .put("index.number_of_shards", 3)
                    .put("index.number_of_replicas", 2)
                    .build());
            createIndexRequest.mapping("mappings", "{\n" +
                    "    \"properties\": {\n" +
                    "      \"name\": {\n" +
                    "        \"type\": \"text\",\n" +
                    "        \"fields\": {\n" +
                    "          \"keyword\": {\n" +
                    "            \"type\": \"keyword\",\n" +
                    "            \"ignore_above\": 256\n" +
                    "          }\n" +
                    "        },\n" +
                    "        \"analyzer\": \"ik_max_word\"\n" +
                    "      },\n" +
                    "      \"desc\": {\n" +
                    "      \"type\": \"text\",\n" +
                    "      \"fields\": {\n" +
                    "        \"keyword\": {\n" +
                    "          \"type\": \"keyword\",\n" +
                    "          \"ignore_above\": 256\n" +
                    "        }\n" +
                    "      },\n" +
                    "      \"analyzer\": \"ik_max_word\"\n" +
                    "    }\n" +
                    "    }\n" +
                    "  }", XContentType.JSON);
            CreateIndexResponse createIndexResponse = client.indices().create(createIndexRequest, RequestOptions.DEFAULT);

            if (createIndexResponse.isAcknowledged()) {
                return ResultDto.builder().success(true).httpCode(200).message("创建索引成功！索引为：" + createIndexResponse.index()).build();
            } else {
                return ResultDto.builder().success(false).httpCode(200).message("创建索引失败！").build();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }finally {
            ESRestClientUtil.getInstance().closeClient();
        }
        return ResultDto.builder().success(false).httpCode(200).message("创建索引失败！").build();
    }


    //region 分页查询
    @RequestMapping("/carInfo")
    @SneakyThrows
    public ResultDto carInfo(@RequestParam(value = "keyword", required = true) String keyword,
                             @RequestParam(value = "from", required = true) Integer from,
                             @RequestParam(value = "size", required = true) Integer size) {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();

        SearchRequest searchRequest = new SearchRequest("msb_auto");
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchQuery("series_name", keyword));
        searchSourceBuilder.from(from);
        searchSourceBuilder.size(size);
        searchRequest.source(searchSourceBuilder);
        SearchResponse searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
//        ESClient.getInstance().closeClient();
        ResultDto res = new ResultDto();
        res.setData(searchResponse.getHits().getHits());
        return res;
    }
    //endregion

    //region 滚动查询
    @RequestMapping("/scroll")
    @SneakyThrows
    public ResultDto scroll(String scrollId) {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        SearchRequest searchRequest = new SearchRequest("msb_auto");
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.size(2);
        searchRequest.source(searchSourceBuilder);

        searchRequest.scroll(TimeValue.timeValueMinutes(1L));
//        SearchResponse searchResponse = null;
//        if (scrollId == null || "".equals(scrollId)) {
//            searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
//        } else {
//            searchResponse = client.scroll(new SearchScrollRequest(scrollId), RequestOptions.DEFAULT);
//        }
        SearchResponse searchResponse = scrollId == null
                ? client.search(searchRequest, RequestOptions.DEFAULT)
                : client.scroll(new SearchScrollRequest(scrollId), RequestOptions.DEFAULT);
        scrollId = searchResponse.getScrollId();
        SearchHits hits = searchResponse.getHits();
//        ESClient.getInstance().closeClient();
        ResultDto res = new ResultDto();
        res.setTag(scrollId);
        res.setData(hits.getHits());
        return res;
    }
    //endregion

    //region fuzzy
    @RequestMapping("/fuzzy")
    @SneakyThrows
    public SearchHit[] fuzzy(String name) {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        SearchRequest searchRequest = new SearchRequest("msb_auto");
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.fuzzyQuery("brand_name.keyword", name).fuzziness(Fuzziness.AUTO));
        searchRequest.source(searchSourceBuilder);
        SearchResponse response = client.search(searchRequest, RequestOptions.DEFAULT);
        return response.getHits().getHits();
    }
    //endregion

    //region Bulk
    @RequestMapping("/bulk")
    @SneakyThrows
    public ResultDto bulk() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        SearchRequest searchRequest = new SearchRequest("msb_auto");
        BulkRequest request = new BulkRequest();
        request.add(new DeleteRequest("msb_auto", "13"));
        request.add(new UpdateRequest("msb_auto", "22")
                .doc(XContentType.JSON, "series_name", "天籁之音"));
        request.add(new IndexRequest("msb_auto").id("4")
                .source(XContentType.JSON, "brand_name", "天津一汽"));
        BulkResponse bulkResponse = client.bulk(request, RequestOptions.DEFAULT);
        return null;
    }
    //endregion

    //region Search template
    @RequestMapping("/templateSearch")
    @SneakyThrows
    public ResultDto templateSearch() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        //region 创建模板并缓存 作用域为整个集群
        Request scriptRequest = new Request("POST", "_scripts/test_template_search");
        scriptRequest.setJsonEntity(
                "{" +
                        "  \"script\": {" +
                        "    \"lang\": \"mustache\"," +
                        "    \"source\": {" +
                        "      \"query\": { \"match\" : { \"{{field}}\" : \"{{value}}\" } }," +
                        "      \"size\" : \"{{size}}\"" +
                        "    }" +
                        "  }" +
                        "}");
        Response scriptResponse = client.getLowLevelClient().performRequest(scriptRequest);
        //endregion
        //***********************************     华丽的分割线     *******************************************************
        SearchTemplateRequest request = new SearchTemplateRequest();
        request.setRequest(new SearchRequest("msb_auto"));
        request.setScriptType(ScriptType.STORED);
        request.setScript("test_template_search");
        //region 本地模板
        //        request.setScriptType(ScriptType.INLINE);
//        request.setScript(
//                        "{\n" +
//                        "  \"from\": {{from}},\n" +
//                        "  \"size\": {{size}},\n" +
//                        "  \"query\": {\n" +
//                        "    \"match\": {\n" +
//                        "      \"master_brand_name\": \"{{master_brand_name}}\"\n" +
//                        "    }\n" +
//                        "  }\n" +
//                        "}");
        //endregion
        Map<String, Object> scriptParams = new HashMap<>();
        scriptParams.put("field", "master_brand_name");
        scriptParams.put("value", "一汽");
        scriptParams.put("size", 5);
        request.setScriptParams(scriptParams);
        SearchTemplateResponse response = client.searchTemplate(request, RequestOptions.DEFAULT);
        return null;
    }
    //endregion

    //region Multi-Search
    @RequestMapping("/multiSearch")
    @SneakyThrows
    public ResultDto multiSearch() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        MultiSearchRequest request = new MultiSearchRequest();

        SearchRequest firstSearchRequest = new SearchRequest("msb_auto");
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchQuery("series_name", "朗动"));
        firstSearchRequest.source(searchSourceBuilder);
        request.add(firstSearchRequest);

        SearchRequest secondSearchRequest = new SearchRequest("msb_auto");
        searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query(QueryBuilders.matchQuery("series_name", "揽胜运动"));
        secondSearchRequest.source(searchSourceBuilder);
        request.add(secondSearchRequest);

        MultiSearchResponse response = client.msearch(request, RequestOptions.DEFAULT);
        return null;
    }
    //endregion

    //region Bool Request
    @RequestMapping("/boolSearch")
    @SneakyThrows
    public ResultDto boolSearch() {
        RestHighLevelClient client = ESRestClientUtil.getInstance().getHighLevelClient();
        MultiSearchRequest request = new MultiSearchRequest();

        SearchRequest searchRequest = new SearchRequest("msb_auto");
        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        searchSourceBuilder.query
                (
                        QueryBuilders.boolQuery()
                                .must(matchPhraseQuery("sale_name", "2018款"))
                                .filter(matchQuery("master_brand_name", "大众").analyzer("ik_max_word"))
                                .mustNot(matchQuery("series_name", "速腾"))
                );
        searchRequest.source(searchSourceBuilder);
        request.add(searchRequest);
        MultiSearchResponse response = client.msearch(request, RequestOptions.DEFAULT);
        return null;
    }
    //endregion
}
