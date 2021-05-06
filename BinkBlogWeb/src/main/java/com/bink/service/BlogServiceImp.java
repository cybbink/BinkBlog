package com.bink.service;

import com.bink.dao.BlogMapper;
import com.bink.pojo.Blog;

import java.util.List;

/**
 * @author chenyaobin
 * @date 2021/4/9-19:51
 */
public class BlogServiceImp implements BlogService {
    private BlogMapper blogMapper;
    public void setBlogMapper(BlogMapper blogMapper){
        this.blogMapper=blogMapper;
    }
    public List<Blog> queryAllBlog() {
        return blogMapper.queryAllBlog();
    }

}
