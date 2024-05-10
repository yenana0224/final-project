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
    
<style>
#reserve{
	widht:1200px;
	height:600px;
	border:1px solid red;
}
#a{
	padding-top:20px;
	padding-left:20px;
	width:1200px;
	height:100%;
	margin:auto;
	border:1px solid red;
	
}
#b{
	height:100px;
}

.discount{
    right: 0;
    bottom: 0;
    text-align: center;
    width: 60px;
    height: 60px;
    line-height: 20px;
    border-radius: 10px;
    font-size: 18px;
    font-weight: 900;
    color: #fff;
    background-color: #FF6600
}

</style>
    
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






	

	
	<div id="reserve">
		<div id="a">
			<h1>제주입장권</h1>
			<b>아쿠아리움 + 오션아레나 공연 + 유미의 세포들 특별전 &nbsp;&nbsp;</b><span class="discount">18%</span><br><br>
			
			
			
				<input type="date" id="Date">
				<select id="changeaqua">
					<option value="종일(09:30 - 18:00)">종일(09:30 - 18:00)</option>
				</select>
				
				<button id="btn1" class="btn btn-outline-info">확인</button>
		</div>
	</div>
	
	
	
	
		<script>
	var now_utc = Date.now() // 지금 날짜를 밀리초로
	// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
	var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
	// new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
	var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
	document.getElementById("Date").setAttribute("min", today);
	
	$(function(){
		$('#btn1').click(function() {
			var dateString = $("#Date").val();
			var timeString = $('#changeaqua').children('option:selected').text();
			console.log(dateString)
			console.log(timeString);
		})
	});
	</script>

	<jsp:include page ="../common/footer.jsp" />

</body>
</html>