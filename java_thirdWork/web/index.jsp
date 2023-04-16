<%@ page contentType="text/html;charset=UTF-8"  import="java.util.Date" language="java" %>
<html>
<head>
  <title>index</title>
</head>
<body>
<%
  String userName=request.getParameter("userName");
  String password=request.getParameter("password");
  request.setAttribute("userName",userName);
  request.setAttribute("password",password);
%>
<jsp:forward page="show.jsp">
  <jsp:param name="userName" value="<%=userName%>" />
  <jsp:param name="password" value="<%=password%>" />
</jsp:forward>
</body>
</html>
