<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>성공화면</h1>


<c:choose>
<c:when test="${empty ex }">

결제일시:     [[${info.approved_at}]]<br/>
주문번호:    [[${info.partner_order_id}]]<br/>
상품명:    [[${info.item_name}]]<br/>
상품수량:    [[${info.quantity}]]<br/>
결제금액:    [[${info.amount.total}]]<br/>
결제방법:    [[${info.payment_method_type}]]<br/>

</c:when>
<c:otherwise>

상품명 : ${ ex.category} <br>
인원수 : ${ ex.experiencePeople }<br>
결제금액 : ${ ex.price }<br>
코스 : ${ ex.experienceDivide }<br>
시간 : ${ ex.experienceTime }<br>
날짜 : ${ ex.experienceDate }<br>

</c:otherwise>
</c:choose>


</body>
</html>