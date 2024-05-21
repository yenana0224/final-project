<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#all{
	width:1200px;
	height:1200px;
	margin:auto
}
#area{
	width:100%;
	height:100%;
}

th{
	width:20%;
}

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
	
</head>
<body>

	<jsp:include page ="../common/header.jsp" />
	
<div id="all">
<%--
	<form action="saleMain"></form>
	<h2>관리자페이지</h2><br>
	<h4>결제 내역</h4>
	<table id="boardList" class="table table-hover" align="center">
                <thead>
                    <tr>
                        <th>글번호</th>
                        <th>제목</th>
                        <th>작성자</th>
                    </tr>
                </thead>
                <tbody>
                
                	<c:forEach items="${ saleList }" var="board">
                		<tr>
                			<td>${ saleList.userName }</td>
                			<td>${ saleList.experienceDivide }</td>
                			<td>${ saleList.price }</td>
                		</tr>
                	</c:forEach>
                  
                </tbody>
            </table>
	 --%>
	<div id="area"></div>
	<div id="pagingArea">
               
            </div>
	
</div>

<div>

</div>


<script>
	window.onload =  function() {
		$.ajax({
			url : 'saleMain',
			success : result => {
				console.log(result);
				
				
				
				
				let resultStr = '';
				for(let i = 0; i < result.length; i++){
					//if(i>3)break;
					resultStr
					+= '<div id="form">'
						+ '<table class="table table-bordered">'
						+ '<thead>'
						+ '</thead>'
							+ '<tbody>'
								+ '<tr>'
									+ '<th>이름</th>'
									+ '<td>' + result[i].userName +'</th>'
								+ '</tr>'
								+ '<tr>'
									+ '<th>구분</th>'
									+ '<td>' + result[i].experienceDivide + '</td>'
								+ '</tr>'
								+ '<tr>'
									+ '<th>금액</th>'
									+ '<td>' + result[i].price + '</td>'
								+ '</tr>'
							+ '</tbody>'
						+ '</table>'
						+ '<div>'
				}
				$('#area').html(resultStr);
				
				$.ajax({
					url : 'salesale',
					success : data => {
						console.log(data);
						let str = '';
						str
						 	+= '<ul class="pagination">'
						 	if(data.currentPage = 1){
			    		    	str +='<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>'
						 	}
						 	else{
			    			str +='<li class="page-item">'
			        			+'<a class="page-link" href="salesale?page=' +  data.currentPage -1 + '">'
			        			+	'Previous'
			        			+'</a>'
			        		+'</li>'
						 	}
						 	for(let i= data.startPage; i<= data.endPage; i++){
						 		console.log(i)
			       				+'<li class="page-item"><a class="page-link" href="salesale?page=' + i + '">' + i + '</a></li>'
			       					
						 	}
						 	
						 	if(data.currentPage == data.endPage){
						 		str +='<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>'
						 	}
						 	else{
						 		str += '<a class="page-link" href="salesale?page='+  data.currentPage + 1+'">'
				        		+	'Next'
				        		+'</a>'
				        		+'</li>'
						 	}
						+'</ul>'
						
						$('#pagingArea').html(str);
					}
					
					
				});
				
			}
			
		});
		
		
		
		
		
		
		
		
		
		
	}
		
		
	
		
	

	


</script>


	<jsp:include page ="../common/footer.jsp" />


</body>
</html>