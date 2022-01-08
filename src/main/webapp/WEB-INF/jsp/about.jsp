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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>about</title>
    <link rel="stylesheet" href="static/CSS/about.css">
    <link rel="stylesheet" type="text/css" href="static/CSS/sweetalert.css">

</head>
<body>

<!-- 导航栏 -->

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

    <div id="down_span">
        <span id="down_span_reading">阅览室</span>
    </div>

</div>


<div id="lxwm">
    <span>联系我们</span>
</div>

<!-- 直线 -->
<div id="line"></div>


<!-- 联系我们 -->
<div id="txt">
    <!-- 华北总部 -->
    <div id="txt1">
        <p style="font-size:22px">华南分部</p>
        <p>
            电话：17792424871<br><br>

            邮箱：3105674895@qq.com <br><br>

            地址：陕西省西安市斗鱼路18号 <br><br>
        </p>
    </div>

    <!-- 海外 -->
    <div id="txt2">
        <p style="font-size:22px">Overseas / Export Trade</p>
        <p>
            Tel: +86-17792424871  <br> <br>

            Email：3105674895@qq.com <br> <br>

            Add: No.18 Douyu Road, Yanta District, Xi 'an
        </p>
    </div>
</div>


<div>

    <!-- 在线留言 -->
    <p id="zxly">在线留言</p>
    <p id="zxlyTxt">您对我们有什么好的建议和意见，或者想咨询我们的产品，请填写下面的表单， 我们会第一时间与您取得联系！</p>
    <form action="" id="form">
        <div id="inpBox">
            <input type="text" name="t" id="" value="&nbsp;&nbsp;&nbsp;请输入姓名" id="nameInp">
            <input type="text" name="t" id="" value="&nbsp;&nbsp;&nbsp;请输入手机号" id="phoneInp">
            <input type="text" name="t" id="" value="&nbsp;&nbsp;&nbsp;请输入邮箱" id="mailInp">
        </div>
        <div>
            <textarea name="" cols="30" rows="10" id="chatInp">&nbsp;&nbsp;请输入留言</textarea>
        </div>

        <!-- 提交 -->

    </form>
    <div id="sub">
        <span>提交</span>
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