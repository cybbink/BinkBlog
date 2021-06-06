package com.bink.controller;

import com.bink.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author chenyaobin
 * @date 2021/6/1-20:15
 */
@Controller
@RequestMapping("/list")
public class ListController {
    @Autowired
    @Qualifier("BlogServiceImp")
    private BlogService blogService;

    @RequestMapping("/indexList")
    @ResponseBody
    public Map indexList(Model model){
        Map map = new HashMap();
        map.put("code","200");
        map.put("list",blogService.queryIndexBlog());
        return map;
    }
}
