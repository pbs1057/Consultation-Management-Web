<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String sessionId = (String) session.getAttribute("sessionId");
%> 
<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><script src="../assets/js/color-modes.js"></script>
      <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
        }

      
    </style>
    <script>
function service() {
	String signIn =request.getParameter("id")
    if (signIn === "") {
        alert("로그인이 필요한 서비스입니다.");
        location.href="${cpath}./login.jsp";
    } else {
        location.href="${cpath}./productInfoList.jsp";
    }
}
</script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>Headers · Bootstrap v5.3</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/headers/">

    

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@docsearch/css@3">
<link href="footers.css" rel="stylesheet">
<link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">


<nav class="navbar" style="background-color: #e3f2fd;">
	<div class="container">
	<h3>상담관리</h3>
		<div>
			<ul class="nav nav-pills">
				<c:choose>
					<c:when test="${empty sessionId}">
						<li class="nav-item"><a class="nav-link active" href="<c:url value="./login.jsp"/>">로그인 </a></li>
					</c:when>
					<c:otherwise>
						<li style="padding-top: 7px; color: black">[<%=sessionId%>님]</li>	
						<li class="nav-item"><a class="nav-link" href="<c:url value="./processLogout.jsp"/>">로그아웃</a></li>		
					</c:otherwise>
				</c:choose>
				<li class="nav-item"><a class="nav-link" href="<c:url value="./productInfoList.jsp"/>">상담목록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="./addProduct.jsp"/>">상담등록</a></li>
				<li class="nav-item"><a class="nav-link" href="<c:url value="./main.jsp"/>">Home</a></li>
			</ul>
		</div>
	</div>
</nav>
<div class="b-example-divider"></div>



