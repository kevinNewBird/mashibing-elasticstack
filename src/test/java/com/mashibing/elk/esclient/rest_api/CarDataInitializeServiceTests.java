package com.mashibing.elk.esclient.rest_api;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * description  CarDataInitializeServiceTests <BR>
 * <p>
 * author: zhao.song
 * date: created in 9:25  2022/3/5
 * company: TRS信息技术有限公司
 * version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CarDataInitializeServiceTests {

    @Autowired
    private CarDataInitializeService carDataService;

    @Test
    public void testBulkInitWithCarBrand() {
        carDataService.bulkInitWithCarBrand();
    }

    @Test
    public void testBulkInitWithCarType() {
        carDataService.bulkInitWithCarType();
    }
}
