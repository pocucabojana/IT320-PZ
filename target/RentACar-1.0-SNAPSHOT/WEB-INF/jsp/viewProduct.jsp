<%-- 
    Document   : header
    Created on : Apr 15, 2017, 12:15:15 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>


<div class="container-wrapper" style="color: white">
    <div class="container">
        <div class="page-header">
            <h1>Automobili</h1>


            <p class="lead">Ovde se nalaze informacije o nasim vozilima: </p>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5">
                    <img src="${product.productImage}" alt="image" style="width:100%"/>
                </div>
                <div class="col-md-5">
                    <h3>${product.productName}</h3>
                    <p><strong>Proizvodjac</strong>: ${product.productManufacturer}</p>
                    <p><strong>Kategorija</strong>: ${product.productCategory}</p>
                    <p><strong>Cena(po danu)</strong>: ${product.productPrice} RSD</p>
                    <p><strong>Gorivo(pri iznajmljivanju)</strong>: ${product.productFuel} litara</p>
                    <p><strong>Model</strong>:${product.productDescription}</p>
                    <p><strong>Od </strong><input path="dateFrom" type="date" id="dateFrom" value="<c:out value="${orders.dateFrom}"/>" style="color: black"/><strong> Do </strong><input path="dateTo" type="date" id="dateTo" value="<c:out value="${orders.dateTo}"/>" style="color: black"/></p>
                    <br/>

                    <c:set var = "role" scope="page" value="${param.role}" />
                    <c:set var = "url" scope="page" value="/product/productList" />
                    <c:if test="${role='admin'}">
                        <c:set var="url" scope="page" value="/admin/productInventory" />
                    </c:if>


                    <a href="<c:url value = "${url}/all" />" class="btn btn-default">Nazad</a>
                    <a href="${pageContext.request.contextPath}/customer/cart/buy/${product.productId}" class="btn btn-warning btn-large" style="background-color: orangered"></span> Rentiraj </a>
                    


                </div>
            </div>
        </div>



        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>