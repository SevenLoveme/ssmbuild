<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tmxu
  Date: 2021/11/1
  Time: 18:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<base href="<%=basePath%>">
<meta charset="utf-8"/>
<head>
    <title>查询全部书籍</title>
    <%--BootStrap美化界面--%>
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>about</title>
    <link rel="stylesheet" href="static/CSS/allbook.css">
    <link rel="stylesheet" type="text/css" href="static/CSS/sweetalert.css">
    <link rel="stylesheet" href="https://formden.com/static/assets/demos/bootstrap-iso/bootstrap-iso/bootstrap-iso.css" />
</head>

<!-- 导航栏 -->

<body>
<div id="NavB">
    <img src="static/img/ZEROG.png" alt="" id="zero">
    <div>
        <ul>
            <c:if test="${sessionScope.user!=null&&sessionScope.user!='null'}">
                <li><a href="${pageContext.request.contextPath}/book/allBook" id="allbook">图书</a></li>
            </c:if>
            <li><a href="${pageContext.request.contextPath}/" id="indexBtn">首页</a></li>
            <li><a href="${pageContext.request.contextPath}/book/login">登录</a></li>
            <li><a href="${pageContext.request.contextPath}/book/severs">服务指南</a></li>
            <li><a href="${pageContext.request.contextPath}/book/about">关于我们</a></li>
            <li><a onclick="swal('','功能暂未开放','error')" name="eng" style="cursor:pointer">ENGLISH</a></li>
        </ul>
    </div>

<%--    <div id="down_span">--%>
<%--        <span id="down_span_reading">阅览室</span>--%>
<%--    </div>--%>

</div>
<div id="lxwm" class="bootstrap-iso">
    <div class="container">
        <div class="row clearfix">
            <div class="col-md-12">
                <div class="page-header">
                    <h1>
                        <small>书籍列表——————————显示所以书籍</small>
                    </h1>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 column">
                    <%--toAddBook--%>
                    <a href="${pageContext.request.contextPath}/book/addBook" class="btn btn-primary">新增书籍</a>
                    <a href="${pageContext.request.contextPath}/book/allBook" class="btn btn-primary">显示全部书籍</a>
                </div>
                <div class="col-md-4 column"></div>
                <div class="col-md-4 column">
                    <%--查询书籍--%>
                    <form action="${pageContext.request.contextPath}/book/queryBook" style="float: right;top: 0%">
                        <label class="form-inline">
                            <input type="text" name="queryBookName" class="form-control" placeholder="请输入要查询的书籍" required>
                        </label>
                        <label class="form-inline">
                            <input type="submit" class="btn btn-primary" value="查询" style="width: 100px; height: 35px ">
                        </label>
                    </form>
                </div>
            </div>
        </div>
        <div class="row clearfix">
            <div class="col-md-12 column">
                <table class="table table-hover ">
                    <thead>
                    <tr>
                        <th>书籍编号</th>
                        <th>数据名称</th>
                        <th>书籍数量</th>
                        <th>书籍详情</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <%--书籍从数据库里查询出来，从list中遍历出来 foreach--%>
                    <tbody>
                    <c:if test="${list!='[null]'}">
                        <c:forEach var="book" items="${list}">
                            <tr>
                                <td>${book.bookID}</td>
                                <td>${book.bookName}</td>
                                <td>${book.bookCounts}</td>
                                <td>${book.detail}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/book/updateBook?id=${book.bookID}"
                                       class="btn btn-primary">修改</a>
                                    &nbsp;|&nbsp;
                                    <a href="${pageContext.request.contextPath}/book/toDeleteBook?id=${book.bookID}"
                                       class="btn btn-primary">删除</a>
                                </td>
                            </tr>

                        </c:forEach>
                    </c:if>

                    <c:if test="${list=='[null]'}">
                        <table>
                            <h3>未查到数据</h3>
                        </table>
                    </c:if>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- 底部 -->
<div id="lowCo">
        <span style="
        position: absolute;
        top: 17%;
        left: 12%;
        font-size: 12px;
        color: white;">关注我们</span>
    <div id="QR">

        <img src="static/img/wx.jpg" alt="" width="100%">

    </div>
    <span style="
            position: absolute;
            top: 77%;
            left: 10.85%;
            font-size: 12px;
            color: white;"
    >官方微信二维码</span>
    <!-- <ul style="list-style-type:none">
            <li><a href="">服务指南</a></li>
            <li><a href="">关于我们</a></li>
    </ul> -->

    <span id="fwzn">
            <span style="font-size:16px">服务指南</span>
            <br>
            <br>
            办卡须知|Library Card
            <br>
            <br>
            读者须知|Reading Guldelines
            <br>
            <br>
            实体店分布|physical stores position
        </span>

    <span id="lxfs">
            <span style="font-size:16px">关于我们</span>
            <br>
            <br>
            <img src="static/img/hua1.png" alt="" id="hua1">
            电话：17792424871
            <br>
            <br>
            <img src="static/img/hua2.png" alt="" id="hua2">
            邮箱：3105674895@qq.com
            <br>
            <br>
            <img src="static/img/hua3.png" alt="" id="hua3">
            地址：陕西省西安市斗鱼路18号
        </span>
</div>
</body>
<script>
    // // 下拉菜单
    // document.getElementById("indexBtn").onmouseover = function () {
    //     document.getElementById("down_span").style.height = "70px";
    // }
    // document.getElementById("indexBtn").onmouseout = function () {
    //     document.getElementById("down_span").style.height = "0px";
    //
    // }
    // document.getElementById("down_span").onmouseover = function () {
    //     document.getElementById("down_span").style.height = "70px";
    //     document.getElementById("down_span").style.backgroundColor = "#11643F";
    //     document.getElementById("down_span_reading").style.color = "white";
    // }
    // document.getElementById("down_span").onmouseout = function () {
    //     document.getElementById("down_span").style.backgroundColor = "white";
    //     document.getElementById("down_span_reading").style.color = "#595959";
    //     document.getElementById("down_span").style.height = "0px";
    // }
    //
    // document.getElementById("down_span").onclick = function () {
    //     window.location.href = "reading.html";
    // }


    // 按钮特效
    document.getElementById("sub").onmouseover = function () {
        document.getElementById("sub").style.backgroundColor = "#2F4F4F";
    }
    document.getElementById("sub").onmouseout = function () {
        document.getElementById("sub").style.backgroundColor = "#696969";
    }

    // 表单特效
    var t = document.getElementsByName("t");
    t[0].onfocus = function () {
        // alert(111);
        t[0].value = "";
    }
    t[0].onblur = function () {
        if (t[0].value == '') {
            t[0].value = "   " + "请输入姓名";
        }
    }
    t[1].onfocus = function () {
        // alert(111);
        t[1].value = "";
    }
    t[1].onblur = function () {
        if (t[1].value == "") {
            t[1].value = "   请输入手机号";
        }
    }
    t[2].onfocus = function () {
        // alert(111);
        t[2].value = "";
    }
    t[2].onblur = function () {
        if (t[2].value == "") {
            t[2].value = "   请输入邮箱";
        }
    }

    document.getElementById("chatInp").onfocus = function () {
        document.getElementById("chatInp").innerHTML = '';
    }
    document.getElementById("chatInp").onblur = function () {
        if (document.getElementById("chatInp").innerHTML == "") {
            document.getElementById("chatInp").innerHTML = '&nbsp;请输入留言';
        }

    }
</script>
<script type="text/javascript" src="static/JS/sweetalert-dev.js"></script>
</html>
