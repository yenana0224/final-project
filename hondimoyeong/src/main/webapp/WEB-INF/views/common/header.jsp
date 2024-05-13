<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼디모영</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <title>인덱스</title>
    
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">

	<style>
        *{
            box-sizing: border-box;
            font-family: "Noto Sans KR", sans-serif;
        }
        /* header */
        .header{
            width: 1200px;
            height: 260px;
            margin: 0 auto;
        }
    
        .header_top{
            width: 1200px;
            padding-top: 20px;
            padding-bottom: 20px;
            /* border: 1px solid red; */
        }
    
        .header_top_menu{
            width: 1200px;
            height: 30px;
            /* border: 1px solid saddlebrown; */
        }
    
        .header_top_menu a{
            width: 80px;
            text-decoration: none;
            font-size: 15px;
            font-weight: bold;
            color: black;
            float: right; /* float을 right로 설정 */
            margin-left: 10px; /* 간격 조정 */
        }
    
        .header_top_menu a:hover{
            color: #FF9843;
        }
    
        .header_mid{
            width: 1200px;
            float: left;
            position: relative;
            border-top: 1px solid lightgray;
            border-bottom: 1px solid lightgray;
        }
    
        .header_logo{
            width: 300px;
            height: 130px;
            /* border: 1px solid saddlebrown; */
            float: left;
        }
    
        .logo{
            width: 300px;
            padding-top: 20px;
        }
    
        .header_menu{
            width: 890px;
            height: 130px;
            float: left;
            /* border: 1px solid pink; */
            padding-top:45px
        }
    
        .navi{
            list-style: none;
            margin: 0;
            padding: 0;
            margin-left: 20px;
        }
    
        .navi > li{
            float: left;
            width: 170px;
            text-align: center;
            /* border: 1px solid red; */
        }
    
        .navi a{
            text-decoration: none;
            color: black;
            font-weight: bold;
            font-size: 17px;
        }
    
        .navi a:hover{
            color: #FF9843;
        }
    
        .navi > li > ul{
            list-style: none;
            margin: 0;
            padding: 0;
            display: none;
            text-align: center;
        }
    
        .navi > li > a:hover + ul {
            display : block;
        }
    
        .navi > li > ul:hover {
            display: block;
        }
    
        .submenu{
            position: absolute;
        }
    
        .submenu > li {
            width: 170px;
            padding: 15px;
            height: auto;
            background-color: rgba(255, 255, 255, 0.815);
        }
    
        /* footer */
        .footer{
            width: 1200px;
            margin: 0 auto;
            padding-top: 30px;
            padding-bottom: 30px;
            padding-left: 20px;
            margin-top: 40px;
            border-top: 1px solid lightgray;
        }
    
        .footer_box{
            width: 1200px;
        }
    
        .footer_logo{
            width: 230px;
            margin-bottom: 20px;
        }
    
        .footer_content{
            font-size: 15px;
            padding-left: 10px;
        }
    
        /* content */
        #container{
            width: 1200px;
            height: auto;
            margin: 0 auto;
        }
    
    </style>
</head>
<body>
	<c:set var="path" value="${ pageContext.request.contextPath }" scope="session"/>

    <div class="header">
        <div class="header_top">
            <div class="header_top_menu">
                <a href="login">로그인</a>
                <a href="insertForm">회원가입</a>
                <a href="cs">고객센터</a>
            </div>
        </div>
        <div class="header_mid">
            <div class="header_logo">
            	<a href="${ path }">
                	<img src="resources/image/logo.png" class="logo">
                </a>
            </div>
            
            <div class="header_menu">
                <ul class="navi">
                    <li><a href="#">올레길</a></li>
                    <li><a href="accompany">혼디모영</a></li>
                    <li><a href="#">프로그램</a>
                        <ul class="submenu"  style="padding-top: 20px;">
                            <li><a href="#">귤따기 체험</a></li>
                            <li><a href="#">한라산 예약</a></li>
                            <li><a href="aqua">아쿠아리움 예약</a></li>
                        </ul>
                    </li>
                    <li><a href="event">이벤트</a></li>
                    <li><a href="review">리뷰</a></li>
                </ul>
            </div>
        </div>
    </div> <!-- header 끝 -->
    
</body>
</html>