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
	width:1200px;
	height:600px;
	margin:auto;
	border:1px solid red;
}
#a{
	padding-top:20px;
	padding-left:20px;
	width:50%;
	height:92%;
	border:1px solid red;
  	display: inline-block;
}
#b{
	width:47%;
	height:100%;
	display: inline-block;
	
}

#imgg{
	width:100%;
	height:100%;

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

#aquaprice{
	font-size:20px;
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
			
			
			
			<form method="post" action="kakaoPay">
			
				<input type="date" name="experienceDate" id="Date"><!-- 1 -->
				
				<select id="changeaqua1">
					<option value="종일(09:30 - 18:00)">종일(09:30 - 18:00)</option>
				</select>
				
				<input type="hidden" name="experienceTime" value="종일(09:30 - 18:00)"><!-- 2 -->
				
				
				<select id="changeaqua2">
					<option id="op1" value="제주입장권_대소공통">제주입장권_대소공통</option>
				</select>
				
				<input type="hidden" name="experienceDivide" value="제주입장권_대소공통"><!-- 3 -->
				
				
				<div id="aquaprice" >
				
					<!-- 빼기 버튼 -->
					<button type="button" id="sub" class="btn btn-outline-danger">-</button>
					
					<span id="span1" style="width:120px">${ price }</span>원
					<input type="hidden" name="price" id="price" value="36000"><!-- 4 -->
					
					<!-- 더하기 버튼 -->
					<button type="button" id="add" class="btn btn-outline-primary">+</button>&nbsp;
					
					<span id="person1" >1</span>명
					<input type="hidden" id="person1-val" name="people" value="1"><!-- 5 -->
					
				</div>
				
				
				<br><br>
				
				<input type="hidden" id="category" name="category" value="아쿠아리움"><!-- 6 -->
				
				<button type="submit"  id="btn1" class="btn btn-outline-info">예매하기</button>
				</form>
					
		</div>
		<div id="b">
			<img id="imgg" src='resources/image/유미의세포들.jpg' />
		</div>
		
	</div>
	
	
	
	
	
	<script>
	var now_utc = Date.now() // 지금 날짜를 밀리초로
	// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
	var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
	// new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
	var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
	document.getElementById("Date").setAttribute("min", today);
	
	let num = 1;
	let price = $('#aquaprice').children('#span1').text();
	
	
	$(function(){
		$('#btn1').click(() => {
			
			
			var dateString = $("#Date").val();
			var timeString = $('#changeaqua1').children('option:selected').text();
			var divideString = $('#changeaqua2').children('option:selected').text();
			var price = $('#aquaprice').children('#span1').text()
			var person = $('#aquaprice').children('#person1').text()
			var category = $('#category').val();
			/*
			console.log(dateString);
			console.log(timeString);
			console.log(divideString);
			console.log(price);
			console.log(person);
			console.log(category);
			*/	
			console.log( $('input[name=experienceDate]').val() );
			console.log( $('input[name=experienceTime]').val() );
			console.log( $('input[name=experienceDivide]').val() );
			console.log( $('input[name=people]').val() );
			console.log( $('input[name=price]').val() );
			console.log( $('input[name=category]').val() );
		
			
			});
		})
	
	
		
		
		
		$('#sub').click(function(){
			//var num = $('#aquaprice').children('#span1').text();
			var person = $('#aquaprice').children('#person1').text();
			newPrice = Number(price) - 36000;
			newperson = Number(person) - 1;
			document.getElementById("span1").textContent = newPrice;
			document.getElementById("person1").textContent = newperson
			
			
			num = $('#aquaprice').children('#person1').text();
			$('#aquaprice').children('#person1').text(num);
			
			$('#person1-val').val(Number(num));
			console.log($('#person1-val').val());
			
			
			price = $('#aquaprice').children('#span1').text()
			$('#aquaprice').children('#span1').text(price)
			
			$('#price').val(Number(price));
			
			
			console.log($('#price').val())
			
			 if (newPrice <= 36000 ) {
			        newPrice = 36000;
			        document.getElementById("person1").textContent = 1;
			    }

			    // 새로운 값을 HTML 요소에 업데이트
			    $('#aquaprice').children('#span1').text(newPrice);
			    $('#aquaprice').children('#person1').text(newPerson);

			    // 숨겨진 입력 필드 업데이트
			    $('#person1-val').val(newPerson);
			    $('#price').val(newPrice);
			
			
			
						
		});
		
		$('#add').click(function(){
			var person = $('#aquaprice').children('#person1').text();
			newPrice = 36000 + Number(price);
			newperson = Number(person) + 1;
		    document.getElementById("span1").textContent = newPrice;
		    document.getElementById("person1").textContent = newperson
	
			// num = $('#aquaprice').children('#span1').text();
			num = $('#aquaprice').children('#person1').text();
			$('#aquaprice').children('#person1').text(num);
			
			$('#person1-val').val(Number(num));
			//console.log($('#person1-val').val());
			
			
			price = $('#aquaprice').children('#span1').text()
			$('#aquaprice').children('#span1').text(price)
			
			$('#price').val(Number(price));
			
			
			//console.log($('#price').val())
			
			
			
		});
		
	
		
		
	
	
	
	
	
	
	</script>

	<jsp:include page ="../common/footer.jsp" />

</body>
</html>