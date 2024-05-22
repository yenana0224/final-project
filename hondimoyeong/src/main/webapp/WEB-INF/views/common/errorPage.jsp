<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.errorMsg{
		text-align:center;
	}
</style>
</head>
<body>

	<jsp:include page ="header.jsp" />
		
		<h1 id="errorMsg">${ errorMsg }</h1>

	<jsp:include page ="footer.jsp" />


</body>
</html>