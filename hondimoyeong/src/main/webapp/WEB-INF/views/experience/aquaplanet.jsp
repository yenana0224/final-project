<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
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
#form{
	
}

#aquaimg{
	width : 1200px;
	height : 631px;
	background-image : url('resources/image/aqua2.jpg');
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
	margin-top:150px;
	width:40%;
	height:50%;
	
  	border: 1px solid red;
}
#main1{
	padding-top:20px;
	float:left;
	height:100%;
	width:50%;
	background-color: white;
	
}
#main2{
	padding-top:20px;
	color:white;
	height:100%;
	background-color: #36f;
}
		
</style>
</head>
<body>
	<jsp:include page ="../common/header.jsp" />

	<div id="form">
		<div id="aquaimg">
			<div  id="mainimg">
				<div id="main1">
					<h3>운영시간 / 프로그램</h3><br>
					연중무휴 : 09:30~18:00 <br>
					매표마감 : 17:00 <br>
					- 매표 마감시간은 17:00이오며,<br> 입장마감 <br>
					시간은 17:30까지입니다. <br><br>
					<button class="btn btn-outline-warning" style="margin-top:5px">자세히보기</button>
				</div>
				<div id="main2">
					<h3>이용요금</h3><br>
					<h4>성인    &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;45000원</h4>
					<h4>청소년·경로 &nbsp;&nbsp;&nbsp;43000원</h4>
					<h4>어린이    &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;40000원</h4> <br>
					<button class="btn btn-outline-info" style="margin-top:15px">자세히보기</button>
				</div>
			</div> 
		</div>
	</div>
	
	
	
	<jsp:include page ="../common/footer.jsp" />

</body>
</html>