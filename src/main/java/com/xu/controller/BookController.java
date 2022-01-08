package com.xu.controller;

import com.xu.pojo.Books;
import com.xu.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * 　　　　　　　 ┏┓       ┏┓+ +
 * 　　　　　　　┏┛┻━━━━━━━┛┻┓ + +
 * 　　　　　　　┃　　　　　　 ┃
 * 　　　　　　　┃　　　━　　　┃ ++ + + +
 * 　　　　　　 █████━█████  ┃+
 * 　　　　　　　┃　　　　　　 ┃ +
 * 　　　　　　　┃　　　┻　　　┃
 * 　　　　　　　┃　　　　　　 ┃ + +
 * 　　　　　　　┗━━┓　　　 ┏━┛
 * ┃　　  ┃                          神兽保佑,代码无bug
 * 　　　　　　　　　┃　　  ┃ + + + +               神兽保佑,代码无bug
 * 　　　　　　　　　┃　　　┃　                   神兽保佑,代码无bug
 * 　　　　　　　　　┃　　　┃ + 　　　　         神兽保佑,代码无bug
 * 　　　　　　　　　┃　　　┃
 * 　　　　　　　　　┃　　　┃　　+
 * 　　　　　　　　　┃　 　 ┗━━━┓ + +
 * 　　　　　　　　　┃ 　　　　　┣┓
 * 　　　　　　　　　┃ 　　　　　┏┛
 * 　　　　　　　　　┗┓┓┏━━━┳┓┏┛ + + + +
 * 　　　　　　　　　 ┃┫┫　 ┃┫┫
 * 　　　　　　　　　 ┗┻┛　 ┗┻┛+ + + +
 */
@Controller
/*
@RequestMapping("book")加到类上面
表示类中的所有响应请求的方法都是以该地址作为父路径。
*/
@RequestMapping("book")
public class BookController {
    //controller 调service层
    @Autowired
    @Qualifier("BookServiceImpl")
    private BookService bookService;

    //    首页
    @RequestMapping("/")
    public String index(HttpServletRequest request) {
        if (request.getSession().getAttribute("user") != null) {
            return "/WEB-INF/my.jsp";
        } else {
            return "login";
        }
    }

    //查询全部的书籍、并且返回到书籍展示页面
    @RequestMapping("/allBook")
    public String list(Model model, HttpServletRequest request) {
        if (request.getSession().getAttribute("user") != null) {
            List<Books> list = bookService.queryAllBook();
            model.addAttribute("list", list);
            return "allBook";
        } else {
            return "login";
        }
    }

    //跳转到添加书籍的页面
    @RequestMapping("/addBook")
    public String addBook() {
        return "addBook";
    }

    //添加书籍的请求 ////////////////////
    @RequestMapping("/toAddBook")
    public String toAddBook(Books books) {
        System.out.println("addBook=>" + books);
        bookService.addBook(books);
        return "redirect:/book/allBook";//重定向
    }

    @RequestMapping("/updateBook")
    public String updateBook(Integer id, Model model) {
        Books books = bookService.queryBookById(id);
        model.addAttribute("Books", books);
        return "updateBook";
    }

    @RequestMapping("/toUpdateBook")
    public String toUpdateBook(Books books) {
        System.out.println("toUpdateBook=>" + books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";//重定向
    }

    @RequestMapping("toDeleteBook")
    public String toDeleteBook(Integer id) {
        System.out.println(id);
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";//重定向
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName, Model model) {
        System.out.println(queryBookName);
        Books books = bookService.queryBookByName(queryBookName);
        List<Books> list = new ArrayList<>();
        list.add(books);
        model.addAttribute("list", list);
        return "allBook";
    }

    //关于
    @RequestMapping("/about")
    public String about() {
         return "about";
    }

    //服务
    @RequestMapping("/severs")
    public String severs(HttpServletRequest request) {
        if (request.getSession().getAttribute("user") != null) {
            return "/severs";
        } else {
            return "redirect:/book/allBook";//重定向
        }
    }
}
