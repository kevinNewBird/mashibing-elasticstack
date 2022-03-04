package com.mashibing;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * description  DataSourceTests <BR>
 * <p>
 * author: zhao.song
 * date: created in 9:51  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class DataSourceTests {

    @Autowired
    private DataSource dataSource;

    @Test
    public void testDataSource() throws SQLException {
        System.out.println(dataSource);
        System.out.println(dataSource.getConnection().getMetaData());
    }
}
