<%-- 
    Document   : password_reset
    Created on : Apr 11, 2016, 6:47:17 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="/includes/header.html" />
        <section>
            <h3>Reset password</h3>
            <p>Please enter your new password below:</p>
            
            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <form action="PasswordResetServlet" method="post">
                <label>New password:</label>
                <input type="password" name="password"
                       value="<c:out value='${user.password}'/>" required>
                <div class="submit"><input type="submit" value="Reset"><br></div>
            </form>
        </section>
<c:import url ="/includes/footer.jsp" />
