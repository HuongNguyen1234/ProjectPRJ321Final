<%-- 
    Document   : editInforPackage
    Created on : Nov 2, 2018, 10:21:19 PM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.controller.MienController"%>
<%@page import="com.data1.DAO"%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>


<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/confirInfoPackage.css">
        <link rel="stylesheet" type="text/css" href="CSS/homeStyle.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <title>Package Information</title>
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
                <div class="InforPackageHeader" style="margin-top: 100px;">
                    <img src="Image/packageinformation.png" style="width: 80px;position: absolute;top: -60px;margin: 0 auto;left: 0;right: 0;">                       
                    <h2>Thêm đơn hàng</h2>   
                    <div id="divTop"></div>  
                    <div id="divBottom"></div> 
                </div>
                <c:if test="${currentMien==null}">
                    <c:redirect url="/OrderShowMienServlet?mien=11c"/>
                </c:if>
                <%
                  
                    DAO dao = new DAO();
                    MienController listMien = new MienController();
                    listMien.setMien(dao.getMien());

                %>
                <form method="Post" action="/ProjectPRJ321Version10/AddInforOrderServlet">
                    <table class="InforPackageTable">
                        <!--            <tr>
                                        <td>
                                            <div class="labelInforPackageOdd">                     
                                                <b>
                                                    Mã Đơn Hàng                          
                                                </b>
                                                <div class="divfirst"></div>
                                                <div class="divMain"></div>
                                            </div>
                                        </td>
                                        <td colspan="2">
                                            <div class="TextContainlabelInforPackageOdd">  
                                                <b>
                                                    <input type="text" class="InforPackageTableInput" placeholder="SE0321321" style="background-color: rgb(139, 64, 0);">
                                                </b>
                                                <div class="divlast"></div>
                                            </div>                  
                                        </td>
                                    </tr>-->
                        <tr></tr>
                        <tr>
                            <td>
                                <div class="labelInforPackage">                     
                                    <b>
                                        Mã Bưu Cục
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackage">  
                                    <b> 
                                        ${sessionScope.maBC}
                                        <!--                            <input type="text" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" placeholder="Dictrict 1">-->
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackageOdd">                     
                                    <b>
                                        Tên Người Gửi
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackageOdd">  
                                    <b>                           
                                        <input type="text" name="tenGui" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput">
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackage">                     
                                    <b>
                                        Địa Chỉ Gửi
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackage">  
                                    <b>                          
                                        <input type="text" name="diaChiGui" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackageOdd">                     
                                    <b>
                                        ĐT Người Gửi
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackageOdd">  
                                    <b>                           
                                        <input type="text" name="sdtGui" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput" >
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackage">                     
                                    <b>
                                        Tên Người Nhận
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackage">  
                                    <b>                          
                                        <input type="text" name="tenNhan" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackageOdd">                     
                                    <b>
                                        Địa Chỉ Nhận
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackageOdd">  
                                    <b>                          
                                        <input type="text" name="diaChiNhan" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput" >
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackage">                     
                                    <b>
                                        ĐT Người Nhận
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackage">  
                                    <b>                         
                                        <input type="text" name="sdtNhan" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackageOdd">                     
                                    <b>
                                        Loại hàng
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td>
                                <div class="TextContainlabelLeftInforPackageOdd">  
                                    <b>
                                        <input type="radio" name="productType" selected="true" value="0"> 
                                        Bưu Phẩm
                                    </b>
                                    <div class="divMain"></div>
                                </div>                  
                            </td>
                            <td>
                                <div class="TextContainlabelRightInforPackageOdd">  
                                    <b>
                                        <input type="radio" name="productType" value="1">
                                        Thư
                                    </b>
                                    <div class="divlast"></div>
                                </div>   
                            </td>
                        </tr>  
                        <tr>
                            <td>
                                <div class="labelInforPackage">                     
                                    <b>
                                        Khối Lượng
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackage">  
                                    <b>

                                        <input type="number" name="khoiLuong" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" >
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>           
                        <tr>
                            <td>
                                <div class="labelInforPackageOdd">                     
                                    <b>
                                        Miền Gửi
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackageOdd">  
                                    <select id="mien"  name="mien" style="background-color: rgb(139, 64, 0);width: 100%;border:none; height: 40px;color: white;" value="${mien}" onchange="change()">
                                        <c:forEach  var="i" items="<%=listMien.getMien()%>">
                                            <c:if test="${currentMien != i.getMaMien()}">
                                                <option value="${i.getMaMien()}" >${i.getTenMien()}</option>
                                            </c:if>
                                            <c:if test="${currentMien ==i.getMaMien()}">
                                                <option value="${i.getMaMien()}" selected >${i.getTenMien()}</option>
                                            </c:if>

                                        </c:forEach>
                                    </select>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <div class="labelInforPackage">                     
                                    <b>
                                        Phí Thu Hộ
                                    </b>
                                    <div class="divfirst"></div>
                                    <div class="divMain"></div>
                                </div>
                            </td>
                            <td colspan="2">
                                <div class="TextContainlabelInforPackage">  
                                    <b>                          
                                        <input type="number" name="phiThuHo" style="background-color: rgb(249, 129, 42);" class="InforPackageTableInput" ">
                                    </b>
                                    <div class="divlast"></div>
                                </div>                  
                            </td>
                        </tr>
                        <!--            <tr>
                                        <td>
                                            <div class="labelInforPackageOdd">                     
                                                <b>
                                                    Tổng Tiền
                                                </b>
                                                <div class="divfirst"></div>
                                                <div class="divMain"></div>
                                            </div>
                                        </td>
                                        <td colspan="2">
                                            <div class="TextContainlabelInforPackageOdd">  
                                                <b>                            
                                                    <input type="text" style="background-color: rgb(139, 64, 0);" class="InforPackageTableInput" placeholder="???">
                                                </b>
                                                <div class="divlast"></div>
                                            </div>                  
                                        </td>
                                    </tr>                     -->
                    </table>
                    <center><button type="submit" style="margin-bottom: 100px;width: 10%;height: 50px;border-radius: 5px;background-color: rgb(255, 116, 23)"><b>Xác Nhận</b></button></center>
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
        <script>
            function change() {
                var mien = document.getElementById("mien");
                var val = mien.val();
                mien.value = val;
            }
        </script>
        <script type="text/javascript" src="JS/homeStyle.js"></script>
        <script type="text/javascript" src="JS/clock.js"></script>
        <script type="text/javascript" >
            $(window).on('load', function () {
//                if(document.documentElement.scrollTop < 170){   
//                    $("#main").slideUp(50);
//                    $(".InforPackageHeader").fadeOut(50);
//                    $(".InforPackageTable").fadeOut(50);
//                } else {
//                    $("#main").slideDown(50);
//                    $(".InforPackageHeader").fadeIn(1000);
//                    $(".InforPackageTable").fadeIn(3000);
//                }
            });
//            $(window).scroll(function(){  
////                alert(document.documentElement.scrollTop);
//                if(document.documentElement.scrollTop < 170){ 
//                    $("#main").slideUp(50);
//                    $(".InforPackageHeader").fadeOut(50);
//                    $(".InforPackageTable").fadeOut(50);
//                } else {                 
//                    $("#main").slideDown(1000);
//                    $(".InforPackageHeader").fadeIn(3000);
//                    $(".InforPackageTable").fadeIn(3000);
//                }
//            });
        </script>
        <!--<button onclick="addSectionActive(6)" style="width: 10%;height: 50px;border-radius: 5px;background-color: rgb(255, 116, 23)"><b>SAVE</b></button>-->
    </body>
</html>
