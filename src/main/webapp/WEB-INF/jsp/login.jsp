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
    <title>login</title>
    <link rel="stylesheet" href="static/CSS/login.css">
    <link rel="stylesheet" type="text/css" href="static/CSS/sweetalert.css">
    <script type="text/javascript" src="static/JS/jquery-3.1.1.min.js"></script>
</head>
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


<body>

    <c:if test="${sessionScope.user==null||sessionScope.user=='null'}">
        <script type="text/javascript">
            $(function(){

                swal('','未登录','error')
            })
        </script>
    </c:if>
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

<%--    <div id="down_span">--%>
<%--        <span id="down_span_reading">阅览室</span>--%>
<%--    </div>--%>

</div>


<!-- 背景图 -->
<div id="BgImgDiv">
    <img src="static/img/loginBg.jpg" alt="" id="BgImg">
</div>


<!-- 登录 -->
<div id="allLogin">

    <!-- 登录 -->
    <div>
        <div id="loginBox">
            <div id="logoBox">
                <img src="static/img/ZEROG.png" alt="" id="" width="100%">
            </div>
                <span id="message" class="errorMsg">${message}</span>
            <span id="loginSpan">登录</span>
            <!-- 竖线 -->
            <div id="shuxian"></div>
            <span id="zcSpan">注册</span>
            <!-- 滑动的横线 -->
            <div id="moveLine"></div>

            <div id="inpsBox">
                <!-- 登录栏 -->
                <form action="${pageContext.request.contextPath}/book/toLogin" method="post">
                    <div>
                        <!-- 账号 -->
                        <span id="acc">账号</span>
                        <input type="text" name="username" id="accInp" class="inp" placeholder="请输入账号" required>

                    </div>
                    <div id="line1"></div>
                    <div>
                        <!-- 密码 -->
                        <span id="pwd">密码</span>
                        <input type="text" name="password" id="pwdInp" class="inp" placeholder="请输入密码" required position:
                               absolute;
                               top: 40%;
                               left: 17%;
                               width: 15%;
                               height: 15%;
                               transform: top;
                               transition-duration: 1s;>

                    </div>
                    <div id="line2"></div>
                    <div>
                        <!-- 验证码 -->
                        <span id="test">验证码</span>
                        <input type="text" name="code" id="testInp" class="inp" placeholder="请输入验证码" required>
                        <img class="code" src="${pageContext.request.contextPath}/kaptcha/getKaptchaImage.do" id="kaptchaImage"  style="margin-bottom: -3px"/>
                    </div>

                    <button id="loginButton">登陆</button>
                </form>
                <!-- 注册栏 -->
                <form action="${pageContext.request.contextPath}/book/addUser" method="post">
                    <div>
                        <!-- 注册账号 -->
                        <span id="accNew">账号</span>
                        <input type="text" name="username" id="accInpNew" class="inp" placeholder="请输入账号" required>

                    </div>
                    <div id="line3"></div>
                    <div>
                        <!-- 注册密码 -->
                        <span id="pwdNew">密码</span>
                        <input type="text" name="password" id="pwdInpNew" class="inp" placeholder="请输入密码" required>
                        <!-- 密码强度 -->
                        <div>
                            <!-- 强度文字 -->
                            <span id="str"></span>
                            <!-- 强度形状 -->
                            <div id="shape">
                                <div class="progress-bar_wrap">
                                    <div class="progress-bar_item" id="progress-bar_item1"></div>
                                    <div class="progress-bar_item" id="progress-bar_item2"></div>
                                    <div class="progress-bar_item" id="progress-bar_item3"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div id="line4"></div>
                    <div>
                        <!-- 再次输入 -->
                        <span id="pwdAgn">再次确认</span>
                        <input type="text" name="rpwd" id="pwdAgnInp" class="inp" placeholder="请再次输入密码" required>
                        <!-- 验证两次密码 -->
                        <div id="yes">
                            <img src="static/img/yes.png" alt="" id="yes_img">
                        </div>

                    </div>
                    <button type="submit" id="registButton">注册</button>
                </form>
            </div>
        </div>
    </div>


    <!-- 登录&注册按钮 -->
    <div id="loginBtn" style="display: none">
        <span id="btn" style="display: none">登录</span>
    </div>
    <!-- 其他方式登录 -->
    <div id="line5"></div>
    <div id="line6"></div>
    <span>其他方式登录</span>


</div>


<!-- <script src="JS/pwd/js/index.js"></script>
<script src="JS/pwd/js/jquery.js"></script> -->
<script>


    // 下拉菜单
    <%--document.getElementById("indexBtn").onmouseover = function () {--%>
    <%--    document.getElementById("down_span").style.height = "70px";--%>
    <%--}--%>
    <%--document.getElementById("indexBtn").onmouseout = function () {--%>
    <%--    document.getElementById("down_span").style.height = "0px";--%>

    <%--}--%>
    <%--document.getElementById("down_span").onmouseover = function () {--%>
    <%--    document.getElementById("down_span").style.height = "70px";--%>
    <%--    document.getElementById("down_span").style.backgroundColor = "#11643F";--%>
    <%--    document.getElementById("down_span_reading").style.color = "white";--%>
    <%--}--%>
    <%--document.getElementById("down_span").onmouseout = function () {--%>
    <%--    document.getElementById("down_span").style.backgroundColor = "white";--%>
    <%--    document.getElementById("down_span_reading").style.color = "#595959";--%>
    <%--    document.getElementById("down_span").style.height = "0px";--%>
    <%--}--%>

    <%--document.getElementById("down_span").onclick = function () {--%>
    <%--    window.location.href = "${pageContext.request.contextPath}/book/allBook";--%>
    <%--}--%>


    function mohu() {
        document.getElementById("BgImg").style.filter = 'blur(2.5px)';
    }

    //登录注册切换
    function clickDL() {
        document.getElementById("inpsBox").style.left = "0%";
        document.getElementById("loginSpan").style.color = "green";
        document.getElementById("zcSpan").style.color = "grey";
        document.getElementById("moveLine").style.left = "34.7%";
        document.getElementById("btn").innerHTML = "登录";
        var t = setTimeout(function () {
            document.getElementById("moveLine").style.width = "7%";
        }, 250);
        document.getElementById("moveLine").style.width = "0%";
        document.getElementById("testCode1").innerHTML = "";

    }

    function clickZC() {
        document.getElementById("inpsBox").style.left = "-120%";
        document.getElementById("zcSpan").style.color = "green";
        document.getElementById("loginSpan").style.color = "grey";
        document.getElementById("moveLine").style.left = "59.7%";
        document.getElementById("btn").innerHTML = "注册";
        var t = setTimeout(function () {
            document.getElementById("moveLine").style.width = "7%";
        }, 250);
        document.getElementById("moveLine").style.width = "0%";
    }

    document.getElementById("loginSpan").onclick = clickDL;
    document.getElementById("zcSpan").onclick = clickZC;


    //模糊特效
    document.getElementById("loginBox").onmouseover = function () {
        document.getElementById("loginBox").style.filter = "blur(0px)";
        document.getElementById("BgImgDiv").style.filter = "blur(3.5px)";
        document.getElementById("loginBox").style.opacity = 1;
    }


    //按钮特效
    document.getElementById("loginBtn").onmouseover = function () {
        document.getElementById("loginBtn").style.backgroundColor = "#1E90FF";
    }
    document.getElementById("loginBtn").onmouseout = function () {
        document.getElementById("loginBtn").style.backgroundColor = "#00BFFF";
    }


    //输入框特效
    var objInp = document.getElementsByClassName("inp");
    // alert(objInp);
    objInp[0].onfocus = function () {
        objInp[0].style.borderBottomColor = "green";
        objInp[0].style.width = "16.5%";
        if (objInp[0].value == "") {
            objInp[0].value = "";
        }

    }
    objInp[0].onblur = function () {
        objInp[0].style.width = "15%";
        objInp[0].style.borderBottomColor = "grey";
        if (objInp[0].value == "") {
            objInp[0].value = "";
        }

    }

    //bug：当更换input的type时无法触发过渡效果
    objInp[1].onfocus = function () {
        objInp[1].style.width = "16.5%";
        objInp[1].style.borderBottomColor = "green";
        objInp[1].type = "password";
        if (objInp[1].value == "") {
            objInp[1].value = "";
        }
    }
    objInp[1].onblur = function () {
        objInp[1].style.width = "15%";
        objInp[1].style.borderBottomColor = "grey";
        if (objInp[1].value == "") {
            objInp[1].type = "text";
            objInp[1].value = "";
        } else {
            objInp[1].type = "password";
        }

    }


    objInp[2].onfocus = function () {
        objInp[2].style.width = "16.5%";
        objInp[2].style.borderBottomColor = "green";
        if (objInp[2].value == "") {
            objInp[2].value = "";
        }
    }
    objInp[2].onblur = function () {
        objInp[2].style.width = "15%";
        objInp[2].style.borderBottomColor = "grey";
        if (objInp[2].value == "") {
            objInp[2].value = "";
        }

    }


    objInp[3].onfocus = function () {
        objInp[3].style.width = "16.5%";
        objInp[3].style.borderBottomColor = "green";
        if (objInp[3].value == "") {
            objInp[3].value = "";
        }
    }
    objInp[3].onblur = function () {
        objInp[3].style.width = "15%";
        objInp[3].style.borderBottomColor = "grey";
        if (objInp[3].value == "") {
            objInp[3].value = "";
        }

    }


    objInp[4].onfocus = function () {
        objInp[4].style.width = "16.5%";
        objInp[4].style.borderBottomColor = "green";
        objInp[4].type = "password";
        if (objInp[4].value == "") {
            objInp[4].value = "";
        }
    }
    objInp[4].onblur = function () {
        objInp[4].style.width = "15%";
        objInp[4].style.borderBottomColor = "grey";
        if (objInp[4].value == "") {
            objInp[4].type = "text";
            objInp[4].value = "";
        }

    }


    objInp[5].onfocus = function () {
        objInp[5].style.width = "16.5%";
        objInp[5].style.borderBottomColor = "green";
        objInp[5].type = "password";
        if (objInp[5].value == "") {
            objInp[5].value = "";
        }
    }
    objInp[5].onblur = function () {
        objInp[5].style.width = "15%";
        objInp[5].style.borderBottomColor = "grey";
        if (objInp[5].value == "") {
            objInp[5].type = "text";
            objInp[5].value = "";
        }

    }


    // 验证码特效
    document.getElementById("testInp").onclick = function () {
        var testCode;
        var a = String(Math.floor(Math.random() * 10));
        var b = String(Math.floor(Math.random() * 10));
        var c = String(Math.floor(Math.random() * 10));
        var d = String(Math.floor(Math.random() * 10));
        var e = String(Math.floor(Math.random() * 10));
        var f = String(Math.floor(Math.random() * 10));
        var testCode = a + " " + b + " " + c + " " + d + " " + e + " " + f;
        document.getElementById("testCode1").innerHTML = testCode;

    }

    // 密码强度特效
    var iii = document.getElementById("pwdInpNew");
    iii.oninput = function () {
        if (iii.value.length == 0) {
            document.getElementById("progress-bar_item1").style.opacity = 0;
            document.getElementById("progress-bar_item2").style.opacity = 0;
            document.getElementById("progress-bar_item3").style.opacity = 0;

            document.getElementById("str").innerHTML = "";
        }
        if (iii.value.length > 0 && iii.value.length <= 4) {
            document.getElementById("progress-bar_item1").style.opacity = 1;
            document.getElementById("progress-bar_item2").style.opacity = 0;
            document.getElementById("str").innerHTML = "密码强度：弱";
            document.getElementById("progress-bar_item3").style.opacity = 0;
        }
        if (iii.value.length > 4 && iii.value.length <= 8) {
            document.getElementById("progress-bar_item2").style.opacity = 1;
            document.getElementById("str").innerHTML = "密码强度：中";
            document.getElementById("progress-bar_item3").style.opacity = 0;
        }
        if (iii.value.length > 8) {
            document.getElementById("str").innerHTML = "密码强度：高";
            document.getElementById("progress-bar_item3").style.opacity = 1;
        }
    }

    // 两次密码验证特效
    document.getElementById("pwdAgnInp").oninput = function () {
        if (document.getElementById("pwdAgnInp").value == iii.value) {
            document.getElementById("yes_img").style.opacity = 1;
            $(".errorMsg").text("");

        } else {
            $(".errorMsg").text("密码不一致");
            document.getElementById("yes_img").style.opacity = 0;
        }
    }
    // $("#registButton").click(function () {
    //     $("input:not([type='checkbox'])").each(function () {
    //         // 判断值不为空
    //         if ($(this).val().length === 0) {
    //             // 展示错误提示
    //             var errMsgPrefix = $(this).parent().prev().text();
    //             $(this).next().text(errMsgPrefix + "不能为空");
    //             $(this).parent().parent().addClass("has-error");
    //
    //         }
    //     });
    // });


    $(function(){
        $('#kaptchaImage').click(function () {//生成验证码
            $(this).hide().attr('src', '${pageContext.request.contextPath}/kaptcha/getKaptchaImage.do?' + Math.floor(Math.random()*100) ).fadeIn();
            event.cancelBubble=true;
        });
    });

    window.onbeforeunload = function(){
        //关闭窗口时自动退出
        if(event.clientX>360&&event.clientY<0||event.altKey){
            alert(parent.document.location);
        }
    };

    function changeCode() {
        $('#kaptchaImage').hide().attr('src', '${pageContext.request.contextPath}/kaptcha/getKaptchaImage.do?' + Math.floor(Math.random()*100) ).fadeIn();
        event.cancelBubble=true;
    }
    $(".img").click(function (){
        this.src="${pageContext.request.contextPath}/kaptcha/getKaptchaImage"
    })
    $("#registButton").click(function () {
        // 验证用户名：必须由字母，数字下划线组成，并且长度为5到12位
        //1 获取用户名输入框里的内容
        var usernameText = $("#accInpNew").val();
        //2 创建正则表达式对象
        var usernamePatt = /^\w{5,12}$/;
        //3 使用test方法验证
        if (!usernamePatt.test(usernameText)) {
            //4 提示用户结果
            $(".errorMsg").text("用户名不合法！");

            return false;
        }

        // 验证密码：必须由字母，数字下划线组成，并且长度为5到12位
        //1 获取用户名输入框里的内容
        var passwordText = $("#pwdInpNew").val();
        //2 创建正则表达式对象
        var passwordPatt = /^\w{5,12}$/;
        //3 使用test方法验证
        if (!passwordPatt.test(passwordText)) {
            //4 提示用户结果
            $(".errorMsg").text("密码不合法！");

            return false;
        }

        // 验证确认密码：和密码相同
        //1 获取确认密码内容
        var repwdText = $("#pwdAgnInp").val();
        //2 和密码相比较
        if (repwdText != passwordText) {
            //3 提示用户
            $("span.errorMsg").text("确认密码和密码不一致！");

            return false;
        }
        // 去掉错误信息
        $("span.errorMsg").text("");
    });
    $("#registButton").click(function () {
        // 验证用户名：必须由字母，数字下划线组成，并且长度为5到12位
        //1 获取用户名输入框里的内容
        var usernameText = $("#accInpNew").val();
        //2 创建正则表达式对象
        var usernamePatt = /^\w{5,12}$/;
        //3 使用test方法验证
        if (!usernamePatt.test(usernameText)) {
            //4 提示用户结果
            $(".errorMsg").text("用户名不合法！");

            return false;
        }

        // 验证密码：必须由字母，数字下划线组成，并且长度为5到12位
        //1 获取用户名输入框里的内容
        var passwordText = $("#pwdInpNew").val();
        //2 创建正则表达式对象
        var passwordPatt = /^\w{5,12}$/;
        //3 使用test方法验证
        if (!passwordPatt.test(passwordText)) {
            //4 提示用户结果
            $(".errorMsg").text("密码不合法！");

            return false;
        }

        // 验证确认密码：和密码相同
        //1 获取确认密码内容
        var repwdText = $("#pwdAgnInp").val();
        //2 和密码相比较
        if (repwdText != passwordText) {
            //3 提示用户
            $("span.errorMsg").text("确认密码和密码不一致！");

            return false;
        }
        // 去掉错误信息
        $("span.errorMsg").text("");
        swal({
            title: "success",
            text: "注册成功",
            type: "success",
            confirmButtonColor: "#4D9BFF",
            confirmButtonText: "确定",
            closeOnConfirm: true
        })
    });
    <%--$("#loginButton").click(function () {--%>
    <%--    if (${sessage.equals("ok")}){--%>
    <%--        swal('','登陆成功','success')--%>
    <%--    }--%>
    <%--});--%>
</script>

<script type="text/javascript" src="static/JS/sweetalert-dev.js"></script>

</body>
</html>