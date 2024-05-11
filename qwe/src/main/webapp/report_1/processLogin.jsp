<%@ page contentType="text/html; charset=utf-8" %>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<html>
<head>

</head>

<body>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");

	String r_id = request.getParameter("id");
	String r_password = request.getParameter("password");
	String r_name = request.getParameter("name");
	session.setAttribute("sessionId", r_id);
	
	


%>
<jsp:useBean id="u1" class="report_data.id_data" scope="application"/>
<jsp:getProperty name="u1" property="id"/>
<jsp:getProperty name="u1" property="pw"/>

<%
    if (r_id.equals(u1.getId()) && r_password.equals(u1.getPw())) {
    	
%>

<jsp:forward page="main.jsp"></jsp:forward>
<% ;
} else {
%>
	<script>
	alert("아이디 또는 비밀번호 불일치!");
	history.back();
	</script>
<%	
}%>
<jsp:include page="footer.jsp" />
</body>
</html>