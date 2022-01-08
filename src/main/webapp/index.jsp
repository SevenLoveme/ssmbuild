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
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">
<meta charset="utf-8"/>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>index</title>

    <!-- /**
     *　　　　　　　 ┏┓       ┏┓+ +
     *　　　　　　　┏┛┻━━━━━━━┛┻┓ + +
     *　　　　　　　┃　　　　　　 ┃
     *　　　　　　　┃　　　━　　　┃ ++ + + +
     *　　　　　　 █████━█████  ┃+
     *　　　　　　　┃　　　　　　 ┃ +
     *　　　　　　　┃　　　┻　　　┃
     *　　　　　　　┃　　　　　　 ┃ + +
     *　　　　　　　┗━━┓　　　 ┏━┛
     *                ┃　　  ┃                          神兽保佑,代码无bug
     *　　　　　　　　　┃　　  ┃ + + + +               神兽保佑,代码无bug
     *　　　　　　　　　┃　　　┃　                   神兽保佑,代码无bug
     *　　　　　　　　　┃　　　┃ + 　　　　         神兽保佑,代码无bug
     *　　　　　　　　　┃　　　┃
     *　　　　　　　　　┃　　　┃　　+
     *　　　　　　　　　┃　 　 ┗━━━┓ + +
     *　　　　　　　　　┃ 　　　　　┣┓
     *　　　　　　　　　┃ 　　　　　┏┛
     *　　　　　　　　　┗┓┓┏━━━┳┓┏┛ + + + +
     *　　　　　　　　　 ┃┫┫　 ┃┫┫
     *　　　　　　　　　 ┗┻┛　 ┗┻┛+ + + +
     */ -->


    <link rel="stylesheet" href="static/CSS/index.css">

    <link rel="stylesheet" type="text/css" href="static/CSS/sweetalert.css">

</head>
<body>
<!-- 弹出导航栏 -->
<div id="opNa">
    <img src="static/img/ZEROW.png" alt="" id="zero">
    <img src="static/img/Nav.png" alt="" srcset="" onclick="over()" id="op">
</div>
<!-- 导航栏 -->
<div id="NavB">
    <img src="static/img/ZEROG.png" alt="" id="zero">
    <c:if test="${sessionScope.get('user')!=null&&sessionScope.get('user')!='null'}">
        <img id="head_protarit" src="static/img/user.jpg"/>
        <span id="herd_username">${sessionScope.get("user").username}</span>
        <a id="cancel" href="${pageContext.request.contextPath}/book/cancel">注销</a>
    </c:if>
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

    <%--        <div id="down_span">--%>
    <%--        </div>--%>

</div>
<!-- bgimg -->
<div id="bgimg">
    <img src="static/img/bgimg2.jpg" alt="" width="100%" style="border:0">
</div>
<!-- title -->
<div id="title">
    <img src="static/img/title2.png" alt="" width="70%">
</div>

<!-- 第一图 -->
<div id="firBg"></div>
<div id="firImgDiv">
    <img src="static/img/out1.jpg" id="firImg" data-move-y="200px">
    <div id="firShadow">
        <span id="shadowP1" name="bookroom">书&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;屋</span>
    </div>
</div>

<!-- 书屋 -->
<div id="shuwu">
    <img src="static/img/shuwu.png" alt="" style="width:100%">
</div>
<!-- ZERO -->
<div id="firZero">
    <img src="static/img/ZERO.png" alt="" style="width:100%">
</div>
<!-- 文字1 -->
<div id="firTxt">
    <p style="font-size:20px;color:#595959">洗涤心灵的一方天地</p>
</div>
<!-- 横线-->
<div id="firLine"></div>
<!-- more按钮 -->

<div id="firBox">
    <div id="firMore"></div>
    <span style="" id="logIn" class="but">LOG&nbsp;&nbsp;IN</span>
</div>


<!-- 简介 -->
<div id="intro">
    <p id="secp1" class="secTxt">ZERO书屋</p>
    <p id="secp2" class="secTxt">让我们一切从零开始</p>
    <p id="secp3" class="secTxt">用零的心态开始一段全新的文字旅程</p>
    <p id="secp4" class="secTxt">用美妙的1&0呈现最完美的代码王国</p>
</div>
<!-- 第二图 -->
<div id="secImgDiv">
    <div id="secShadow" class="shadow">
        <p id="shadowP2" class="shadowP">
            在&nbsp;&nbsp;&nbsp;线&nbsp;&nbsp;&nbsp;图&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;馆</p>
    </div>
    <img src="static/img/index_img2.jpg" alt="" style="width:100%" id="secImg" class="early40" data-move-x="-500px"
         data-rotate="90deg">
</div>
<!-- 第二图背景 -->
<div id="secBg" class="early30"></div>
<!-- 直线2 -->
<div id="secLine" class="early10" style="
        position: absolute;
        top: 322%;
        left: 52%;
        width: 25%;
        height: 1px;
        background-color: #595959;
        z-index: 100;"></div>
<!-- 按钮2 -->
<div id="secBox">
    <div id="secMore" class="early10"></div>
    <span style="" id="More" class="but">M&nbsp;O&nbsp;R&nbsp;E</span>
</div>


<!-- 阅览室 -->
<div id="Read">
    <p id="tirp1" class="early30">阅览室</p>
    <p id="tirp2" class="early30">READING ROOM</p>
    <p id="tirp3" class="early30">翻阅你喜欢的书籍</p>
    <p id="tirp4" class="early30">走进文字世界</p>
</div>
<!-- 第三图 -->
<div id="tirImgDiv">
    <div id="tirShadow" class="shadow">
        <p id="tirdowP3" class="shadowP">阅&nbsp;&nbsp;&nbsp;览&nbsp;&nbsp;&nbsp;室</p>
    </div>
    <img src="static/img/readingRoom.jpg" alt="" style="width:100%" data-rotate-x="90deg" data-move-z="-500px"
         data-move-y="200px" id="tirImg" class="early40">
</div>
<!-- 第三图背景 -->
<div id="tirBg" class="early40"></div>
<!-- 直线3 -->
<div id="secLine" class="early10" style="
        position: absolute;
        top: 422%;
        right: 52%;
        width: 25%;
        height: 1px;
        background-color: #595959;
        z-index: 100;"></div>
<!-- 按钮3 -->
<div id="tirBox" class="early10">
    <div id="tirMore" class="early20"></div>
    <span style="" id="More2" class="but">M&nbsp;O&nbsp;R&nbsp;E</span>
</div>


<!-- 关于我们 -->
<div id="aboutMe">
    <p id="forp1" class="early30">关于我们</p>
    <p id="forp2" class="early30">一群浪漫文艺又严谨的程序员的小世界</p>
    <p id="forp3" class="early30">希望我们可以如编辑代码一般</p>
    <p id="forp4" class="early30">向你们呈现一个美妙的文学世界</p>
</div>

<!-- 第四图背景 -->
<div id="forBg" class="early40"></div>

<!-- 第四图 -->
<div id="forImgDiv">
    <div id="forShadow" class="shadow">
        <p id="fordowP3" class="shadowP">实&nbsp;&nbsp;&nbsp;体&nbsp;&nbsp;&nbsp;书&nbsp;&nbsp;&nbsp;馆</p>
    </div>
    <img src="static/img/img4.jpg" alt="" width="100%" data-rotate-y="180deg" data-move-z="-200px" data-move-x="-300px"
         id="forImg" class="early40">
</div>

<!-- 直线4 -->
<div id="forLine" style="position: absolute;
    top: 532%;
    left: 52%;
    width: 25%;
    height: 1px;
    background-color: #595959;
    z-index: 100;" class="early10"></div>

<!-- 按钮4 -->
<div id="forBox" class="early10">
    <div id="forMore" class="early20"></div>
    <span style="" id="More3" class="but">M&nbsp;O&nbsp;R&nbsp;E</span>
</div>


<!-- 底部 -->
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
    function over() {
        document.getElementById("NavB").style.top = "0px";
        document.getElementById("opNa").style.top = "-70px";
    }

    // 下拉菜单
    document.getElementById("indexBtn").onmouseover = function () {
        document.getElementById("down_span").style.height = "70px";
    }
    document.getElementById("indexBtn").onmouseout = function () {
        document.getElementById("down_span").style.height = "0px";

    }
    document.getElementById("down_span").onmouseover = function () {
        document.getElementById("down_span").style.height = "70px";
        document.getElementById("down_span").style.backgroundColor = "#11643F";
        document.getElementById("down_span_reading").style.color = "white";
    }
    document.getElementById("down_span").onmouseout = function () {
        document.getElementById("down_span").style.backgroundColor = "white";
        document.getElementById("down_span_reading").style.color = "#595959";
        document.getElementById("down_span").style.height = "0px";
    }

    document.getElementById("down_span").onclick = function () {
        window.location.href = "reading.html";
    }


    //一图特效
    function showShadow() {
        document.getElementById("firShadow").style.top = '0%';
        document.getElementById("firImg").style.transform = "scale(1.2)";
    }

    function disShadow() {
        document.getElementById("firShadow").style.top = '100%';
        document.getElementById("firImg").style.transform = "scale(1)";

    }

    document.getElementById("firImgDiv").onmouseover = showShadow;
    document.getElementById("firImgDiv").onmouseout = disShadow;


    //二图特效
    function showShadow2() {
        document.getElementById("secShadow").style.top = '0%';
        document.getElementById("secImg").style.transform = "scale(1.2)";
    }

    function disShadow2() {
        document.getElementById("secShadow").style.top = '100%';
        document.getElementById("secImg").style.transform = "scale(1)";

    }

    document.getElementById("secImgDiv").onmouseover = showShadow2;
    document.getElementById("secImgDiv").onmouseout = disShadow2;


    //三图特效
    function showShadow3() {
        document.getElementById("tirShadow").style.top = '0%';
        document.getElementById("tirImg").style.transform = "scale(1.2)";
    }

    function disShadow3() {
        document.getElementById("tirShadow").style.top = '100%';
        document.getElementById("tirImg").style.transform = "scale(1)";

    }

    document.getElementById("tirImgDiv").onmouseover = showShadow3;
    document.getElementById("tirImgDiv").onmouseout = disShadow3;


    //四图特效
    function showShadow4() {
        document.getElementById("forShadow").style.top = '0%';
        document.getElementById("forImg").style.transform = "scale(1.2)";
    }

    function disShadow4() {
        document.getElementById("forShadow").style.top = '100%';
        document.getElementById("forImg").style.transform = "scale(1)";

    }

    document.getElementById("forImgDiv").onmouseover = showShadow4;
    document.getElementById("forImgDiv").onmouseout = disShadow4;

    //按钮1特效
    function MoreButOver() {
        document.getElementById("firMore").style.width = '100%';
        document.getElementById("logIn").style.color = "white";
    }

    function MoreButOut() {
        document.getElementById("firMore").style.width = '0%';
        document.getElementById("logIn").style.color = "#11643F";
    }

    document.getElementById("firBox").onmouseover = MoreButOver;
    document.getElementById("firBox").onmouseout = MoreButOut;
    document.getElementById("firBox").onclick = function () {
        window.location.href = "login.html";
    }

    //按钮2特效
    function MoreButOver1() {
        document.getElementById("secMore").style.width = '100%';
        document.getElementById("More").style.color = "white"

    }

    function MoreButOut1() {
        document.getElementById("secMore").style.width = '0%';
        document.getElementById("More").style.color = "#11643F";
    }

    document.getElementById("secBox").onmouseover = MoreButOver1;
    document.getElementById("secBox").onmouseout = MoreButOut1;
    document.getElementById("secBox").onclick = function () {
        window.location.href = "severs.html";
    }

    //按钮3特效
    function MoreButOver2() {
        document.getElementById("tirMore").style.width = '100%';
        document.getElementById("More2").style.color = "white"

    }

    function MoreButOut2() {
        document.getElementById("tirMore").style.width = '0%';
        document.getElementById("More2").style.color = "#11643F";
    }

    document.getElementById("tirBox").onmouseover = MoreButOver2;
    document.getElementById("tirBox").onmouseout = MoreButOut2;
    document.getElementById("tirBox").onclick = function () {
        window.location.href = "reading.html";
    }

    //按钮3特效
    function MoreButOver3() {
        document.getElementById("forMore").style.width = '100%';
        document.getElementById("More3").style.color = "white";

    }

    function MoreButOut3() {
        document.getElementById("forMore").style.width = '0%';
        document.getElementById("More3").style.color = "#11643F";
    }

    document.getElementById("forBox").onmouseover = MoreButOver3;
    document.getElementById("forBox").onmouseout = MoreButOut3;
    document.getElementById("forBox").onclick = function () {
        window.location.href = "about.jsp";
    }


    // 转英语

    function turnEng() {

    }

    // 转中文

    function turnCh() {

    }

</script>

<script type="text/javascript" src="static/JS/sweetalert-dev.js"></script>
　　
<script src="static/JS/jquery-1.11.1.min.js"></script>

<script src="static/JS/jquery-smoove-master/dist/jquery.smoove.js"></script>

<script>
    $('#firBg').smoove({offset: '40%'});
    $('#firImg').smoove({offset: '50%'});
    $('#shuwu').smoove({offset: '45%'});
    $('#firZero').smoove({offset: '45%'});
    $('#firTxt').smoove({offset: '40%'});
    $('#firBox').smoove({offset: '30%'});
    $('#firMore').smoove({offset: '10%'});
    $('#logIn').smoove({offset: '10%'});
    $('#firLine').smoove({offset: '33%'});
    $('.secTxt').smoove({offset: '40%'});
    $('#secBox').smoove({offset: '20%'});
    $('#Move').smoove({offset: '40%'});
    $('.early30').smoove({offset: '30%'});
    $('.early20').smoove({offset: '20%'});
    $('.early10').smoove({offset: '10%'});
    $('.early40').smoove({offset: '40%'});
</script>
</script>
</html>