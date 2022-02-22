package com.mashibing.elk.controller;

import io.vavr.API;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;

import static io.vavr.API.$;
import static io.vavr.API.Case;

/**
 * description  HomeController <BR>
 * <p>
 * author: zhao.song
 * date: created in 17:04  2022/2/22
 * company: TRS信息技术有限公司
 * version 1.0
 */
@RestController
@RequestMapping("/resource")
public class HomeController {
    private static final String REMOTE_DIC = "E:\\elasticstack\\elasticsearch-7.10.0\\plugins\\ik\\config\\custom\\msb_extend.dic";
    private static final String REMOTE_STOPWORDS_DIC = "E:\\elasticstack\\elasticsearch-7.10.0\\plugins\\ik\\config\\custom\\msb_stopword.dic";

    @RequestMapping("/loadRemoteDic/{selectedDic}")
    public void loadRemoteDic(HttpServletResponse resp, @PathVariable int selectedDic) throws Exception {
        resp.setContentType("text/plain;charset=utf-8");
        String dicFilePath = API.Match(selectedDic).of(
                Case($(1), REMOTE_DIC),
                Case($(2), REMOTE_STOPWORDS_DIC),
                Case($(), REMOTE_DIC)
        );
        File dicFile = new File(dicFilePath);
        resp.setHeader("Last-Modified", String.valueOf(dicFile.lastModified()));
        resp.setHeader("ETag", String.valueOf(dicFile.lastModified()));
        try (FileInputStream fis = new FileInputStream(dicFile);
             OutputStream writer = resp.getOutputStream()) {
            byte[] buffer = new byte[1024];
            int offset = 0;
            while ((offset = fis.read(buffer)) != -1) {
                writer.write(buffer, 0, offset);
            }
        } catch (Exception e) {
            throw e;
        }

    }
}
