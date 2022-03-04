package com.mashibing.elk.esclient.base.dto;

import lombok.Data;

/**
 * description  ResultDto <BR>
 * <p>
 * author: zhao.song
 * date: created in 10:36  2022/3/3
 * company: TRS信息技术有限公司
 * version 1.0
 */
@Data
public class ResultDto<T> {

    private boolean success;

    private int httpCode;

    private String message;

    private String Tag;

    private T data;
}
