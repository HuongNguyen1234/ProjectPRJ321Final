<%-- 
    Document   : chargeAndDelivery
    Created on : Oct 22, 2018, 4:33:19 AM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.controller.MienController"%>
<%@page import="com.data1.DAO"%>
<%@page import="com.controller.TinhController"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Charge and Delivery</title>
        <link rel="stylesheet" type="text/css" href="CSS/chargStyle.css">
        <link rel="stylesheet" type="text/css" href="CSS/homeStyle.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    </head>
    <body>
        <c:if test="${currentTinh == null}&&${currentTinh1 == null}&&${currentMien==null}">
            <c:redirect url="/ChargeDeliveryServlet?tinh1=1&tinh=1&huyen=11&mien=11c"/>
        </c:if>
        <div class="grid-container">
            <div id = "header">
                <header>    
                    <!--slide show-->
                    <div style="width: 100%;height: 50px;background: linear-gradient(0.25turn,rgb(233, 180, 69),rgb(249, 100, 0));">
                    </div>
                    <div class="slideshow-container" >          
                        <div class="mySlides fade">
                            <img src="Image/flashbox.jpg" style="width:100%;position: absolute;height: 550px;" >

                            <div class= "flashPostContain">
                                <center><div class="flashPostHeader" >FLASH POST</div></center>  
                                <div class="flashPostContent">
                                    CELEBRATING 50 YEARS OF DEVELOPMENT, ALONG WITH THE CONSOLE OF CONSUMERS, FLASHPOST IS STRONG AND DIFFICULT TODAY. ALONG WITH INVESTORS, FLASHPOST HAS BEEN CONFIRMED THAT FLASHPOST IS THE PLACE OF THEIR FAITH. FLASHPOST VISITS SOME OF THE FLASHPOST'S 50 YEARS OF DEVELOPMENT.
                                </div>
                                <center><button class="flashPostButton" onclick="checkwin()">Flash Post</button></center>             
                            </div>                
                            <div class="numbertext">1 / 3</div>     
     
                        </div>

                        <div class="mySlides fade">
                            <img src="Image/flash.jpg" style="width:100%;position: absolute;height: 550px;">
                            <div class= "flashPostContain">
                                <center><div class="flashPostHeader" >FLASH POST</div></center>  
                                <div class="flashPostContent">
                                    CELEBRATING 50 YEARS OF DEVELOPMENT, ALONG WITH THE CONSOLE OF CONSUMERS, FLASHPOST IS STRONG AND DIFFICULT TODAY. ALONG WITH INVESTORS, FLASHPOST HAS BEEN CONFIRMED THAT FLASHPOST IS THE PLACE OF THEIR FAITH. FLASHPOST VISITS SOME OF THE FLASHPOST'S 50 YEARS OF DEVELOPMENT.
                                </div>
                                <center><button class="flashPostButton" onclick="checkwin()">Flash Post</button></center>             
                            </div>     
                            <div class="numbertext">2 / 3</div>

                        </div>
                        <div class="mySlides fade">
                            <img src="Image/backgroundtechnology.jpg" style="width:100%;position: absolute;height: 550px;">
                            <div class= "flashPostContain">
                                <center><div class="flashPostHeader" >FLASH POST</div></center>  
                                <div class="flashPostContent">
                                    CELEBRATING 50 YEARS OF DEVELOPMENT, ALONG WITH THE CONSOLE OF CONSUMERS, FLASHPOST IS STRONG AND DIFFICULT TODAY. ALONG WITH INVESTORS, FLASHPOST HAS BEEN CONFIRMED THAT FLASHPOST IS THE PLACE OF THEIR FAITH. FLASHPOST VISITS SOME OF THE FLASHPOST'S 50 YEARS OF DEVELOPMENT.
                                </div>
                                <center><button class="flashPostButton" onclick="checkwin()">Flash Post</button></center>             
                            </div>             
                            <div class="numbertext">3 / 3</div>

                        </div>

                        <div style="position: absolute;bottom: 10px;right: 50%;" >
                            <span class="dot" onclick="currentSlide(1)"></span> 
                            <span class="dot" onclick="currentSlide(2)"></span> 
                            <span class="dot" onclick="currentSlide(3)"></span> 
                        </div>

                    </div>

                    <!--slide show-->    
                    <nav>          
                        <div class="navbar">         
                            <a href="/ProjectPRJ321Version10/home.jsp" ><i class="fas fa-home"></i> Home</a>
                        </div>           
                    </nav>
                    <canvas id="canvasClock" onclick="topFunction()"></canvas>
                </header>
            </div>
            <div id = "main" >

                <%
                    //        if (request.getParameter("tinh") == null) {
                    //            request.getRequestDispatcher("/ShowHuyenServlet?tinh=1").forward(request, response);
                    //        }
                    DAO dao = new DAO();
                    TinhController listTinh = new TinhController();
                    MienController listMien = new MienController();
                    listTinh.setListTinh(dao.getAllTinhBuuCuc());
                    listMien.setMien(dao.getMien());

                %>
                <form action="/ProjectPRJ321Version10/ChargeDeliveryServlet" method="Post">
                    <div class="chargeAndDeliveryTable" style="margin: 100px auto;">
                        <table >
                            <tr>
                                <th colspan="3">
                                    <div class="bannersMain">
                                        <center><div class="containText" style="text-align: center;">Charge and Delivery Time</div></center>                          
                                    </div>
                                </th>
                            </tr>

                            <tr>
                                <td>
                                    <div class="bannersodd">
                                        <center><div class="containText">
                                                TYPE
                                            </div></center>
                                    </div>
                                </td>
                                <td>
                                    <div class="banners3odd">
                                        <input type="radio" name="type" id="type" value="Product" required checked="true">Product
                                    </div>
                                </td>
                                <td>
                                    <div class="banners2odd"  value="Letter" >
                                        <input type="radio" name="type" id="type" value="Letter" required>Letter
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="banners">
                                        <center><div class="containText">
                                                WEIGHT
                                            </div></center>
                                    </div>
                                </td>
                                <td colspan="2" >
                                    <div class="banners2">
                                        <input type="number" name="gam" id="g" value="${gam}"  required  style="height:38px;border: none;background-color: rgb(229, 99, 21);width: 100%;">
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="bannersodd">
                                        <center>
                                            <div class="containText">
                                                Send Domain
                                            </div>
                                        </center>
                                    </div>
                                </td>
                                <td colspan="2" >
                                    <div class="banners2odd">
                                        <select id="mien"  style="background-color: rgb(129, 63, 11);color: white;">
                                            <c:forEach  var="i" items="<%=listMien.getMien()%>">
                                                <c:if test="${currentMien != i.getMaMien()}">
                                                    <option value="${i.getMaMien()}" >${i.getTenMien()}</option>
                                                </c:if>
                                                <c:if test="${currentMien ==i.getMaMien()}">
                                                    <option value="${i.getMaMien()}" selected >${i.getTenMien()}</option>
                                                </c:if>

                                            </c:forEach>
                                        </select>
                                    </div>
                                </td>
                            </tr>
                            <td>
                                <div class="banners">
                                    <center><div class="containText">
                                            FROM
                                        </div></center>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="banners2">
                                    <select id="tinh1">
                                        <c:forEach  var="i" items="<%=listTinh.getListTinh()%>">
                                            <c:if test="${currentTinh1 != i. getMaTinh()}">
                                                <option value="${i.getMaTinh()}" >${i.getTen()}</option>
                                            </c:if>
                                            <c:if test="${currentTinh1 == i.getMaTinh()}">
                                                <option value="${i.getMaTinh()}" selected >${i.getTen()}</option>
                                            </c:if>

                                        </c:forEach>
                                    </select>
                                </div>
                            </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="bannersodd">
                                        <center><div class="containText">
                                                TO
                                            </div></center>
                                    </div>
                                </td>
                                <td>
                                    <div class="banners3odd">
                                        <select id="tinh" onchange="change()" style="background-color: rgb(129, 63, 11);color: white;">
                                            <c:forEach  var="i" items="<%=listTinh.getListTinh()%>">
                                                <c:if test="${currentTinh != i. getMaTinh()}">
                                                    <option value="${i.getMaTinh()}" >${i.getTen()}</option>
                                                </c:if>
                                                <c:if test="${currentTinh == i.getMaTinh()}">
                                                    <option value="${i.getMaTinh()}" selected >${i.getTen()}</option>
                                                </c:if>

                                            </c:forEach>
                                        </select>
                                    </div>
                                </td>
                                <td>
                                    <div class="banners2odd">
                                        <select id="huyen" onchange="changeHuyen()" style="background-color: rgb(129, 63, 11);color: white;">
                                            <c:forEach  var="i" items="${huyen}">

                                                <c:if test="${currentHuyen != i.getMaHuyen()}">
                                                    <option value="${i.getMaHuyen()}" >${i.getTenHuyen()}</option>
                                                </c:if>
                                                <c:if test="${ currentHuyen == i.getMaHuyen()}">
                                                    <option value="${i.getMaHuyen()}" selected>${i.getTenHuyen()}</option>
                                                </c:if>
                                            </c:forEach>
                                        </select>
                                    </div>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    <div class="banners">
                                        <center><div class="containText">
                                                PREPAYMENT
                                            </div></center>
                                    </div>
                                </td>
                                <td colspan="2">
                                    <div class="banners2">
                                        <b>${payment}</b>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>  
            <div id = "footer">
                <footer>
                    <div class="footerImageContain" >       
                        <div class="footerImageContainInfor">
                            <p><b>Team Project:</b> Flash Post </p>
                            <p><b><i class="fas fa-users"></i> Member Of Team:</b> 
                                <br><i class="fas fa-female"> Nguyễn Thị Hường</i>
                                <br><i class="fas fa-male"> Nguyễn Bảo Long</i> 
                                <br><i class="fas fa-male"> Lê Mạnh Hùng</i> 
                            </p>
                            <p><b>Class:</b> SE1210</p>
                            <p></p>
                        </div>
                        <img src="Image/footerImage.png" width="100%" height="150px">
                    </div>         
                </footer>
            </div>
        </div>
        <script type="text/javascript">
            function change() {
                var xmlhttp = new XMLHttpRequest();
                setTimeout(function () {
                    window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ChargeDeliveryServlet?tinh1=" +
                            document.getElementById('tinh1').value +
                            "&tinh=" + document.getElementById('tinh').value +
                            "&mien=" + document.getElementById('mien').value +
                            "&gam=" + document.getElementById('g').value +
                            "&type=" + document.getElementById('type').value;
                }, 400);

            }

            function changeHuyen() {
                var xmlhttp = new XMLHttpRequest();
                window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ChargeDeliveryShowInforPost?huyen=" +
                        document.getElementById('huyen').value + "&tinh=" + document.getElementById('tinh').value +
                        "&tinh1=" + document.getElementById('tinh1').value +
                        "&mien=" + document.getElementById('mien').value +
                        "&gam=" + document.getElementById('g').value +
                        "&type=" + document.getElementById('type').value;
                ////            xmlhttp.open("POST", "/ProjectPRJ321Version10/ShowInforPost", true);
                ////            xmlhttp.send(document.getElementById('huyen').value);
            }

        </script>
        <script src="JS/chargeStyle.js" type="text/javascript"></script>
        <script type="text/javascript" src="JS/homeStyle.js"></script>
        <script type="text/javascript" src="JS/clock.js"></script>
        <script type="text/javascript" >
//            $(window).on('load', function () {
//                if(document.documentElement.scrollTop < 170){   
//                    $(".chargeAndDeliveryTable").animate({width: "0"});;
//                    $(".chargeAndDeliveryTable").slideUp(50);
//                } else {
//                    $(".chargeAndDeliveryTable").animate({width: "100%"},1000);
//                }
//            });
//            $(window).scroll(function(){  
////                alert(document.documentElement.scrollTop);
//                if(document.documentElement.scrollTop < 170){ 
////                    $(".chargeAndDeliveryTable").slideUp(50);
//                } else {                 
//                    $(".chargeAndDeliveryTable").slideDown(1000);
//                    $(".chargeAndDeliveryTable").animate({width: "100%"},1000);
//                }
//            });
        </script>
    </body>
</html>
