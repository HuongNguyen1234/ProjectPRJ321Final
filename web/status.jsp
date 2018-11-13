<%-- 
    Document   : status
    Created on : Oct 26, 2018, 9:54:38 PM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/status.css">
        <link rel="stylesheet" type="text/css" href="CSS/scanCode.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"/>
        <title>Status</title>
    </head>
    <body>
        
        <!--===============================================Search bar=================================================================-->
        <!--        <div class="searchItemStatus">           
                    <div class="searchItemStatusContainText">
                        <input type="text" placeholder="Search...">
                        <button><i class="fas fa-search" ></i></button>
                    </div>
                </div>-->
        <!--==========================================================================================================================-->
        <div style="position: relative;margin-top: 50px;height: 150px;color: white;background: linear-gradient(0.75turn,rgb(233, 180, 69),rgb(249, 100, 0)); ">
            <div style="position: absolute;top: 0;bottom: 0;right: 0;left: 0;font-size: 40px;margin:auto;width: 50%;height: 50px; ">Information of Status</div>
        </div>
        <div class="statusContainAll">  
            
            <div class="mainStatusDesign" style="width: 70%;">
                <!--===============================================Edit and Save==============================================================-->            
                <!--            <button class="buttonEdit" id="edit" onclick="editInformation()">
                                Edit
                            </button>
                            <button class="buttonEdit" id="save" style="display: none;" onclick="saveInformation()">
                                Save
                            </button>-->
                <!--==========================================================================================================================-->
                <div class="headTableStatus">
                    <div class="headSubnetTableStatus">
                        <!--<div><i class="fas fa-barcode"> Trạng thái trước</i></div>-->
                        <p name="containInfor"><a href="/ProjectPRJ321Version10/PreviousStatusServlet?maDH=${maDH}"><input name="previous" type="button" value="Trạng thái trước" ></a></p>
                    </div>

                    <div class="headSubnetTableStatus">
                        <!--<div><i class="fas fa-barcode"> Trạng thái sau</i></div>-->
                        <!--onclick="non()-->
                        <p name="containInfor"><a href="/ProjectPRJ321Version10/IncreaseStatusServlet?maDH=${maDH}"><input name="after" type="button" value="Trạng thái sau" ></a></p>
                    </div>   
                </div>

                <div class="headTableStatus">
                    <div class="headSubnetTableStatus">
                        <div><i class="fas fa-barcode"> Post Code</i></div>
                        <p name="containInfor"><b><input name="maDH" type="text" value="${maDH}" disabled></b></p>
                    </div>

                    <div class="headSubnetTableStatus">
                        <div><i class="fas fa-barcode"> Status</i></div>
                        <p name="containInfor"><b><input name="tenTrangThai" type="text" value="${tenTrangThai}" disabled></b></p>
                    </div>          

                    <!--======================Icon Trạng thái(Cái này t có cách nhưng chắc mai nói sau) ==========================================-->                
                    <!--                <div class="headSubnetTableStatus">
                                        <div><i class="fab fa-free-code-camp"> Trạng thái</i></div>
                                        <a href="?trangthai=1">
                                        <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(1)">
                                            <div class="IconContainCircle">
                                                <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                                            </div>
                                            <div class="IconContainSub">
                                                <i class="fas fa-file-invoice"></i>
                                            </div>
                                        </div>
                                            </a>
                                        <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(2)">
                                            <div class="IconContainCircle">
                                                <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                                            </div>
                                            <div class="IconContainSub">
                                                <i class="fas fa-truck"></i>
                                            </div>
                                        </div> 
                                        <div class="headSubnetTableStatusIconContain" name="status" onclick="Active(3)">
                                            <div class="IconContainCircle">
                                                <i class="fa fa-check-circle " style="" aria-hidden="true"></i>
                                            </div>
                                            <div class="IconContainSub">
                                                <i class="fas fa-box"></i>  
                                                <i class="fas fa-boxes" ></i>                        
                                            </div>
                                        </div>                   
                                    </div>   -->
                    <!--==========================================================================================================================-->
                    <div class="headSubnetTableStatus" >
                        <div><i class="fas fa-balance-scale"> Weight (gram)</i></div>
                        <p name="containInfor"><b><input name="infor" type="text" value="${khoiLuong}" disabled></b></p>
                    </div>
                </div>
                <div class="mainTableStatus">
                    <fieldset>
                        <legend>Information Of Status</legend>
                        <div id="StatusTableTextArea" class="containStatusTableText">
                            <p> ${journalList}</p>
                        </div>
                    </fieldset>

                    <!--======================================Tạm thời đóng lại để nếu có gì cần thì cho vào======================================-->                
                    <!--                <div>
                                        <div class="labelMainTableStatus">
                                            <div class="labelMainTableStatusCenter">
                                            Thông tin phát
                                            </div>
                                        </div>
                                        <table>
                                            <tr>
                                                <th>Ngày</th>
                                                <th>Bưu cục</th>
                                                <th>Chi tiết</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="17" type="text" disabled>
                                                    </div>    
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="SỐ 5" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="Không có chi tiết" type="text" disabled>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <div class="labelMainTableStatus">
                                            <div class="labelMainTableStatusCenter">
                                            Thông tin chuyển thư
                                            </div>
                                        </div>
                                        <table>
                                            <tr>
                                                <th>Ngày đóng</th>
                                                <th>Bưu cục đóng</th>
                                                <th>Bưu cục nhận</th>
                                                <th>Thông tin CT</th>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="I don't know" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="don't do" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="hello" type="text" disabled>
                                                    </div>
                                                </td>
                                                <td>
                                                    <div name="containInfor">
                                                        <input name="infor" value="alo" type="text" disabled>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </div>-->
                    <!--==========================================================================================================================-->
                </div>
            </div>  
            <div class="statusContainAllQR" style="width: 30%;">
                <div class="scanCodeSubContainVideo">
                    <video id="videoID" autoplay></video>                  
                </div>           
                <center><h1><b>Scan QR Code</b></h1> 
                <form id="myForm" method="POST" action="/ProjectPRJ321Version10/QrCodeServlet">    
                    <div> 
                        <input class="buttonScanCodeSubContain" type="button" value="Send" onclick="send()" />                        
                    </div>
                    <div>
                        <input type="hidden" style="background-color: rgb(235, 167, 58);border: none;"  name="qrCode" value="${qrCode}" id="qrCode"/>       
                    </div>
                </form>
                </center>
                <div class="scanCodeSubContainCanvas">
                    <canvas id="canvasID">
                    </canvas>
                </div>          
            </div> 

        </div>    
        <script type="text/javascript">
            var video = document.getElementById('videoID');
            var canvas = document.getElementById('canvasID');
            var context = canvas.getContext('2d');
            var localStream;
            window.URL = window.URL || window.webkitURL;
            navigator.getUserMedia = navigator.getUserMedia
                    || navigator.webkitGetUserMedia
                    || navigator.mozGetUserMedia
                    || navigator.msGetUserMedia;
            navigator.getUserMedia(
                    {video: true},
                    function (stream) {
                        video.src = window.URL.createObjectURL(stream);
                        localStream = stream;
                    },
                    function (e) {
                        console.log('An error happened:', e);
                    }
            );
            function send() {
                context.drawImage(video, 0, 0, canvas.width, canvas.height);
                var imageData = canvas.toDataURL();
                document.getElementById('qrCode').value = imageData;
                console.log(document.getElementById('qrCode').value);
//                console.log(imageData);
                document.getElementById('myForm').submit();
//                var xmlhttp = new XMLHttpRequest();
//                xmlhttp.open("POST", "/ProjectPRJ321Version10/QrCodeServlet", true);
//                xmlhttp.send(imageData);
//                console.log(imageData);
            }
            ;



        </script>
        <script type="text/javascript">
            var name = "<%= session.getAttribute("name")%>";
            var textArea = document.getElementById("StatusTableTextArea");
            
                function Active(x){
                    var status = document.getElementsByName("status");
                    //remove all the active
                    for(var i=0;i<status.length;i++){
                        status[i].classList.remove("ActiveClass");
                    }
                    
                    //add the active for it
                    for(var i=0;i<status.length;i++){
                        if(i!==x){
                            status[i].classList.add("ActiveClass");
                        } else {
                            break;
                        }
                    } 
                    // x = 1 là trạng thái nhận yêu cầu đặt hàng
                    // x = 2 là trạng thái đã chuyển giao cho bộ phận giao nhận
                    // x = 3 là trạng thái đã giao hàng
                }           
                
                //deactive class
                var containInfor = document.getElementsByName("containInfor");
                for (var i = 0; i < containInfor.length; i++){
                    containInfor[i].classList.add("ActiveInputClass");
                    containInfor[i].classList.remove("InActiveInputClass");                 
                }                         
                
                function saveInformation(){                   
                    var infor = document.getElementsByName("infor");
                    var nameNewDivStatus = document.getElementsByName("nameNewDivStatus");
                    
                    //deactive class
                    var containInfor = document.getElementsByName("containInfor");
                    for (var i = 0; i < containInfor.length; i++){
                        containInfor[i].classList.remove("ActiveInputClass");
                        containInfor[i].classList.add("InActiveInputClass");                 
                    }
                    
                    //remove toàn bộ class ban đầu đi để add thêm class khác với màu là màu xám
                    for (var i = 0; i < nameNewDivStatus.length; i++){
                        nameNewDivStatus[i].removeAttribute("class");
                        nameNewDivStatus[i].setAttribute("class","newDivLastStatusClass");
                    }
                    //div được tạo ra để chứa các text
                    var div = document.createElement("div");
                    div.classList.add("newDivStatusClass");
  
                    //quá trình lấy các phần tử mà có tên là infor và chuyển hết disabled sang enabled
                    for (var i = 0; i < infor.length; i++){
                        infor[i].setAttribute("disabled",true);                      
                        //text mà mình cần lưu trong cái text area
                        var text = document.createTextNode(infor[i].value+" /-/ ");    
                        div.appendChild(text);                 
                    }                    
                    
                    //add màu cho thanh đầu tiên
                    var divfirst = document.createElement("div"); 
                    divfirst.setAttribute("name", "nameNewDivStatus");                  
                    divfirst.setAttribute("class","newDivFirstStatusClass");
             
                    textArea.insertBefore(div, textArea.childNodes[0]);
                    textArea.insertBefore(divfirst, textArea.childNodes[0]);
                    document.getElementById("edit").style.display = "block";
                    document.getElementById("save").style.display = "none";                                      
                }       
        </script>
        
    </body>
</html>
