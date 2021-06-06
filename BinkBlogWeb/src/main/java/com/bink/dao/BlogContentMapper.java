package com.bink.dao;

import com.bink.pojo.BlogContent;
import com.bink.pojo.BlogSort;

/**
 * @author chenyaobin
 * @date 2021/6/5-10:23
 */
public interface BlogContentMapper {
    /**根据博客id查询内容信息*/
    BlogContent getContentByBid(long bid);
}
