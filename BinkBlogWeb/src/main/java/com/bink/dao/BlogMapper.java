package com.bink.dao;

import com.bink.pojo.Blog;

import java.util.List;

/**
 * @author chenyaobin
 * @date 2021/4/9-19:47
 */
public interface BlogMapper {
    //查询全部blog,返回list集合
    List<Blog> queryAllBlog();
}
