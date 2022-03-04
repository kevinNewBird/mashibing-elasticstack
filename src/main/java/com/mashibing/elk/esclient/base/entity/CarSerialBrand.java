package com.mashibing.elk.esclient.base.entity;

import com.gitee.sunchenbin.mybatis.actable.annotation.Column;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsAutoIncrement;
import com.gitee.sunchenbin.mybatis.actable.annotation.IsKey;
import com.gitee.sunchenbin.mybatis.actable.annotation.Table;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlCharsetConstant;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlEngineConstant;
import com.gitee.sunchenbin.mybatis.actable.constants.MySqlTypeConstant;
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
@Table(name = "car_serial_brand", engine = MySqlEngineConstant.InnoDB, charset = MySqlCharsetConstant.UTF8, comment = "汽车品牌表")
public class CarSerialBrand {
    @IsKey
    @IsAutoIncrement
    private Integer id;

    @Column(name = "uniacid")
    private Integer uniacid;
    
    @Column(name = "parent_id")
    private Integer parentId;
    
    @Column(name = "initials",comment = "首字母",length = 5)
    private String initials;
    
    @Column(name = "brand_name",comment = "品牌名")
    private String brandName;
    
    @Column(name = "pic_url",type = MySqlTypeConstant.LONGTEXT)
    private String picUrl;
    
    @Column(name = "status",type = MySqlTypeConstant.TINYINT,length = 1)
    private byte status;
    
    @Column(name = "sort",defaultValue = "1")
    private Integer sort;
    
    @Column(name = "is_hot",type = MySqlTypeConstant.TINYINT,length = 1)
    private byte isHot;

    @Column
    private Integer createTime;
    
}
