<%--
  Created by IntelliJ IDEA.
  User: neelesh
  Date: 6/3/18
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Print Number</title>
</head>
<body>
<form action="#" method="get">
    Enter Number: <input type="number" name="num">
    <input type = "submit" value = "Submit" />
</form>
<%
    if(request.getParameter("num")!=null){
        int n=Integer.parseInt(request.getParameter("num"));

for(int i=1;i<=n;i++) {
    out.println(i);
     }
    }
%>
</body>
</html>
