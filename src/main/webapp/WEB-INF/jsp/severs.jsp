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
        <title>severs</title>
        <link rel="stylesheet" href="static/CSS/severs.css">
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

<%--            <div id="down_span">--%>
<%--                <span id="down_span_reading">阅览室</span>--%>
<%--            </div>--%>

        </div>

        <!-- 主标题欢迎语 -->
        <div id="title1">
            <div id="spanBOx">
                <span style="float:left;font-size:100px;" >“</span>
                <span style="font-size:26px;position:absolute;top:40px;left:100px">欢迎来到服务指南</span>
            </div>
        </div>

        <!-- 插图 -->
        <div id="jpgBox">
            <div id="jpg1"><img src="static/img/service.jpg" alt="" width="100%" height="100%"></div>
            <div id="jpg2"><img src="static/img/card.jpg" alt="" width="100%" height="100%"></div>
        </div>

        <div id="txtBox">
            <div id="txt1" class="txt1">
                <p id="txt11" class="title2">办证须知|Library Card</p>
                <p id="txt111" class="txtInner"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;持本人有效身份证件（身份证或护照等）的中国公民和外籍人士。满14周岁没有身份证者，请带好印有身份证号码的户口簿。
                </p>
            </div>

            <div>
                <div id="txt4" class="txt1">
                    <p class="title2">营业时间|Open Hour</p>
                    <p class="txtInner">
                        周一至周日：10:00-21:30
                        国家法定假日：10：00-16：00
                    </p>
                </div>
            </div>


            <div id="txt2" class="txt1">
                <p class="title2">读者须知|Reading Guldelines</p>
                <p class="txtInner">
                    1.	保持阅览室干净，不随地乱扔垃圾。<br>
                    2.	办理借阅服务时保持有序、安静的环境。<br>
                    3.	衣着整洁、举止文雅、不与人吵架、争议。<br>
                    4.	请爱护文献资料及一切书籍，勿恶意损坏公共设备，勿将书籍文献擅自带离。<br>
                    5.	请在指定区域使用电源，勿擅自外接电源或充电，注意用电安全。<br>
                    6.	请在营业时间结束之前离开书屋，如有住宿或其他需要，请联系工作人员。
                </p>
            </div>

            <div id="txt3" class="txt1">
                <p class="title2">图书分布|Book Distribution</p>
                <p class="txtInner">
                    一楼：热销书籍<br>
                    二楼：外文书籍<br>
                    三楼：中文古今文献、优秀作品
                </p>
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


        // 下拉菜单
        document.getElementById("indexBtn").onmouseover=function(){
            document.getElementById("down_span").style.height="70px";
        }
        document.getElementById("indexBtn").onmouseout=function(){
            document.getElementById("down_span").style.height="0px";

        }
        document.getElementById("down_span").onmouseover=function(){
            document.getElementById("down_span").style.height="70px";
            document.getElementById("down_span").style.backgroundColor="#11643F";
            document.getElementById("down_span_reading").style.color="white";
        }
        document.getElementById("down_span").onmouseout=function(){
            document.getElementById("down_span").style.backgroundColor="white";
            document.getElementById("down_span_reading").style.color="#595959";
            document.getElementById("down_span").style.height="0px";
        }

        document.getElementById("down_span").onclick=function(){
            window.location.href="reading.html";
        }


        window.onload=function(){
            document.getElementById("txtBox").style.filter='blur(0px)';
        }

    </script>

    <script type="text/javascript" src="static/JS/sweetalert-dev.js"></script>

    </html>