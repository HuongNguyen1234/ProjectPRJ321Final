<%-- 
    Document   : header
    Created on : Oct 24, 2018, 3:56:21 AM
    Author     : Nguyen Bao Long
--%>

<%@tag import="com.data1.DAO"%>
<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<html>
    <title>header</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <link rel="stylesheet" type="text/css" href="../../CSS/homeStyle.css">
    <body>
        <!--slide show-->
        <div style="width: 100%;height: 50px;background: linear-gradient(0.25turn,rgb(233, 180, 69),rgb(249, 100, 0));">
            <div style="width: 150px;float: left;height: 10px;">
                <img src="Image/logo.png"  style="position: absolute;left: 15px;z-index: 2;" width="80" height="50" >
            </div>
            
            <%
                session = request.getSession(false);
                if (session.getAttribute("name") == null) {
            %>
            <div onclick="document.getElementById('modalLogin').style.display = 'block'" class="buttonLoginLogout"><div class="buttonLoginLogoutText">Đăng nhập</div></div>
            <div id="modalLogin" class="modal"> 
                <form class="modal-content animate" method="post" action="Login">
                    <div class="imgcontainer">
                        <span onclick="document.getElementById('modalLogin').style.display = 'none'" class="close" title="Close Modal">&times;</span>
                        <img src="Image/avatar7.png" alt="Avatar" class="avatar">

                    </div>
                    <div class="login-container-main">
                        <table style="width: 100%;">                        
                            <tr>
                                <td colspan="1">
                                    <div class="placeholder">
                                        <div class="innerplaceholder">
                                            <i class="fa fa-user-secret" style="font-size: 20px;white-space: nowrap;" > User</i>                              
                                        </div>                         
                                    </div>
                                </td>
                                <td colspan="4">
                                    <input class="inputtext" type="text" name="name" required>          
                                </td>
                            </tr>                         
                            <tr>
                                <td colspan="1">
                                    <div class="placeholder">
                                        <div class="innerplaceholder" style="">
                                            <i class="fa fa-lock" style="font-size: 20px;white-space: nowrap; "> Password</i>

                                        </div>
                                    </div>                                 
                                </td>
                                <td colspan="4">
                                    <input class="inputtext" type="password" name="password" required>
                                </td>
                            </tr>

                            <tr>
                                <td colspan="5" style="color: greenyellow;">
                                    <b>${error}</b>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="5">
                                    <button type="submit" class="login-button" >Login</button>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <b style="color: white">***</b>
                                    <label class="switch">                    
                                        <input type="checkbox" id="showpass" onclick="showPassword()">
                                        <span class="slider round" id="rounder"></span>
                                    </label>
                                    <b style="color: white">abc</b>
                                </td>
                                <td colspan="2">
                                    <div style="float: right;margin: 20px 0;">
                                        <input type="checkbox" name="remember"> <b style="color: white">Remember me</b>
                                    </div>
                                </td>
                            </tr>
                        </table>                                    
                    </div>

                    <div class="login-container-end">
                        <!--<a href="" class="login-end">forgot password</a>-->
                    </div>
                </form>
            </div>
            <%
            } else {
                String name = (String) session.getAttribute("name");
            %>
            <div class="userProfile">              
                <div>
                    Hello! <%=name%>
                    <img src="Image/avatar4.jpg" onclick="addSectionActive(9)" width="50" height="50" style="z-index: 1;border-radius: 50%;right: 10%;">

                </div>
                <div>
                    <div onclick="location.href = 'Logout';" class="buttonLoginLogout"><div class="buttonLoginLogoutText">Đăng xuất</div></div>
                </div>
            </div>
            <%
                }
            %>
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
                <a href="#home" onclick="addSectionActive(0)"><i class="fas fa-home"></i> Home</a>
                <a href="#about" onclick="addSectionActive(8)"><i class="fas fa-question-circle"></i> About</a>
                <div class="subnav">
                    <button class="subnavbtn"><i class="fas fa-users-cog"></i> Services <i class="fa fa-caret-down"></i></button>
                    <div class="subnav-content">
                        <!--                <a href="#Tính Giá Cước" onclick="addSectionActive(1)"><i class="fas fa-money-check-alt"></i> Tính giá cước</a>
                                      <a href="#Mạng lưới Bưu cục" onclick="addSectionActive(3)"><i class="fas fa-globe"></i> Mạng lưới Bưu cục</a>-->
                        <a href="/ProjectPRJ321Version10/chargeAndDelivery.jsp"><i class="fas fa-money-check-alt"></i> Calculate Rates</a>
                        <a href="/ProjectPRJ321Version10/PostOffice.jsp"><i class="fas fa-globe"></i> Postal Network</a>
                        <a href="#Quét ="/ProjectPRJ321Version10mã QR" onclick="addSectionActive(5)"><i class="fas fa-qrcode"></i> Scan Code QR</a>
                    </div>
                </div> 
                <div class="subnav">
                    <button class="subnavbtn"><i class="fas fa-address-book"></i> Contact <i class="fa fa-caret-down"></i></button>
                    <div class="subnav-content">
                        <a href="/ProjectPRJ321Version10/editInfoPackage.jsp" ><i class="fas fa-clipboard-list"></i> Fill in your order information</a>
                        <a href="#Cập nhật trạng thái hành trình" onclick="addSectionActive(2)"><i class="fas fa-chart-area"></i> Status Update</a>

                    </div>
                </div>
                <%
                    session = request.getSession(false);
                    if (session.getAttribute("name") == null) {
                    } else if ((String) session.getAttribute("name") != null
                            && session.getAttribute("chucVu").equals("Quanly")) {
                      
                %>
                <a href="#manage" style="float: right;" onclick="addSectionActive(7)"> <i class="fas fa-users" style="font-size: 20px;" ></i> <b>Manage</b></a>
                <%
                    
                    }
                %>
            </div>           
        </nav>
            
        <canvas id="canvasClock" onclick="topFunction()"></canvas>
    </body>
    <script type="text/javascript">
        var error = "<%= request.getAttribute("error")%>";
        if (error !== "null") {
            document.getElementById("modalLogin").style.display = "block";
        }
    </script>
<!--    <script type="text/javascript" src="JS/homeStyle.js">
        
    </script>-->
    <script type="text/javascript" src="JS/clock.js">
    </script>
</html>