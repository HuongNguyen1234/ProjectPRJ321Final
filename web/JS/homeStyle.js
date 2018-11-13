var slideIndex = 0;
showSlides();

function showSlides(n) {
  var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1;}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
  
}

function showPassword() {
    var password = document.getElementById("password");
    var showPass = document.getElementById("showpass");
    if(showPass.checked){
        password.type = "text";
        } else {
            password.type = "password";
        }
    }
function checkwin(){
    alert("fuck");
    alert(document.getElementById("img1").style.height);
}

//function addSectionActive(x){
//    var section = document.getElementsByName("section");
//    for(var i=0;i<section.length;i++){
//        section[i].classList.remove("sectionActive");
//    } 
//    section[x].classList.add("sectionActive");
//}

function loadPage(){
    var section = document.getElementsByName("section");              
    for(var i=0;i<section.length;i++){
        section[i].classList.remove("sectionActive");
    }               
    section[sessionStorage.getItem("index")].classList.add("sectionActive"); 
}
            
function addSectionActive(x){               
    var section = document.getElementsByName("section");              
    for(var i=0;i<section.length;i++){
        section[i].classList.remove("sectionActive");
    }               
    section[x].classList.add("sectionActive");   
                
    if (typeof(Storage) !== "undefined") {
        // Store
        sessionStorage.setItem("index", x);                                
    } else {
        alert("Sorry, your browser does not support Web Storage...");
    }
    turnOffCamera();
}