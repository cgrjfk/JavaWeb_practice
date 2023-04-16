
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="index.jsp" method="post">
    <label for="name">Name:</label>
    <input type="text" id="name" name="name"><br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password"><br>

    <label>Gender:</label>
    <input type="radio" name="gender" value="male"> Male

    <input type="checkbox" name="hobbies[]" value="reading"> Reading
    <input type="checkbox" name="hobbies[]" value="music"> Music
    <input type="checkbox" name="hobbies[]" value="sports"> Sports<br>

    <label for="country">Country:</label>
    <select id="country" name="country">
        <option value="usa">USA</option>
        <option value="canada">Canada</option>
        <option value="uk">UK</option>
    </select><br>

    <label for="message">Message:</label>
    <textarea id="message" name="message"></textarea><br>

    <input type="submit" value="Submit" name="submit">
</form>

</body>
</html>


-------------------------------
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Form Processing</title>
</head>
<body>

<%
  // 获取表单数据
  String name = request.getParameter("name");
  String password = request.getParameter("password");
  String gender = request.getParameter("gender");
  String[] hobbies = request.getParameterValues("hobbies");
  String country = request.getParameter("country");
  String message = request.getParameter("message");

  // 输出处理后的数据
%>
<h1>Welcome, <%= name %>!</h1>
<p>Your password is: <%= password %></p>
<p>You are a <%= gender %>.</p>
<p>Your hobbies are:</p>
<ul>
  <%
    if (hobbies != null) {
      for (String hobby : hobbies) {
        out.println("<li>" + hobby + "</li>");
      }
    } else {
      out.println("<li>No hobbies selected.</li>");
    }
  %>
</ul>
<p>Your country is: <%= country %></p>
<p>Your message is:</p>
<blockquote><%= message %></blockquote>

</body>
</html>
