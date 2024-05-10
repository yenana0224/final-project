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
#gul{
	width : 1000px;
	height : 1000px;
	background-image : url('resources/image/gul.png');
	background-repeat : no-repeat;
	margin : auto;
	margins-top : 20px;
	boardere-radius : 20px;
	background-size : contain;
	border:1px solid blue;
}


#mainimg{
 	text-align: center;
	margin-left : 40px; ;
	margin-top:310px;
	width:20%;
	height:7%;
}

</style>
</head>
<body>

	<jsp:include page ="../common/header.jsp" />
	
	<div id="form">
		<div id="gul">
			<div  id="mainimg">
				<a class="btn btn-outline-warning" style="margin-top:15px">예매하기 하러 가기~</a>
			</div> 
		</div>
	</div>
	
	
	
	
	
	<jsp:include page ="../common/footer.jsp" />

</body>
</html>