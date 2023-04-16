
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Date" %>
<html>
<head>
    <title>example_1</title>
</head>
<body>
     <%! int sum=0,x=10;%>
     <% while (x<=100){
       sum+=x;++x;
     }%>
     <h3>计算10-100的累加和，并显示运行的时间</h3>
     <p>10-100相加的结果为：<%=sum%></p>
     <p>程序运行的日期<%=new Date()%></p>
</body>
</html>
