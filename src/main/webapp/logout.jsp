<%--
  Created by IntelliJ IDEA.
  User: neelesh
  Date: 6/3/18
  Time: 5:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
HttpSession session1=request.getSession(false);
session1.invalidate();
response.sendRedirect("/SignIn.jsp");
%>
</body>
</html>
