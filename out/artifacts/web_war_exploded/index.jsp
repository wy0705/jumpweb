<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util"
pageEncoding="ISO-8859-1" %>
<html>
  <head>
    <title>My JSP 'forward1.jsp' starting page</title>
  </head>
  <body>
<form name=from1 method="post" action="doFrom.jsp" onsubmit="return checkInput()">
<p>Enter your system</p>
  <p>
    Name:
    <input type="text" name="username">
  </p>
  <p>
    Password:
    <input type="password" name="password">
  </p>
  <p>
    <input type="submit" name="login" value="Login">
  </p>
</form>
  </body>
<script language="javascript">
  function checkInput() {
    if (""==document.form1.username.value||""==document.form1.password.value){
      window.alert("please input name and password");
      return false;
    }
    return true;
  }
</script>
</html>