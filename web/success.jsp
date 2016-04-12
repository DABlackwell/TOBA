<%-- 
    Document   : success
    Created on : Apr 11, 2016, 5:32:16 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="/includes/header.html" />
        <section>
            <h3>Success!</h3>
            <p>Congratulations! Your account has been successfully created.</p>
            
            <p><b>Your account information:</b></p>
            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <label class="slabel">Name:</label>
            <span><c:out value="${user.firstName} ${user.lastName}" /></span><br>
            <label class="slabel">Phone:</label>
            <span><c:out value="${user.phone}" /></span><br>
            <label class="slabel">Address:</label>
            <span><c:out value="${user.address}" /></span><br>
            <label class="slabel">City, State, ZIP:</label>
            <span><c:out value="${user.city}, ${user.state} ${user.zipCode}" />
                 </span><br>
            <label class="slabel">Email:</label>
            <span><c:out value="${user.email}" /></span><br>
            <label class="slabel">User Name:</label>
            <span><c:out value="${user.userName}" /></span><br>
            <label class="slabel">Password:</label>
            <span><c:out value="${user.password}" /></span><br>
        </section>
<c:import url ="/includes/footer.jsp" />