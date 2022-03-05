package com.mashibing.elk.esclient.base.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mashibing.elk.esclient.base.entity.CarType;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * description  CarTypeMapper <BR>
 * <p>
 * author: zhao.song
 * date: created in 23:04  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Mapper
@Repository
public interface CarTypeMapper extends BaseMapper<CarType> {
}
