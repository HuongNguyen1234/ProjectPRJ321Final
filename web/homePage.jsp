<%-- 
    Document   : homePage
    Created on : Nov 5, 2018, 9:56:47 PM
    Author     : Nguyen Bao Long
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/homePage.css"> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <title>JSP Page</title>
    </head>
    <body>     
        <div style="width: 90%;margin-left: 10%;">
            <figure class="snip1208">
                <img src="Image/images.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>Lễ Ra Quân Của FlashPost</h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống (1).jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>Khách Hàng Đầu Tiên Với FlashPost</h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>CHương Trình Từ Thiện " Chuyến Đi Vàng " </h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>CHương Trình Từ Thiện " Chuyến Đi Vàng " </h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>CHương Trình Từ Thiện " Chuyến Đi Vàng " </h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>CHương Trình Từ Thiện " Chuyến Đi Vàng " </h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>CHương Trình Từ Thiện " Chuyến Đi Vàng " </h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>CHương Trình Từ Thiện " Chuyến Đi Vàng " </h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>
            <figure class="snip1208">
                <img src="Image/tải xuống.jpg" alt="sample66"/>
                <div class="date"><span class="day">28</span><span class="month">Oct</span></div><i class="ion-film-marker"></i>
                <figcaption>
                    <h3>CHương Trình Từ Thiện " Chuyến Đi Vàng " </h3>
                    <p>
                        I don't need to compromise my principles, because they don't have the slightest bearing on what happens to me anyway.
                    </p>
                    <button>Read More</button>
                </figcaption><a href="#"></a>
            </figure>

        </div>
        <script>           
            $(window).scroll(function(){  
                if(document.documentElement.scrollTop < 170){
                    $("figure").slideUp(500);
                } else {
                    $("figure").slideDown(1000);
                }
            });
                      
            $(".hover").mouseleave(
                    function () {
                        $(this).removeClass("hover");
                    }
            );      
        </script> 
    </body>
</html>
