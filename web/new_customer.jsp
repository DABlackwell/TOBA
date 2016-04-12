<%-- 
    Document   : new_customer
    Created on : Mar 28, 2016, 6:31:53 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:import url ="/includes/header.html" />
        <section>
            <h3>New Customer Registration</h3>
            <p><i>${message}</i></p>
            <form action="NewCustomerServlet" method="post">
                <label>First Name:</label>
                <input type="text" name="firstName" required>
                <label>Last Name:</label>
                <input type="text" name="lastName" required><br>
                <label>Phone:</label>
                <input type="text" name="phone" required>
                <label>Email:</label>
                <input type="email" name="email" size="36" required><br>
                <label>Address:</label>
                <input type="text" name="address" size="66" required><br>
                <label>City:</label>
                <input type="text" name="city" size="25" required>
                <label>State:</label>
                <input type="text" name="state" size="5" required>
                <label>ZIP Code:</label>
                <input type="text" name="zipCode" size="10" required><br>
                <div class="submit"><input type="submit" value="Submit"><br>
                </div>
            </form><br><br>
        </section>
<c:import url ="/includes/footer.jsp" />
