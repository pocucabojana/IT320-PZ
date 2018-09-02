<%-- 
    Document   : header
    Created on : Apr 15, 2017, 12:11:12 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>

<div class="container-wrapper" style="color: black">
    <div class="container">
        <section>
            <div class="jumbotron" style="background-color: white">
                <div class="container">
                    <h2>Uspesno ste se registrovali!</h2>
                </div>
            </div>
        </section>

        <li><a href="<c:url value="/product/productList/all" />" style="color: orangered">Vozila</a></li>

        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>