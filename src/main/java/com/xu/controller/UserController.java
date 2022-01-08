package com.xu.controller;

import com.google.code.kaptcha.Constants;
import com.xu.pojo.User;
import com.xu.service.BookService;
import com.xu.service.UserService;
import org.junit.runner.Runner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("book")
public class UserController {
    //controller 调service层
    @Qualifier("UserServiceImpl")
    @Autowired
    private UserService userService;


    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/addUser")
    public String addUser(User user,String rpwd) {
        if (user.getUsername()!=null&&user.getPassword()!=null&&rpwd!=null){
//            if ()
            System.out.println(user+rpwd);
            userService.addUser(user);

        }

        return "forward:/";
    }

    @RequestMapping("/toLogin")
    public String toLogin(User user, Model model, String code, HttpServletRequest request) {

        String captchaCode = (String) request.getSession().getAttribute(Constants.KAPTCHA_SESSION_KEY);
        System.out.println("生成验证码："+captchaCode);
        System.out.println("输入验证码"+code);
        if (code.equals(captchaCode)) {
            User userValue = userService.queryUserByNameAndPassword(user);
            System.out.println("是否成功："+userValue);
            if (userValue == null) {
                model.addAttribute("message", "用户名或密码错误");
                return "login";
            }else {
                request.getSession().setAttribute("user", userValue);
                request.setAttribute("successlogin", "ok");
                return "forward:/";
            }
        }else {
            model.addAttribute("message", "验证码错误");
            return "login";
        }
    }

    @RequestMapping("/cancel")
    public String cancel(HttpServletRequest request){
        request.getSession().removeAttribute("user");
        return "redirect:/";
    }
}
