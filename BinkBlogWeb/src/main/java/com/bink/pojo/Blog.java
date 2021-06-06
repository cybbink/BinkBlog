package com.bink.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;
import java.util.List;

/**
 * @author chenyaobin
 * @date 2021/4/9-19:41
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Blog {
    private long bid;
    private String title;
    private String author;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
    private Date pubDate;
    private String status;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
    private Date createTime;
    private String createUserId;

    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",locale = "zh",timezone = "GMT+8")
    private Date updateTime;
    private String updateUserId;
    private String deleteFlag;
    //分类
    private List<String> topic;
    private List<String> keyWord;
    private List<String> sort;
    //内容
    private String type;
    private String file_id;
    private String content;
}
