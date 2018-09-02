<%-- 
    Document   : header
    Created on : Apr 15, 2017, 6:32:15 AM
    Author     : BojanaPocuca
--%>

<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>

<div class="container-wrapper" style="color: white">
    <div class="container">
        <div class="page-header">
            <h1>Dobrodosli, admine!!</h1>

        </div>    

        <h3>
            <a href="<c:url value="/admin/productInventory" /> " style="color: orangered">Vozila</a>
        </h3>

        <p>Ovde mozete da upravljate automobilima iz baze.</p>

        <br/><br/>

        <h3>
            <a href="<c:url value="/admin/customer" />" style="color: orangered">Pregled korisnika</a>
        </h3>

        <p>Ovde mozete videti informacije o nasim korisnicima.</p><br/><br/>
        
        <h3>
            <a href="<c:url value="/admin/rented" />" style="color: orangered">Istorija rentiranja</a>
        </h3>

        <p>Ovde mozete videti detalje svih rentiranih automobila.</p><br/><br/>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            
            <h3>
                <a href="<c:url value="/j_spring_security_logout"/>" style="color: orangered">Logout</a>
            </h3>

        </c:if>

        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>
