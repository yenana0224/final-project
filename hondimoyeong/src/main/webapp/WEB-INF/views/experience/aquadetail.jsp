<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#businesstime{
		border:1px solid red;
		text-align: center;
		width:100%;
		height:100%;
		margins:auto;
	}
	#business1{
		border:1px solid red;
		width:1200px;
		height:30%;
		margin:auto;
	}
	#business2{
		border:1px solid red;
		width:1200px;
		height:50%;
		margin:auto;
	}
	
	#business3{
		border:1px solid red;
		width:1200px;
		height:20%;
		margin:auto;
	}
	table{
		width:100%;
		height:100%;
		margin:auto;
	}
	table, th, td{
		border:1px solid #222;
		border-collapse : collapse;
	}
	th{
		background-color: #d4d4d4;
	}
	#playtime{
		background-image:url('https://www.aquaplanet.co.kr/images/common/use_price_blue_sea.jpg');
		color:white;
		padding-top:20px;
		padding-bottom:30px;
	}
	
</style>
</head>
<body>

	<jsp:include page ="../common/header.jsp" />

	<div id="businesstime">
		<div id="business1">
			<h1>이용시간·요금안내</h1>
			<div id="playtime">
				<h2>운영시간</h2>
				연중 무휴
				<h2>09:30 - 18:00</h2>
				※ 매표 마감시간은 17:00이며, 입장 마감시간은17:30이오니 이용에 참고 부탁드립니다.
			</div>
		</div>
		<div id="business2">
			<div class="container">
			  <table  class="table table-bordered">
			    <thead>
			      <tr>
			        <th style="width:50%">구분</th>
			        <th>운영시간</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>매표소</td>
			        <td>09:30 - 17:00</td>
			      <tr>
			        <td>고래상어 빵(메인수조)</td>
			        <td>10:00 - 17:00</td>
			      </tr>
			       <tr>
			        <td>푸드 코트</td>
			        <td>11:00 - 17:30</td>
			      <tr>
			      <tr>
			        <td>카페1호점(메인수조 옆)</td>
			        <td>09:30 - 17:30</td>
			      </tr>
			      <tr>
			        <td>오션아레나 매대 <br>※ 오션아레나 공연 시간에만 이용 가능</td>
			        <td>10:20 - 17:00</td>
			      </tr>
			      <tr>
			        <td>나타오비카 타르트</td>
			        <td>10:00 - 17:30</td>
			      </tr>
			      <tr>
			        <td>카페 2호점(푸드코트 옆)</td>
			        <td>09:30 - 17:40</td>
			      </tr>
			      <tr>
			        <td>캐리커쳐</td>
			        <td>11:00 - 17:40</td>
			      </tr>
			      <tr>
			        <td>쿨샤벳 아이스크림</td>
			        <td>10:30 - 17:40</td>
			      </tr>
			      <tr>
			        <td>세포인사이드제주 전시관 아트샵(2F)	</td>
			        <td>09:30 - 17:40</td>
			      </tr>
			      <tr>
			        <td>아쿠아리움 기프트샵(B1)	</td>
			        <td>09:00 - 17:40</td>
			      </tr>
			      <tr>
			        <td>던킨 도너츠	</td>
			        <td>10:00 - 17:40</td>
			      </tr>
			    </tbody>
			  </table>
			  <br>
			</div>
		</div>
		<div id="business3">
			<h2>이용요금</h2>
			<b>개인요금</b>
			 <table  class="table table-bordered">
			    <thead>
			      <tr>
			        <th>권종</th>
			        <th style="width:50%">구분</th>
			        <th>이용요금</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td rowspan="5">매표소</td>
			        <td>대인(2005년 ~ 1960년생)</td>
			        <td>45000원</td>
			      <tr>
			        <td>청소년(2006년 ~ 2011년생)</td>
			        <td>43000원</td>
			      </tr>
			      <tr>
			        <td>소인(36개월 ~ 2012년생)</td>
			        <td>40000원</td>
			      </tr>
			      <tr>
			        <td>경로(1959년생 이하)</td>
			        <td>43000원</td>
			      </tr>
			    </tbody>
			</table>
			<br>
			<b>연간이용권</b>
			<table>
				<thead>
			      <tr>
			        <th style="width:50%">연간이용권 상품</th>
			        <th>요금</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>연간이용권 AQ권<br>아쿠아리움(수족관)</td>
			        <td>120,000원</td>
			    </tbody>
			</table>
		</div>
	</div>
	
	<jsp:include page ="../common/footer.jsp" />

</body>
</html>