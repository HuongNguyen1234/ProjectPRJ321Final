<%-- 
    Document   : InformationOfPackage
    Created on : Oct 31, 2018, 4:36:23 AM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/confirInfoPackage.css">
        <title>Package Information</title>
    </head>
    <body>
          
<!--        <div class="InforPackageHeader">
            <img src="Image/packageinformation.png" style="width: 80px;position: absolute;top: -60px;margin: 0 auto;left: 0;right: 0;">                       
            <h2>Thông tin đơn hàng</h2>   
            <div id="divTop"></div>  
            <div id="divBottom"></div> 
        </div>
        <table class="InforPackageTable">
            <tr>
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
                            ${maDH}
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>
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
                            ${tenGui}
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
                            ${diaChiGui}
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
                            ${sdtGui}
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
                            ${tenNhan}
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
                            ${diaChiNhan} 
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
                            ${sdtNhan}
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
                <td colspan="2">
                    <div class="TextContainlabelInforPackageOdd">  
                        <b>
                            ${productType}
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
                            ${khoiLuong}
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>

            <tr>
                <td>
                    <div class="labelInforPackageOdd">                     
                        <b>
                            Phí Ship
                        </b>
                        <div class="divfirst"></div>
                        <div class="divMain"></div>
                    </div>
                </td>
                <td colspan="2">
                    <div class="TextContainlabelInforPackageOdd">  
                        <b>
                            ${phiShip}
                        </b>
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
                            ${phiThuHo}
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>
            <tr>
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
                            ${tongTien}
                        </b>
                        <div class="divlast"></div>
                    </div>                  
                </td>
            </tr>
        </table>-->
    </body>
</html>
