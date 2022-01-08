package com.xu.service;

import com.xu.pojo.Books;
import com.xu.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookService {
    //增加一本书
    int addBook(Books books);

    //删除一本书
    int deleteBookById(Integer id);

    //修改一本书
    int updateBook(Books books);

    //根据id查询一本书
    Books queryBookById(Integer id);

    //查询所有的书
    List<Books> queryAllBook();

    Books queryBookByName(String name);
}
