<%-- 
    Document   : header
    Created on : Apr 15, 2017, 3:22:20 AM
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
    <div class="container">
        <section>
            <div class="jumbotron" style="background-color: white">
                <div class="container">
                    <h1>O nama</h1>
                    <p>Mi smo prva online Rent a Car aplikacija preko koje lako i efikasno mozete naci odgovarajuce vozilo!</p>
                </div>
            </div>
        </section>

        <%@ include file="/WEB-INF/jsp/partials/footer.jsp" %>