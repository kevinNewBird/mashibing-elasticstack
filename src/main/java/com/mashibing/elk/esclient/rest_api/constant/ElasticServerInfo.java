package com.mashibing.elk.esclient.rest_api.constant;

import lombok.Builder;
import lombok.Data;

/**
 * description  ServerInfoEnum <BR>
 * <p>
 * author: zhao.song
 * date: created in 14:02  2022/3/4
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Data
@Builder
public class ElasticServerInfo {

    private String serverIp;

    private String protocol;

    private int port;
}
