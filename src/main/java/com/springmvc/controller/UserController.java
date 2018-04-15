package com.springmvc.controller;

import com.springmvc.pojo.Info;
import com.springmvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author: yan
 * @Date: 2018/4/15/0015 6:27
 * @Description:
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/")
    @ResponseBody
    public String index(){
        return "hello world";
    }

    /**
     * 默认首页控制器
     */
    @RequestMapping("/index")
    public String login(HttpServletRequest request, HttpServletResponse response){
        return "index";
    }

    //注册
    @RequestMapping(value = "/admin",method = RequestMethod.POST)
    @ResponseBody
    public int insertUser(Info info){
        return userService.insertInfo(info);
    }

    //登录
    @RequestMapping(value = "/admin/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Info getUser(@PathVariable Integer id){
        return userService.getInfo(id);

    }
}
