<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#bg-kh{
	widht : 1000px;
	height :  450px;
	background-image : url('resources/image/aqua2.jpg');
	background-repeat : no-repeat;
	margin : auto;
	margins-top : 20px;
	boardere-radius : 20px;
	background-size : contain;
}
#mainimg{
	margin-left : 200px;
	margin-top : 150px;
	width:300px;
	height:300px;
	background-color: #f5d682;
  	border: 1px solid red;

}
		
</style>
</head>
<body>
	<jsp:include page ="../common/header.jsp" />


	<div id="bg-kh">
		<div  id="mainimg">dd</div> 
	</div>

	<jsp:include page ="../common/footer.jsp" />

</body>
</html>