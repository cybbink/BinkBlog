package com.bink.controller;

import com.bink.pojo.Blog;
import com.bink.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping("/index")
    public String index(Model model){
         return "index";
    }

    @RequestMapping("/about")
    public String about(Model model){
        return "about";
    }

    @RequestMapping("/blog")
    public String blog(Model model){
        return "blog";
    }
    @RequestMapping("/contact")
    public String contact(Model model){
        return "contact";
    }
    @RequestMapping("/content")
    public String content(Model model){
        return "content";
    }
    @RequestMapping("/help")
    public String help(Model model){
        return "help";
    }
    @RequestMapping("/links")
    public String links(Model model){
        return "links";
    }
    @RequestMapping("/works")
    public String works(Model model){
        return "works";
    }
}
