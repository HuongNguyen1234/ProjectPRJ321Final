<%-- 
    Document   : employee
    Created on : Nov 4, 2018, 3:14:03 PM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.entity.Staff"%>
<%@page import="com.data1.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/employee.css" type="text/css">
    </head>
    <body>
        
        <%
       
            DAO dao= new DAO();
            HttpSession t=request.getSession();
            String idt= t.getAttribute("id").toString();
            Staff s=dao.getStaffById(idt);
            request.setAttribute("ten", s.getTen());
            request.setAttribute("diaChi", s.getDiaChi());
            request.setAttribute("sdt", s.getSdt());
            request.setAttribute("maBC", s.getMaBC());
        %>
       
        <div class="employeeContainHeader">
            <div class="employeeContainHeaderSub">   
                <div class="employeeContainHeaderFirst">   
                    
                </div>
                <div class="employeeContainHeaderContainText">
                    INFORMATION
                </div>
            </div>              
        </div>
        <div class="employeeContainInformation">
            <div class="employeeContainSub">
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerOdd" >
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                            USER
                        </div>
                    <div class="employeeBannerLastOdd"></div>  
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerMainOdd">
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                         ${ten}
                        </div>
                    <div class="employeeBannerLastOdd"></div>                 
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
            </div>
        </div>     
        <div class="employeeContainInformation">
            <div class="employeeContainSub">
                <div class="employeeBannerMiddle">
                </div>
                <div class="employeeBanner" >
                    <div class="employeeBannerFirst"></div>           
                        <div class="employeeBannerContainText">
                            Mã Bưu Cục
                        </div>
                    <div class="employeeBannerLast"></div>  
                </div>
                <div class="employeeBannerMiddle">
                </div>
                <div class="employeeBannerMain">
                    <div class="employeeBannerFirst"></div>           
                        <div class="employeeBannerContainText">
                            ${maBC}
                        </div>
                    <div class="employeeBannerLast"></div>                 
                </div>
                <div class="employeeBannerMiddle">
                </div>
            </div>
        </div> 
        <div class="employeeContainInformation">
            <div class="employeeContainSub">
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerOdd" >
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                            Id
                        </div>
                    <div class="employeeBannerLastOdd"></div>  
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerMainOdd">
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                            ${sessionScope.id}
                        </div>
                    <div class="employeeBannerLastOdd"></div>                 
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
            </div>
        </div> 

        <div class="employeeContainInformation">
            <div class="employeeContainSub">
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerOdd" >
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                            Địa Chỉ
                        </div>
                    <div class="employeeBannerLastOdd"></div>  
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerMainOdd">
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                             ${diaChi}
                        </div>
                    <div class="employeeBannerLastOdd"></div>                 
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
            </div>
        </div> 
        <div class="employeeContainInformation">
            <div class="employeeContainSub">
                <div class="employeeBannerMiddle">
                </div>
                <div class="employeeBanner" >
                    <div class="employeeBannerFirst"></div>           
                        <div class="employeeBannerContainText">
                            Số điện thoại 
                        </div>
                    <div class="employeeBannerLast"></div>  
                </div>
                <div class="employeeBannerMiddle">
                </div>
                <div class="employeeBannerMain">
                    <div class="employeeBannerFirst"></div>           
                        <div class="employeeBannerContainText">
                             ${sdt}
                        </div>
                    <div class="employeeBannerLast"></div>                 
                </div>
                <div class="employeeBannerMiddle">
                </div>
            </div>
        </div> 
        <div class="employeeContainInformation">
            <div class="employeeContainSub">
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerOdd" >
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                            Chức vụ
                        </div>
                    <div class="employeeBannerLastOdd"></div>  
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
                <div class="employeeBannerMainOdd">
                    <div class="employeeBannerFirstOdd"></div>           
                        <div class="employeeBannerContainText">
                            ${sessionScope.chucVu}
                        </div>
                    <div class="employeeBannerLastOdd"></div>                 
                </div>
                <div class="employeeBannerMiddleOdd">
                </div>
            </div>
        </div> 
    </body>
</html>
