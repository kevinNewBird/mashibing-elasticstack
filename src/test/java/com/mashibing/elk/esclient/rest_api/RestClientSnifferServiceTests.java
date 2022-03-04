package com.mashibing.elk.esclient.rest_api;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * description  RestClientSnifferTests <BR>
 * <p>
 * author: zhao.song
 * date: created in 14:30  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class RestClientSnifferServiceTests {

    private RestClientSnifferService snifferService;

    @Test
    public void testSniffer() {
        snifferService.sniffer();
    }

    @Test
    public void testSnifferTest() {
        snifferService.snifferTest();
    }
}
