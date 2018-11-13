<%-- 
    Document   : home
    Created on : Oct 18, 2018, 2:53:18 PM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Home</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="CSS/homeStyle.css">       
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"> 
        <style>
            
        </style>
    </head>
    <body onload="loadPage()">        
    <div class="grid-container">
        <!-----------------------------------------------------------header-------------------------------------------------->
        <div id = "header">
        <header>    
            <t:header></t:header>
        </header>

        </div>
        <!-----------------------------------------------------------menuleft-------------------------------------------------->
        <!--<div id = "menuleft">menu</div>-->
        <!-------------------------------------------------------------main---------------------------------------------------->
        <div id = "main" >
            
            <t:main></t:main>
            <!--can use it for jsp-->
            
            <%--<%@ include file = "chargeAndDelivery.jsp" %>--%> 
        </div>  
        <!-----------------------------------------------------------menuright------------------------------------------------->
<!--        <div id = "menuright" >
            <%--<t:menuRight></t:menuRight>--%>
        </div>-->
        <!-------------------------------------------------------------footer-------------------------------------------------->
        <div id = "footer">
            <footer>
                <t:footer></t:footer>          
            </footer>
        </div>
    </div>       

    <script src="JS/homeStyle.js" type="text/javascript"></script>   
    </body>
</html>
