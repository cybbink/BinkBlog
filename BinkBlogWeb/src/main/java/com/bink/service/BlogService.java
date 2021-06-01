package com.bink.service;

import com.bink.pojo.Blog;

import java.util.List;

/**
 * @author chenyaobin
 * @date 2021/4/9-20:01
 */
public interface BlogService {
    //查询全部blog,返回list集合
    List<Blog> queryAllBlog();

    //查询首页文章列表

    List<Blog> queryIndexBlog();
}
