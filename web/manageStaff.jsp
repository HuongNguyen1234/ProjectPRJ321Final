<%-- 
    Document   : manageStaff
    Created on : Nov 3, 2018, 4:58:57 AM
    Author     : Nguyen Bao Long
--%>

<%@page import="com.controller.ManagementController"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.AbstractList"%>
<%@page import="com.entity.Staff"%>
<%@page import="java.util.List"%>
<%@page import="com.data1.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/manageStaf.css">
        <title>ManageStaff</title>
    </head>
    <body>
        <%
            DAO dao = new DAO();
            ManagementController listS = new ManagementController();
            listS.setStaff(dao.getStaff());
            
        %>
        <form method="Post" action="">
            <table class="manageStaffTable">
                <tr>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                USER
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                PostCode
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Id
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Name
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Address
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Number phone
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Position
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Delete Employee
                            </div>
                        </div>
                    </th>
                    <th>
                        <div class="manageStaffHeadContain">
                            <div class="manageStaffHeadContainText">
                                Add Employee
                            </div>
                        </div>
                    </th>
                </tr>
                <c:forEach var="i" items="<%= listS.getStaff()%>">
                    <tr>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getTen()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getMaBC()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    <input  type="text" name="id" value="${i.getId()} " disabled>
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getTen()}
                                </div>
                            </div> 
                        </td>
                        <td> 
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getDiaChi()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getSdt()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    ${i.getDiaChi()}
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    <a href="/ProjectPRJ321Version10/DeleteStaffServlet"> <input type="button" value="delete"></a>
                                </div>
                            </div> 
                        </td>
                        <td>
                            <div class="manageStaffContain">
                                <div class="manageStaffContainText">
                                    <a href="/ProjectPRJ321Version10/AddStaffServlet"> <input type="button" value="Add"></a>
                                </div>
                            </div> 
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </body>
</html>
