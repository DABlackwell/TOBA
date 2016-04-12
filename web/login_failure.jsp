<%-- 
    Document   : login_failure
    Created on : Apr 11, 2016, 9:30:44 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="/includes/header.html" />
        <section>
            <h3>Login Failure</h3>
            <p>The user name or password you entered were incorrect.</p>
            <a href="login.jsp">Return to login</a><br>
        </section>
<c:import url ="/includes/footer.jsp" />