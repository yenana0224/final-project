<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>올레코스</title>
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 <style>
        
        *{
            box-sizing: border-box;
            margin: 0px;
            padding: 0px;
        }

        #innerOuter{
            width: 1200px;
            height: 1000px;
            margin: auto;
        }

        #explain > p{
            padding : 20px 0px 20px 0px;
            text-align: center;
            font-size: 23px;
            font-weight: 200;
            margin-top: 20px;
        }

        #photo{
            width: 1200px;
            height: 592px;
            background-image: url(resources/course/photo/15-23.jpg);
            position : relative;
        }

        #choose{
            width: 350px;
            height: 40px;
            font-size: 16px;
            text-align: center;
            background-color: #f9f9f98c;
            border : none;
            border-radius: 10px;
        }

        #choose-area{
            width: 1200px;
            text-align: center;
            position : absolute;
            z-index : 5;
            top : 600px
        }
        
        #enter{
        	background-color: #f9f9f98c;
        	border : none;
        	border-radius: 5px;
        	padding : 5px;
        }

    </style>
</head>

<body>

	<jsp:include page="../common/header.jsp"/>

    <div id="innerOuter">

        <div id="photo"></div>
        <div id="choose-area">
        <form action="course" method="get">
            <select id="choose" name="courseIndex">
                <c:forEach var="course" items="${ list }">
                	<option value="${course.courseIndex }">${course.courseNo}. ${course.courseName}</option>
                </c:forEach>
            </select>
            <button id="enter" type="submit">GO</button>
        </form>    
        </div>

        <div id="explain">
            <p> <span style="font-weight: 700;">올레길</span>은 제주의 해안지역을 따라 <br>
                골목길, 산길, 들길, 해안길, 오름 등을 연결하여 만든<br>
                제주의 대표적인 산책로입니다.<br>
                <br>
                27코스로 이루어져있으며 총 길이는 237km입니다.
            </p>

            <p style="font-size:16px">올레란 큰 길에서 대문까지 이어지는 좁은 골목길을 뜻하는 제주 방언을 말합니다</p>
        </div>
        
        
    </div>
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>