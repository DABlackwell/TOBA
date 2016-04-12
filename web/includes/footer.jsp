<%-- 
    Document   : footer
    Created on : Apr 11, 2016, 9:04:23 PM
    Author     : blackwell
--%>

<%@ page import="java.util.GregorianCalendar, java.util.Calendar" %>
<footer>
<%
    GregorianCalendar currentDate = new GregorianCalendar();
    int currentYear = currentDate.get(Calendar.YEAR);
%>
<p>&copy; Copyright <%= currentYear %> Daniel Brooks</p>
</footer>
</body>
</html>