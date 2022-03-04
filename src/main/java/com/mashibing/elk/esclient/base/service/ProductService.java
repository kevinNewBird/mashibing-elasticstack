package com.mashibing.elk.esclient.base.service;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mashibing.elk.esclient.base.entity.Product;
import com.mashibing.elk.esclient.base.mapper.ProductMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

/**
 * description  ProductService <BR>
 * <p>
 * author: zhao.song
 * date: created in 10:39  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Service
@Slf4j
public class ProductService extends ServiceImpl<ProductMapper, Product> {
}
