package com.mashibing.elk.esclient.base.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsAutoIncrement;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsKey;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlCharsetConstant;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlEngineConstant;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
import lombok.Data;
import lombok.extern.apachecommons.CommonsLog;

/**
 * description  CarType <BR>
 * <p>
 * author: zhao.song
 * date: created in 22:59  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Data
@Table(name = "car_serial_type", engine = MySqlEngineConstant.InnoDB, charset = MySqlCharsetConstant.UTF8, comment = "汽车类型表")
@TableName("car_serial_type") // 一定要写，不然会直接以类作为表名
public class CarType {


    @IsKey
    @IsAutoIncrement
    private Integer id;

    @Column(name = "uniacid")
    private Integer uniacid;

    @Column(name = "brand_id")
    private Integer brandId;

    @Column(name = "brand_name")
    private String brandName;

    @Column(name = "pic_url",type = MySqlTypeConstant.LONGTEXT)
    private String picUrl;

    @Column(name = "status",type = MySqlTypeConstant.TINYINT,defaultValue = "1")
    private byte status;

    @Column(name = "sort",defaultValue = "0")
    private Integer sort;

    @Column(name = "create_time")
    private Integer createTime;



}
