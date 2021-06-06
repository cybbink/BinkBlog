package com.bink.dao;

import com.bink.pojo.Blog;
import com.bink.pojo.BlogSort;
import com.bink.service.BlogService;

import java.util.List;

/**
 * @author chenyaobin
 * @date 2021/6/5-10:13
 */
public interface BlogSortMapper {
    /**根据博客id查询分类信息*/
    BlogSort getSortByBid(long bid);
}
