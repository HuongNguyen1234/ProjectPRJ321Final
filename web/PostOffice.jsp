<%-- 
    Document   : Search
    Created on : Oct 30, 2018, 12:09:32 AM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.controller.TinhController"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.List"%>
<%@page import="com.data1.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post Office</title>
        <link rel="stylesheet" type="text/css" href="CSS/posOfficeStyle.css">  
        <link rel="stylesheet" type="text/css" href="CSS/homeStyle.css">   
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    </head>
    <body>
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
                <center style="margin-top: 100px;width: 100%;">
                    <div class="searchPosHeader">
                        <img src="Image/crown.png" alt="" style="width: 100px;position: absolute;top: -60px;margin: 0 auto;left: 0;right: 0;">
                        <div>
                            <h2>Postal Service Network</h2>        
                        </div>
                    </div>
                </center> 
                <c:if test="${currentTinh == null}">
                    <c:redirect url="/ShowHuyenServlet?tinh=1&huyen=11"/>
                </c:if>
                <%
                    //        if (request.getParameter("tinh") == null) {
                    //            request.getRequestDispatcher("/ShowHuyenServlet?tinh=1").forward(request, response);
                    //        }
                    DAO dao = new DAO();
                    TinhController listTinh = new TinhController();
                    listTinh.setListTinh(dao.getAllTinhBuuCuc());
                %>
                <form action="/ProjectPRJ321Version10/ShowHuyenServlet" method="post">
                    <table class="postOfficeTable">
                        <tr>
                            <td>
                                <div class="labelPostOfficeTable">
                                    <b>Province / City</b>
                                </div>                   
                            </td>
                            <td>
                                <div class="labelPostOfficeTable">
                                    <b>District</b>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>    
                        <center>
                            <select id="tinh" onchange="change()" >
                                <c:forEach  var="i" items="<%=listTinh.getListTinh()%>">
                                    <c:if test="${currentTinh != i. getMaTinh()}">
                                        <option value="${i.getMaTinh()}" >${i.getTen()}</option>
                                    </c:if>
                                    <c:if test="${currentTinh == i.getMaTinh()}">
                                        <option value="${i.getMaTinh()}" selected >${i.getTen()}</option>
                                    </c:if>

                                </c:forEach>
                            </select>
                        </center>
                        </td>
                        <td>
                        <center>
                            <select id="huyen" onchange="changeHuyen()">
                                <c:forEach  var="i" items="${huyen}">

                                    <c:if test="${currentHuyen != i.getMaHuyen()}">
                                        <option value="${i.getMaHuyen()}" >${i.getTenHuyen()}</option>
                                    </c:if>
                                    <c:if test="${ currentHuyen == i.getMaHuyen()}">
                                        <option value="${i.getMaHuyen()}" selected>${i.getTenHuyen()}</option>
                                    </c:if>
                                </c:forEach>

                            </select>
                        </center>
                        </td>
                        </tr>
                    </table>   
                </form>
                <div class="listPostOffice" style="margin-bottom: 100px;">
                    <div class="listPostOfficeTextHeader">
                        <h2 style="text-align: center">List of post offices</h2>
                    </div>
                    <div class="listPostOfficeTextAreaContain">
                        <textarea class="listPostOfficeTextArea" >
                            <c:forEach  var="i" items="${listpost}">
                                ${i.toString()}                     
                            </c:forEach>
                        </textarea>
                    </div>
                </div>
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





        <script src="JS/homeStyle.js" type="text/javascript"></script>  
        <script type="text/javascript">
                                function change() {
                                    var xmlhttp = new XMLHttpRequest();
                                    setTimeout(function () {
                                        window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ShowHuyenServlet?tinh=" + document.getElementById('tinh').value;
                                    }, 400);
                                    //            xmlhttp.open("POST", "/ProjectPRJ321Version10/ShowHuyenServlet?tinh=" + document.getElementById('tinh').value, true);
                                    //            var url = document.getElementById('tinh').value.toDataURL();
                                    //            xmlhttp.send(url);
                                    //            location.reload();
                                }

                                function changeHuyen() {
                                    var xmlhttp = new XMLHttpRequest();
                                    window.location.href = "http://localhost:8084/ProjectPRJ321Version10/ShowInforPost?huyen=" + document.getElementById('huyen').value + "&tinh=" + document.getElementById('tinh').value;
                                    ////            xmlhttp.open("POST", "/ProjectPRJ321Version10/ShowInforPost", true);
                                    ////            xmlhttp.send(document.getElementById('huyen').value);
                                }

        </script>
        <script type="text/javascript" src="JS/clock.js">
        </script>       
        <script type="text/javascript" >
            $(window).on('load', function () { 
//                    $("#main").slideUp(50);               
//                    $(".postOfficeTable").fadeOut(50);
//                    $(".searchPosHeader").fadeOut(50);
//                    $(".listPostOffice").fadeOut(50);
//                    $(".postOfficeTable").fadeIn(3000);
//                    $(".searchPosHeader").fadeIn(3000);
//                    $(".listPostOffice").fadeIn(3000);
            });
            
//            $(window).scroll(function(){  
//                if(document.documentElement.scrollTop < 170){   
//                    $("#main").slideUp(50);
//                    $(".postOfficeTable").fadeOut(50);
//                    $(".searchPosHeader").fadeOut(50);
//                    $(".listPostOffice").fadeOut(50);
//                } else {                 
//                    $("#main").slideDown(100);
//                    $(".postOfficeTable").fadeIn(3000);
//                    $(".searchPosHeader").fadeIn(3000);
//                    $(".listPostOffice").fadeIn(3000);
//                }
//            });
        </script>
    </body>
</html>
