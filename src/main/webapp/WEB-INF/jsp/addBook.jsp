<%--
  Created by IntelliJ IDEA.
  User: tmxu
  Date: 2021/11/1
  Time: 19:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加书籍</title>
    <%--BootStrap美化界面--%>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12">
            <div class="page-header">
                <h1>
                    <small>新增书籍</small>
                </h1>
            </div>
        </div>
    </div>
    <%--记住！！！！ 传参的是name不是id ！！！！！！！！！！！--%>
    <form action="${pageContext.request.contextPath}/book/toAddBook" method="post">
        <div class= "form-group">
            <label>书籍名称 </label>
            <input type="text" class="form-control" name="bookName" placeholder="书籍名称" required style="width: 650px">
        </div>
        <div class="form-group">
            <label>书籍数量</label>
            <input type="text" class="form-control" name="bookCounts" placeholder="书籍数量" required style="width: 650px">
        </div>
        <div class="form-group">
            <label>书籍详情</label>
            <input type="text" class="form-control" name="detail" placeholder="书籍详情" required style="width: 650px">
        </div>
        <button type="submit" class="btn btn-primary">添加</button>
    </form>
</div>
</body>
</html>
