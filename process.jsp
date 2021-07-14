

<html>
  <head>
    <title>The title of the document</title>
    <style>
      body {
        background-color: #80ff00;
        
        
      }
    </style>
  </head>
  <body><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.user.RegisterDao"%>
<jsp:useBean id="obj" class="com.bean.User" />
<jsp:setProperty property="*" name="obj" />
<%
	int status = RegisterDao.register(obj);
	if (status > 0)
		out.print("You are successfully registered");
%>
<a href="index.jsp">Click Here to Login</a>
</body>
</html>