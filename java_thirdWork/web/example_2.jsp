<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<meta http-equiv="refresh" content="0.5">
<head>
    <title>Example_2(JSP)</title>
</head>
<body>
     <h3>按照正方形显示数据</h3>
     <%
         for(int i=0;i<10;i++){
             for(int j=0;j<10;j++){
                 out.print(j+" ");//输出信息
             }
             out.println("<br/>");//实现换行控制
         }
     %>
    <hr>
    <h3>根据不同的数据，显示不同的句子</h3>
    <%
        if(Math.random()<0.5){
            out.println("have a nice day!◕‿◕");
        }else{
            out.println("have a good night!ᕙ(• ॒ ູ•)ᕘ");
        }
    %>
    <%=new Date()%>
</body>
</html>
