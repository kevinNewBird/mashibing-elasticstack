package com.mashibing.elk.esclient.java_api;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.IOException;

/**
 * description  JavaApiServiceTests <BR>
 * <p>
 * author: zhao.song
 * date: created in 13:35  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class JavaApiServiceTests {
    @Autowired
    private JavaApiService apiService;

    /**
     * description   从数据库加载初始数据到es  <BR>
     *
      * @param :
     * @return
     * @author zhao.song  2022/3/3  13:37
     */
    @Test
    public void testLoadRSDBDataToES() throws IOException {
        apiService.loadRSDBDataToES();
    }

    @Test
    public void testGet() {
        apiService.get();
    }

    @Test
    public void testGetAll() {
        apiService.getAll();
    }

    @Test
    public void testUpdate() {
        apiService.update();
    }

    @Test
    public void testDelete() {
        apiService.delete();
    }

    @Test
    public void testMultiSearch() {
        apiService.multiSearch();
    }

    @Test
    public void testAggSearch() {
        apiService.aggSearch();
    }

}
