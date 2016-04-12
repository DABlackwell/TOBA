<%-- 
    Document   : account_activity
    Created on : Apr 11, 2016, 8:55:48 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="/includes/header.html" />
        <section>
            <h3>Account Activity</h3>
            <c:choose>
                <c:when test="${user != null}">
                    <p>Welcome, ${user.firstName} ${user.lastName}!</p>
                </c:when>
                <c:otherwise>
                    <p>Not Logged In</p>
                </c:otherwise>
            </c:choose>
        </section>
<c:import url ="/includes/footer.jsp" />
