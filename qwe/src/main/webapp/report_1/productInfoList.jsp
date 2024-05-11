<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ex8.Product"%>
<jsp:useBean id="productDAO"  class="ex8.ProductRepository" scope="application"/>
<html>
<head>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>도서 정보 목록</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script>
    function addItem() {
        let todo = document.getElementById("item");
        let i = document.getElementById("temp1");
        let j = document.getElementById("temp2");
        let k = document.getElementById("temp3");
        let list = document.getElementById("todolist");
        let listitem = document.createElement("li");
        listitem.className = "d-flex list-group-item list-group-item-action list-group-item-warning";
        let xbtn = document.createElement("button");

        xbtn.className = "btn-close ms-auto";
        xbtn.onclick = function(e) {
            let pnode = e.target.parentNode;
            list.removeChild(pnode);
        }

        listitem.innerText = "날짜 :"+ k.value + "\n상담원 : " + i.value +"\n상담자 : " + j.value +"\n상담내용 : "+ todo.value + "\n 상담이 접수 중입니다.!!";
        listitem.appendChild(xbtn);
        list.appendChild(listitem);

        todo.value = "";
        todo.focus();
    }

    const form = document.querySelector('form')
    const output = document.querySelector('output')

    // 현재 브라우저의 시간대 오프셋 지정
    document.querySelector('input[name=timezone-offset]').value = new Date().getTimezoneOffset()
    // 또는, 사용자가 개인 설정에서 선택한 시간대 값 가져오기

    form.addEventListener('submit', (e) => {
      e.preventDefault()
      output.textContent = `datetime: ${form.elements['datetime'].value}\n`
      output.textContent += `timezone offset: ${form.elements['timezone-offset'].value}`
    })
    </script>
    
</head>
</head>
<body>
    <jsp:include page="menu.jsp" />

    <% 
        ArrayList<Product> listOfProducts = productDAO.getAllProducts();
    %>
   <div class="container shadow mx-auto mt-5 p-5 w-75" style="background-color: #e3f2fd;">
    <h2>상담 신청하기</h2>	<p>
  			<button class="btn btn-light" type="button" data-bs-toggle="collapse" data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
    		상담 신청 철차 도움말
  			</button>
			</p>
			
  			<div class="collapse collapse-horizontal" id="collapseWidthExample">
   			<div class="card card-body" style="width: 300px;">
     		 신청을 하면 관리자가 확인을 하고 등록하면 이메일 보내드립니다.
    		</div>
  			</div>

    
    <hr>
    	<div class="input-group mb-3">
 			<span class="input-group-text" id="basic-addon1"></span>
  			<input id =temp1 type="text" class="form-control" placeholder="상담원 이름" aria-label="Username" aria-describedby="basic-addon1">
		</div>
		<div class="input-group mb-3">
  			<input id =temp2 type="text" class="form-control" placeholder="상담자 이름 " aria-label="Recipient's" aria-describedby="basic-addon2">
  			<span class="input-group-text" id="basic-addon2"></span>
		</div>
        <label for="basic-url" class="form-label">상담 날짜</label>
		    <form>
  			<input id=temp3 name="datetime" type="datetime-local" value="2024-04-31T14:00">
  			<input name="timezone-offset" type="hidden">
			</form>
		<output></output>
		
        <div class="input-group">
            <input id="item" class="form-control" type="text" placeholder="상담 내용">
            <button type="button" class="btn btn-primary" onclick="addItem()">신청하기</button>
        </div>
        <hr>
        <ul id="todolist" class="list-group"></ul>
    </div>
    
    <div class="container shadow mx-auto mt-5 p-5 w-75" style="background-color: #e3f2fd;">
    <h2>상담일정 목록</h2>
    <hr>
        <div class="row" align="center">
            <% for (int i = 0; i < listOfProducts.size(); i++) { %>
                <% Product product = listOfProducts.get(i); %>
                <div class="col-md-4" > 	
                    <h3><%=product.getPname()%></h3>
                    <p><%=product.getCategory()%>
                    <p><a href="./productInfo.jsp?id=<%=product.getProductId()%>" class="btn btn-secondary" role="button">상담 내용 &raquo;</a></p>
                </div>
            <% } %>
        </div>
    </div>
    <jsp:include page="footer.jsp" />
</body>
</html>
