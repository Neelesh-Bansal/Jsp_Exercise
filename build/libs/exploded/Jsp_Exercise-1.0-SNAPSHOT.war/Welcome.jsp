<%--
  Created by IntelliJ IDEA.
  User: neelesh
  Date: 6/3/18
  Time: 3:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h3 style="align-content: right"><a href="logout.jsp">LOGOUT</a></h3>
<%
    HttpSession session1=request.getSession(false);
    if(session1.getAttribute("un")!=null)
    {
        out.println("welcome" + session1.getAttribute("un"));
    }
    else {
        response.sendRedirect("SignIn.jsp");
    }
%>


</body>
</html>
