<%-- 
    Document   : header
    Created on : Apr 15, 2017, 5:42:15 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>

<script>
    $(document).ready(function () {
        $('#example').DataTable({
            scrollY: '50vh',
            scrollCollapse: true,
            paging: false
        });
    });
</script>

<div class="container-wrapper">

    <table id="example" class="display" cellspacing="0" width="80%">
        <tr>
            <th>Opcije</th>
            <th>Automobil</th>
            <th>Model</th>
            <th>Gorivo</th>
            <th>Cena jednog dana</th>
            <th>Od datuma</th>
            <th>Do datuma</th>
            <th>Total</th>
        </tr>
        <c:set var="s" value="0"></c:set>
        <c:forEach var="item" items="${sessionScope.cart}" varStatus="i">
            <c:set var="s" value="${s + item.product.productPrice * item.qunatity}"></c:set>
                <tr>
                    <td><a href="${pageContext.request.contextPath}/customer/cart/delete/${i.index}"><span class="glyphicon glyphicon-remove" style="color: red"></span></a></td>
                <td>${item.product.productName}</td>
                <td>${item.product.productDescription}</td>
                <td>${item.product.productFuel}</td>
                <td>${item.product.productPrice} RSD</td>
                <td>2018-08-11</td>
                <td>2018-08-15</td>
                <td>${item.product.productPrice * item.qunatity} RSD </td>
            </tr>
        </c:forEach>
        <tr><td colspan="7" align="right"><b>Suma</b></td>
            <td>${s} RSD</td>
        </tr>
    </table>

    <a href="${pageContext.request.contextPath}/product/productList/all" class="btn btn-primary" style="background-color:orangered">Nastavi sa pretragom</a>

    <c:if test="${not empty error}"><div class="alert-box error"><span>Error: </span>${error}</div></c:if>
    <a href="${pageContext.request.contextPath}/customer/cart/checkout"< class="btn btn-success pull-right" style="background-color: orangered"></span>Rentiraj</a>
</section>



<%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>