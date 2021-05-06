package com.bink.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

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
    private Date pubDate;
    private Date createTime;
    private String createUserId;
    private Date updateTime;
    private String updateUserId;
    private String deleteFlag;
}
