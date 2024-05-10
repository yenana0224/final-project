<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- jQuery 라이브러리 -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <!-- 부트스트랩에서 제공하고 있는 스타일 -->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
   <!-- 부트스트랩에서 제공하고 있는 스크립트 -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
</head>
<body>

	<jsp:include page ="../common/header.jsp" />
	
	<%-- 
	<c:choose>
		<c:when test="${ empty sessionScope.loginuser }">
			
		</c:when>
		<c:otherwise>
		
		</c:otherwise>	
	</c:choose>
	
	
	
<body>
    <div>
        <input type="datetime-local" id="dateTimeLocal">
    </div>

    <script>
        let dateElement = document.getElementById('dateTimeLocal');
        let date = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().slice(0, -7);
        dateElement.value = date;
        dateElement.setAttribute("min", date);
    </script>
</body>--%>

<input type="date" id="Date">




	
	<script>
	var now_utc = Date.now() // 지금 날짜를 밀리초로
	// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
	var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
	// new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
	var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
	document.getElementById("Date").setAttribute("min", today);
	
	$(function(){
		$('#Date').click(function() {
			var dateString = $("#Date").val();
			console.log(dateString)
		})
	})
	
	
	</script>
	
	<div id="a">
		<select>
			<option>종일</option>
		</select>
	
	</div>


	<jsp:include page ="../common/footer.jsp" />

</body>
</html>