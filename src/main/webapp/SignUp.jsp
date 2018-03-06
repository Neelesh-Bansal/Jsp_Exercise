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
    <title>SignUp</title>
    Sign Up Page
    <style>
        h2{
            align-text: center;
            text-color: aquamarine;
        }
        form{
            border: black;
        }
    </style>
</head>
<body>
<h2>Register Here</h2>
<h2>Please Fill The Required Field For Registering On Our Website.</h2>

<form action="DB1.jsp" method="post">
    Enter Your Name: <input type="text" name="fullname">
    <br/>
    <br/>
    <br/>
    Enter Your EmailId: <input type="email" name="email">
    <br/>
    <br/>
    <br/>
    Enter Password: <input type="password" name="pass1">
    <br/>
    <br/>
    <br/>
    Confirm Your Password: <input type="password" name="pass2">
    <br/>
    <br/>
    <br/>
    <input type="submit" value="SignUp">
</form>

<h4><a href="SignIn.jsp">Already Registered</a></h4>

</body>
</html>
