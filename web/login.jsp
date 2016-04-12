<%-- 
    Document   : login
    Created on : Apr 11, 2016, 9:28:30 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="/includes/header.html" />
        <section>
            <h3>Login</h3>
            <form action="LoginServlet" method="post">
                <label>User Name:</label>
                <input type="text" name="userName" required><br>
                <label>Password:</label>
                <input type="password" name="password" required>
                <a class="reset" href="password_reset.jsp">Reset password</a><br>
                <div class="submit"><input type="submit" value="Submit"><br></div>
                <a href="new_customer.jsp">New customer?</a>
            </form><br>
        </section>
<c:import url ="/includes/footer.jsp" />