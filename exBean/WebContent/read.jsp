<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import = "exBean.studentVO" %>
    <%@page import = "exBean.studentDAO" %>
    <%@page import = "java.util.8" %>
    <%
    	request.setCharacterEncoding("UTF-8");
    	studentDAO dao = new studentDAO();
    	List<StudentVO> items =new ArrayList<studentVO>();
  	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset="UTF-8">
</head>
<body>
<%
	for(int i=0; i<items.size(); i++) {
	studentVO item = (studentVO)items.get(i);
 %>
 <%=item.getNo() %>
 <%=item.getName() %> <BR>
 <% } %>
</body>
</html>