<%-- 
    Document   : header
    Created on : Apr 14, 2017, 11:44:02 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/partials/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron" style="background-color: white">
                <div class="container">
                    <h1>Hvala Vam na ukazanom poverenju!</h1>
                    <p>Vasa rezervacija je uspesno izvrsena. Automobil preuzimate u agenciji. 24h nakod pocetnog dana rezervacije, Vasa rezervacija ce biti otkazana.</p>
                    <p>Placanje se vrsi pri priuzimanju vozila, gotovinom ili kreditnom karticom. Potrebno je vratiti automobi sa istom kolicinom goriva koliko je imao kad ste ga uzeli.</p>
                    <h2>Kliknite <a href="${pageContext.request.contextPath}/product/productList/all" style="color: orangered">ovde</a> da nastavite sa pretragom</h2>
                </div>
            </div>
        </section>


        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>
