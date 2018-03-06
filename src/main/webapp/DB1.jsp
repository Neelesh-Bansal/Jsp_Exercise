<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: neelesh
  Date: 6/3/18
  Time: 4:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Saving</title>
</head>
<body>
<%
    if(request.getParameter("pass1").equals(request.getParameter("pass2"))) {
        String name = request.getParameter("fullname");
        String email = request.getParameter("email");
        String pass = request.getParameter("pass1");
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        PreparedStatement preparedStatement1 = null;
        int check=0;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "root");
            preparedStatement = connection.prepareStatement("insert into user (uname,uemail,upass) values('" + name + "','" + email + "','" + pass + "')");
            preparedStatement.execute();
            out.write("User Registered Successfully");
            check=1;



        } catch (Exception ex) {
            if(check!=1){
                out.println("User already registered with same email id");
                out.println("Try Again with another Emaild");
            }
            else {
                out.write("Your data is not stored please try again" + ex.toString());
                System.out.println(ex);
            }
        }
    }
    else{
        out.write("Password Not Matched, Try Again!!");
    }

%>

<form action="SignIn.jsp">
    <input type="submit" value="SignIn Page">
</form>

</br>

<form action="SignUp.jsp">
    <input type="submit" value="SignUp Page">
</form>


</body>
</html>
