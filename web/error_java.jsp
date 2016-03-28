<%-- 
    Document   : error_java
    Created on : Mar 28, 2016, 1:11:55 PM
    Author     : blackwell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Titan Online Banking Application | Java Error</title>
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
            <h3>Java Error</h3>
            <p>Sorry, Java has thrown an exception.</p>
            <p>To continue, click the Back button.</p>
            
            <h4>Details</h4>
            <p>Type: {pageContext.exception["class"]}</p>
            <p>Message: {pageContext.exception.message}</p>
        </section>
    </body>
</html>
