<%-- 
    Document   : error_java
    Created on : Mar 28, 2016, 1:11:55 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="/includes/header.html" />
        <section>
            <h3>Java Error</h3>
            <p>Sorry, Java has thrown an exception.</p>
            <p>To continue, click the Back button.</p>
            
            <h4>Details</h4>
            <p>Type: {pageContext.exception["class"]}</p>
            <p>Message: {pageContext.exception.message}</p>
        </section>
<c:import url ="/includes/footer.jsp" />
