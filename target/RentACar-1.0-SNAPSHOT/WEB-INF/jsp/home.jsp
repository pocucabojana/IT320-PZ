<%-- 
    Document   : header
    Created on : Apr 15, 2017, 3:52:15 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>


<div id="myCarousel" class="carousel" >
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <!--        <li data-target="#myCarousel" class="active"></li>-->

    </ol>
    <div class="carousel-inner" role="listbox">
        <img class="first-slide home-image" src="<c:url value="/resources/images/car.jpg" />" alt="First slide">
        <div class="container">
            <div class="carousel-caption">
                <h1> Dobrodosli!! </h1>
                <p>Mi imamo ono sto vi trazite.</p>
                <p>Sa jednostavnim prijavljivanjem na sistem,</p> 
                <p>mozete brzo i lako doci do zeljenog vozila</p>
            </div>
        </div>

    </div>

</div>




<%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>