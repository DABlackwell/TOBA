<%-- 
    Document   : new_customer
    Created on : Mar 28, 2016, 6:31:53 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Titan Online Banking Application | New Customer</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        <meta charset="UTF-8">
    </head>
    <body>
        <header>
            <img src="images/toba_logo.png"
                 alt="TOBA: Titan Online Banking Application" width="361">
        <nav>
            <ul class="nav">
              <li><a href="index.html">Home</a></li>
              <li><a href="login.html">Account Login</a></li>
              <li><a href="account_activity.html">Account Activity</a></li>
              <li><a href="transaction.html">Post a transaction</a></li>
            </ul>
        </nav>
        </header>
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
            </form>
        </section>
    </body>
</html>
