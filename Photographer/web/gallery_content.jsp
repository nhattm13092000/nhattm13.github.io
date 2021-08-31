<%-- 
    Document   : gallery_content
    Created on : Jun 2, 2021, 12:30:14 AM
    Author     : nhatbeo
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="left">
            <div class="title_gallery">
                ${gallery.name}
            </div>
            <div class="slideshow">
                <c:forEach var="o" items="${gallery.list}">
                    <div class="mySlides">
                        <img src="${o.image}">
                    </div>
                </c:forEach>
                <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
                <a class="next" onclick="plusSlides(1)">&#10095;</a>
            </div>
            <div class="listimage">
                <ul>
                    <c:forEach var="o" items="${gallery.list}">
                        <li>
                            <img src="${o.image}" alt=""/>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <script>
            var slideIndex = 1;
            showSlides(slideIndex);
            function plusSlides(n) {
                showSlides(slideIndex += n);
            }
            function currentSlide(n) {
                showSlides(slideIndex = n);
            }

            function showSlides(n) {
                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                var captionText = document.getElementById("caption");
                if (n > slides.length) {
                    slideIndex = 1
                }
                if (n < 1) {
                    slideIndex = slides.length
                }
                for (i = 0; i < slides.length; i++) {
                    slides[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].className = dots[i].className.replace(" active", "");
                }
                slides[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].className += " active";
                captionText.innerHTML = dots[slideIndex - 1].alt;
            }
        </script>
    </body>
</html>
