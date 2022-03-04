package com.mashibing.elk.esclient.base.entity;


import com.baomidou.mybatisplus.annotation.TableField;
import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsAutoIncrement;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsKey;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlCharsetConstant;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlEngineConstant;
import lombok.Data;

import java.sql.Timestamp;

/**
 * description  Product <BR>
 * <p>
 * author: zhao.song
 * date: created in 9:33  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Data
@Table(name = "product",engine = MySqlEngineConstant.InnoDB,charset = MySqlCharsetConstant.UTF8,comment = "产品表")
public class Product {

    @IsKey
    @IsAutoIncrement
    private Integer id;

    @Column(name = "product_name",comment = "产品名")
    private String productName;

    @Column(name = "description",comment="描述")
    private String description;

    @Column(name = "price",comment="价格")
    private double price;

    @Column(name = "tags",comment = "标签")
    private String tags;

    @TableField("create_time")
    private Timestamp createTime;
}
