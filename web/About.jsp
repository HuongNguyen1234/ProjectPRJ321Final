<%-- 
    Document   : About
    Created on : Nov 4, 2018, 4:57:40 AM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="CSS/aboutt.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="MemberContain" id="idMemberContain1">
            <div class="infoMember">
                <img src="Image/avatar6.png" width="300px" height="300px" class="infoMemberImage">  
                <div class="infoMemberImageHidden">
                    <center>
                    <h1>Tab here to show more</h1>
                    <div class="infoMemberImageHiddenCircle">
                        <img src="Image/avatar4.jpg" width="50px" height="50px">                   
                    </div> 
                    <p>
                        This is the handsome man
                    </p>
                    <p>
                        And he really proud of it
                    </p>
                    </center>
                </div>
                <div class="infoMemberText">
                    <center><h1>Nguyễn Bảo Long</h1></center>
                </div>
            </div>
            <div class="playground">
                <div class="cube">
                  <div class="face left1"></div>
                  <div class="face front1"></div>
                  <div class="face right1"></div>
                  <div class="face rear1"></div>
                  <div class="face top1"></div>
                  <div class="face bottom1"></div>
                </div>
            </div>      
        </div>
        <div class="MemberContain" id="idMemberContain2">
            <div class="infoMember">
                <img src="Image/avatar6.png" width="300px" height="300px" class="infoMemberImage">  
                <div class="infoMemberImageHidden">
                    <center>
                    <h1>Tab here to show more</h1>
                    <div class="infoMemberImageHiddenCircle">
                        <img src="Image/avatar4.jpg" width="50px" height="50px">                   
                    </div> 
                    <p>
                        This is the handsome man
                    </p>
                    <p>
                        And he really proud of it
                    </p>
                    </center>
                </div>
                <div class="infoMemberText">
                    <center><h1>Nguyễn Thị Hường</h1></center>
                </div>
            </div>
            <div class="playground">
                <div class="cube">
                  <div class="face left"></div>
                  <div class="face front"></div>
                  <div class="face right"></div>
                  <div class="face rear"></div>
                  <div class="face top"></div>
                  <div class="face bottom"></div>
                </div>
            </div>      
        </div>
        <div class="MemberContain" id="idMemberContain3">
            <div class="infoMember">
                <img src="Image/avatar6.png" width="300px" height="300px" class="infoMemberImage">  
                <div class="infoMemberImageHidden">
                    <center>
                    <h1>Tab here to show more</h1>
                    <div class="infoMemberImageHiddenCircle">
                        <img src="Image/avatar4.jpg" width="50px" height="50px">                   
                    </div> 
                    <p>
                        This is the handsome man
                    </p>
                    <p>
                        And he really proud of it
                    </p>
                    </center>
                </div>
                <div class="infoMemberText">
                    <center><h1>Lê Mạnh Hùng</h1></center>
                </div>
            </div>
            <div class="playground">
                <div class="cube">
                  <div class="face left"></div>
                  <div class="face front"></div>
                  <div class="face right"></div>
                  <div class="face rear"></div>
                  <div class="face top"></div>
                  <div class="face bottom"></div>
                </div>
            </div>      
        </div>
        <script type="text/javascript" src="JS/about.js"></script>
        <script type="text/javascript" >
            $(window).scroll(function(){  
//                alert(document.documentElement.scrollTop);
                if(document.documentElement.scrollTop < 170){
                    $("#idMemberContain1").slideUp("fast");
                } else {
                    $("#idMemberContain1").slideDown("slow");
                }
                if(document.documentElement.scrollTop < 600){
                    $("#idMemberContain2").slideUp("fast");
                } else {
                    $("#idMemberContain2").slideDown("slow");
                }
                if(document.documentElement.scrollTop < 1070){
                    $("#idMemberContain3").slideUp("fast");
                } else {
                    $("#idMemberContain3").slideDown("slow");
                }
            });
        </script>
    </body>
</html>
