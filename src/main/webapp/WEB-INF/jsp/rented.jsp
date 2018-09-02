<%-- 
    Document   : header
    Created on : Apr 16, 2017, 1:02:15 AM
    Author     : BojanaPocuca
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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

<div class="container-wrapper" style="color: white">
    <div class="container">
        <div class="page-header">
            <h1>Stranica za pregled rezervacija</h1>

            <p class="lead">Ovo je stranica gde mozete videti informacije o rentiranim automobilima.</p>
            <a href="<spring:url value="/admin" />" class="btn btn-default">Nazad na admin panel</a>
        </div>

        <table id="example" class="display" cellspacing="0" width="100%">
            <thead> 
                <tr class="bg-info" style="background-color: orangered">
                    <th>Username</th>
                    <th>Datum kreiranja</th>
                    <th>Vreme kreiranja</th>
                    <th>Datum OD</th>
                    <th>Datum DO</th>
                </tr>
            </thead>
            <c:forEach items="${ordersList}" var="rented">
                <tr>
                    <td>${rented.username}</td>
                    <td>${rented.dateCreation}</td>
                    <td>${rented.timeCreation}</td>
                    <td>${rented.dateFrom}</td>
                    <td>${rented.dateTo}</td>
                </tr>
            </c:forEach>
        </table>

        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>