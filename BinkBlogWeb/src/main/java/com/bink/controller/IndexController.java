package com.bink.controller;

import com.bink.pojo.Blog;
import com.bink.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * @author chenyaobin
 * @date 2021/4/9-20:12
 */
@Controller
@RequestMapping("/blog")
public class IndexController {
    @Autowired
    @Qualifier("BlogServiceImp")
    private  BlogService blogService;
    @RequestMapping("index")
    public String index(Model model){
        List<Blog> blogList = blogService.queryAllBlog();
        System.out.println(blogList);
        model.addAttribute("blogList",blogList);
        return "index";
    }
}
