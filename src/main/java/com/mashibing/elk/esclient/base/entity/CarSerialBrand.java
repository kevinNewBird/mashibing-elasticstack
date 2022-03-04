package com.mashibing.elk.esclient.base.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsAutoIncrement;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsKey;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlCharsetConstant;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlEngineConstant;
import lombok.Data;

/**
 * description  CarSerialBrand <BR>
 * <p>
 * author: zhao.song
 * date: created in 10:07  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Data
@Table(name = "ims_autoparts_car_brand", engine = MySqlEngineConstant.InnoDB, charset = MySqlCharsetConstant.UTF8, comment = "汽车品牌表")
public class CarSerialBrand {
    @IsKey
    @IsAutoIncrement
    private Integer id;

    @Column(name = "master_brand_id")
    private Integer masterBrandId;
    
    @Column(name = "master_brand_name")
    private String masterBrandName;
    
    @Column(name = "brand_id")
    private Integer brandId;
    
    @Column(name = "brand_name")
    private String brandName;
    
    @Column(name = "series_id")
    private Integer seriesId;
    
    @Column(name = "series_name")
    private String seriesName;
    
    @Column(name = "model_id")
    private Integer modelId;
    
    @Column(name = "sale_name")
    private String saleName;
    
}
