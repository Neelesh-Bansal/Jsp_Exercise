<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: neelesh
  Date: 6/3/18
  Time: 4:40 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Loading</title>
</head>
<body>
<%

        String name = request.getParameter("fullname");
        String pass = request.getParameter("pass");
        Connection connection = null;
        PreparedStatement preparedStatement = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "root");
            preparedStatement = connection.prepareStatement("select * from user");

            ResultSet rs = preparedStatement.executeQuery();
            while (rs.next()) {
                if (rs.getString("uname").equals(name) && rs.getString("upass").equals(pass)) {

                        HttpSession session1=request.getSession();
                        session1.setAttribute("un",name);
                    response.sendRedirect("/Welcome.jsp");


                }
            }

        }catch (Exception ex) {
            out.write("Your data is not stored please try again"+ex.toString());
            System.out.println(ex);
        }

        out.write("Wrong Credential, Try Again!!");

%>

<form action="SignUp.jsp">
    <input type="submit" value="SignUp Page">
</form>

</body>
</html>
