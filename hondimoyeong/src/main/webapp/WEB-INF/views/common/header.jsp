<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼디모영</title>

    <style>

        *{
            box-sizing: border-box;
            font-family: "Noto Sans KR", sans-serif;
        }

        #header{
            width: 1200px;
            height: 260px;
            margin: 0 auto;
        }

        #header-top{
            width: 1200px;
            padding-top: 20px;
            padding-bottom: 20px;
            /* border: 1px solid red; */
        }

        #header-top-menu{
            width: 1200px;
            height: 30px;
            /* border: 1px solid saddlebrown; */
        }

        #header-top-menu a{
            width: 80px;
            text-decoration: none;
            font-size: 15px;
            font-weight: bold;
            color: black;
            float: right; /* float을 right로 설정 */
            margin-left: 10px; /* 간격 조정 */
        }

        #header-top-menu a:hover{
            color: #FF9843;
        }

        #header-middle{
            width: 1200px;
            float: left;
            position: relative;
            border-top: 1px solid lightgray;
            border-bottom: 1px solid lightgray;
        }

        #header-logo{
            width: 300px;
            height: 130px;
            /* border: 1px solid saddlebrown; */
            float: left;
        }

        #logo{
            width: 300px;
            padding-top: 20px;
        }

        #header-menu{
            width: 890px;
            height: 130px;
            float: left;
            /* border: 1px solid pink; */
            padding-top:45px
        }

        #navi{
            list-style: none;
            margin: 0;
            padding: 0;
        }

        #navi > li{
            float: left;
            width: 220px;
            text-align: center;
        }

        #navi a{
            text-decoration: none;
            color: black;
            font-weight: bold;
            font-size: 17px;
        }

        #navi a:hover{
            color: #FF9843;
        }

        #navi > li > ul{
            list-style: none;
            margin: 0;
            padding: 0;
            display: none;
            text-align: center;
        }

        #navi > li > a:hover + ul {
            display : block;
        }

        #navi > li > ul:hover {
            display: block;
        }

        #submenu{
            position: absolute;
        }

        #submenu > li {
            width: 220px;
            padding: 15px;
            height: auto;
            background-color: rgba(255, 255, 255, 0.815);
        }

    </style>
    
</head>
<body>
	<c:set var="path" value="${ pageContext.request.contextPath }" scope="session"/>

    <div id="header">
        <div id="header-top">
            <div id="header-top-menu">
                <a href="#">로그인</a>
                <a href="#">회원가입</a>
                <a href="#">고객센터</a>
            </div>
        </div>
        <div id="header-middle">
            <div id="header-logo">
            	<a href="${ path }">
                	<img src="resources/image/logo.png" id="logo">
                </a>
            </div>
            
            <div id="header-menu">
                <ul id="navi">
                    <li><a href="#">올레길</a></li>
                    <li><a href="#">혼디모영</a></li>
                    <li><a href="#">프로그램</a>
                        <ul id="submenu"  style="padding-top: 20px;">
                            <li><a href="#">귤따기 체험</a></li>
                            <li><a href="#">한라산 예약</a></li>
                            <li><a href="aqua">아쿠아리움 예약</a></li>
                        </ul>
                    </li>
                    <li><a href="#">이벤트</a></li>
                </ul>
            </div>
        </div>
    </div> <!-- header 끝 -->
    
</body>
</html>