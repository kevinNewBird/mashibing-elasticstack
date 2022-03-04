package com.mashibing.elk.esclient.base.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.mashibing.elk.esclient.base.entity.Product;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

/**
 * description  ProductMapper <BR>
 * <p>
 * author: zhao.song
 * date: created in 10:37  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Mapper
@Repository
public interface ProductMapper extends BaseMapper<Product> {

}
