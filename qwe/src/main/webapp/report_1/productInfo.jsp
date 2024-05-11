<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="ex8.Product"%>
<jsp:useBean id="productDAO" class="ex8.ProductRepository" scope="application" />
<html>
<head>
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상담 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상담 정보</h1>
		</div>
	</div>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><b>식별 코드 : </b><span> <%=product.getProductId()%></span>
				<p><b>상세내용</b> : <%=product.getDescription()%>

				<p><a href="#" class="btn btn-info"> 정보 수정 &raquo;</a> <a	href="./productInfoList.jsp" class="btn btn-secondary"> 상담 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
