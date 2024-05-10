<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <style>
        *{
            box-sizing: border-box;
            font-family: "Noto Sans KR", sans-serif;

        /* footer */
        #footer{
            width: 1200px;
            margin: 0 auto;
            padding-top: 30px;
            padding-bottom: 30px;
            padding-left: 20px;
            margin-top: 40px;
            border-top: 1px solid lightgray;
        }

        #footer-box{
            width: 1200px;
        }

        #footer-logo{
            width: 230px;
        }

        #footer-content{
            font-size: 15px;
            padding-left: 10px;
        }
    </style>
    
</head>
<body>
	<c:set var="path" value="${ pageContext.request.contextPath }" scope="session"/>

    <div id="footer">
        <div id="footer-img">
            <img src="resources/image/logo.png" alt="" id="footer-logo">
        </div>

        <div id="footer-content">
            <p>단체명 : 혼디모영   |   대표자 : 서준형   |   제주특별자치도 서귀포시 중정로 22, 2층 우)63592 <br>
                E-mail : wnsgud@hondi.mo.young   |   대표전화 : 064-762-2190   |   Fax : 064-733-2170 <br>
                사업자등록번호 : 616-82-20414 <br>
                후원계좌 : 신한 110-322-333333 / 예금주 : 서준형 <br>
                <br>
                Copyright (c) 혼디모영, All Rights Reserved. 사이트에 게재된 모든 컨텐츠의 무단 전재와 복제를 금합니다.</p>
        </div>
    </div>
</body>
</html>