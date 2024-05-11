<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 등록</title>
</head>
<body>
	<jsp:include page="menu.jsp"/>	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상담 등록</h1>

		</div>
	</div>
	<div class="container">
		<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2">식별 코드</label>
				<div class="col-sm-3">
					<input type="text" name="Thema" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상담자이름</label>
				<div class="col-sm-3">
					<input type="text" name="D_name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">상담 내용 상세 정보</label>
				<div class="col-sm-5">
					<textarea name="description" cols="50" rows="2"
						class="form-control"></textarea>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2">직업</label>
				<div class="col-sm-3">
					<input type="text" name="job" class="form-control">
				</div>
			</div>

			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="등록" >
				</div>
			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
