package com.mashibing.elk.esclient.rest_api;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * description  RestClientServiceTests <BR>
 * <p>
 * author: zhao.song
 * date: created in 13:02  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class RestClientCRUDServiceTests {

    @Autowired
    private RestClientCRUDService crudService;

    @Test
    public void testCreateIndexTemplate() {
        crudService.createIndexTemplate();
    }

    @Test
    public void testCreateIndex() {
        crudService.createIndex();
    }

    @Test
    public void testGetIndex() {
        crudService.getIndex();
    }

    @Test
    public void testDelIndex() {
        crudService.delIndex("test_index");
    }

    @Test
    public void testInsertData() {
        crudService.insertData();
    }

    @Test
    public void testBatchInsertData() {
        // _bulk：批量插入数据
        crudService.batchInsertData();
    }

    @Test
    public void testGetById() {
        crudService.getById();
    }

    @Test
    public void testDelById() {
        crudService.delById();
    }

    @Test
    public void testMultiGetById() {
        crudService.multiGetById();
    }

    @Test
    public void testUpdateByQuery() {
        crudService.updateByQuery();
    }



    @Test
    public void testBulkInit() {
        crudService.bulkInit();
    }
}
