
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Show</title>
</head>
<body>
    <%
        String userName=request.getParameter("userName");
        String password=request.getParameter("password");
    %>
    <%
        out.println(userName);
    %>
    <br>
    <%
        out.println(password);
    %>
</body>
</html>
