<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
#hanlasanimg{
	width : 1200px;
	height : 800px;
	background-image : url('resources/image/한라산.webp');
	background-repeat : no-repeat;
	margin : auto;
	margins-top : 20px;
	boardere-radius : 20px;
	background-size : contain;
	border:1px solid blue;
}

#mainimg{
 	text-align: center;
	margin : auto;
	margin-top:200px;
	width:40%;
	height:50%;
	
  	border: 1px solid red;
}
#main1{
	padding-top:20px;
	height:65%;
	background-color: #FFE880;
	
}
#main2{
	padding-top:20px;
	height:35%;
	color:white;
	background-color: #36f;
}
	
	
	
}

</style>
</head>
<body>

	<jsp:include page ="../common/header.jsp" />
	
	
	<div id="hanlasanimg">
		<div  id="mainimg">
				<div id="main1">
					<h3>한라산</h3><br>
					<b>
					제주도에 위치한 남한에서 가장 높은산(해발 1947m)이자 대한민국의 가장 높은 국립공원이다. <br>
					국립공원 전역이 유네스코 세계유산으로 지정되었다. 금강산, 지리산과 함께 대한민국 삼신산 중 하나로 꼽힌다. <br>
					</b>
					
					<a class="btn btn-outline-primary" style="margin-top:15px" href="handetail">자세히보기</a>
					
				</div>
				<div id="main2">
					<h3>한라산 등산 예매하기</h3>
					<a class="btn btn-outline-success" style="margin-top:15px">예매하기</a>
					<br>
				</div>
			</div> 
	</div>
	


	<jsp:include page ="../common/footer.jsp" />
</body>
</html>