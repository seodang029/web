<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "exBean.studentVO" %>
<%@ page import = "exBean.studentDAO" %>
<html>
<head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>

</html>
<%
 request.setCharacterEncoding("UTF-8");
 studentVO item = new studentVO(); //사용자 객체 생성

 item.setNo(request.getParameter("no"));
 item.setName(request.getParameter("name"));
 studentDAO dao = new studentDAO(); //사용자 객체 생성
 dao.insertStudent(item);
%>