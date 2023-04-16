
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Example_5_2(接收参数的界面)</title>
</head>
<body>
  <h2>接收参数，并显示结果界面</h2>
  <%
      String str=request.getParameter("userName");
  %>
  <div style="color: #c720ba ">欢迎使用<%=str%></div>
</body>
</html>
