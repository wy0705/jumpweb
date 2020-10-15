<%--
  Created by IntelliJ IDEA.
  User: wy
  Date: 2020/10/15
  Time: 下午5:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page  language="java" import="java.util.*" pageEncoding="ISO-8859-1" %>
<%@ page import="com.User" %>
<html>
<head>
    <title>doFrom.jsp page</title>
</head>
<body>


<%--不创建JavaBean----User类。在doForm.jsp页面中用getParameter()来获取客户
在form.jsp表单中填写的值，最后输出相关信息。--%>
<%--The thrid method--%>
<%="The output of thrid method"%><br>
<%
    String name=request.getParameter("username");
    String password=request.getParameter("password");
    out.println("Name:"+name+"<br>");
    out.println("password:"+password+"<br>");
%>
Name:<%=request.getParameter("username")%><br>
Password:<%=request.getParameter("password")%><br><br><br>

<%--在doForm.jsp页面中用<jsp:useBean>动作标识实例化User类对象，再使
    用<jsp:setProperty>动作标识来把客户在form.jsp表单中填写的值赋给对象，
        最后用<jsp:getProperty>在页面输出结果。--%>
<%--The frist method--%>
<%="The output of frist method"%>
<jsp:useBean id="user" class="com.User" scope="request"></jsp:useBean>
<jsp:setProperty name="user" property="*"/>
Name:<jsp:getProperty name="user" property="username"/>
Password:<jsp:getProperty name="user" property="password"/><br><br><br>



<%--在doForm.jsp页面中采用Java以jsp脚本代码(scriptlet)方式实例化User类对象，
用setAttribute()函数把对象写入request或session中，再使用<jsp:setProperty>
    动作标识来把客户在form.jsp表单中填写的值赋给对象，最后用jsp表达式的方式把对象
    的信息输出到页面中。--%>
<%--The second method--%>
<%="The output of second method"%>
<%
    User userInfo=new User();
    request.setAttribute("user2",userInfo);
%>
<jsp:setProperty name="user2" property="*"/>
Name:<%=userInfo.getUsername()%><br>
Password:<%=userInfo.getPassword()%>
</body>
</html>
