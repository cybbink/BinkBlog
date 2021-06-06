package com.bink.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author chenyaobin
 * @date 2021/6/5-10:04
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BlogContent {
    private long id;
    private long bid;
    private String type;
    private String file_id;
    private String content;

}
