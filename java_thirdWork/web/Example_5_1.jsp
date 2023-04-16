
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Example_5_1(传参界面）</title>
</head>
<body>
     <h4>传输一个参数AK47</h4>
     <hr>
     <jsp:include page="Example_5_2.jsp">
         <jsp:param name="userName" value="Ak47"/>
     </jsp:include>
</body>
</html>
