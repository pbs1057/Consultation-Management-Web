<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="ex8.Product"%>
<jsp:useBean id="productDAO" class="ex8.ProductRepository" scope="application" />

<% 
	request.setCharacterEncoding("UTF-8");

	String Thema = request.getParameter("Thema");
	String D_name = request.getParameter("D_name");
	String description = request.getParameter("description");
	String job = request.getParameter("job");
	String condition = request.getParameter("condition");




	Product newProduct = new Product();
	newProduct.setProductId(Thema);
	newProduct.setPname(D_name);
	newProduct.setDescription(description);
	newProduct.setCategory(job);

	

	productDAO.addProduct(newProduct);

	response.sendRedirect("productInfoList.jsp");
%>
