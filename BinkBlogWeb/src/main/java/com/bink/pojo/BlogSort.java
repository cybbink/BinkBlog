package com.bink.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author chenyaobin
 * @date 2021/6/5-9:58
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
public class BlogSort {
    private long id;
    private long bid;
    private String sort;
}
