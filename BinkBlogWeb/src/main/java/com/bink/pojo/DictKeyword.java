package com.bink.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

/**
 * @author chenyaobin
 * @date 2021/6/5-10:11
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class DictKeyword {
    private long kid;
    private String keyword;
    private Date createTime;
    private String createUserId;
    private Date updateTime;
    private String updateUserId;
    private String deleteFlag;
}
