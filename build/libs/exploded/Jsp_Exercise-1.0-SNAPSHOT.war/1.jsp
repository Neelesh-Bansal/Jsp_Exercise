<%@ page import="java.util.Timer" %>
<%@ page import="java.util.Calendar" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>TimeNow</title>
</head>
<body>
<% out.write("Hello! The Time is now "+ Calendar.getInstance().getTime()); %>

</body>
</html>
