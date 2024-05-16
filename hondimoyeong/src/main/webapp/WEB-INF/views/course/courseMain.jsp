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
            width: 1000px;
            height: 1700px;
            margin: auto;
        }

        #explain > p{
            padding : 20px 0px 20px 0px;
            text-align: center;
            font-size: 23px;
            font-weight: 200;
            margin-bottom: 20px;
        }

        #ollemap{
            width: 920px;
            height: 650px;
            margin: auto;
            background-image: url(https://d2ur7st6jjikze.cloudfront.net/content_photos/1153_original_1612833304.jpg?1612833304);
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
        }

        #ollemap > img{
            width: 100%;
            height: 100%;

        }

        #course-datail{
            width: 300px;
            height: 180px;
            background-color: rgba(255, 255, 255, 0.606);
            position: absolute;
            z-index: 10;
            right : 280px;
            top : 200px;
        }

        #whole-course{
           width: 1000px;
           margin: auto; 
           text-align: center;
           padding: 20px ;
        }

        #btn-area{
            margin: auto;
        }

        h3{
            font-size: 25px;
            margin-bottom: 20px;
        }

        .course-btn {
            margin : 10px;
            width: 100px;
            height: 40px;
            font-size: 20px;
            color : white;
            border-radius: 30px;
            background-color: #ff9843;
            border : none;
        }



    </style>
</head>

<body>

	<jsp:include page="../common/header.jsp"/>

    <div id="innerOuter">
        <div id="explain">
            <p> <span style="font-weight: 700;">올레길</span>은 제주의 해안지역을 따라 <br>
                골목길, 산길, 들길, 해안길, 오름 등을 연결하여 만든<br>
                제주의 대표적인 산책로입니다.<br>
                <br>
                27코스로 이루어져있으며 총 길이는 237km입니다.
            </p>

            <p style="font-size:16px">올레란 큰 길에서 대문까지 이어지는 좁은 골목길을 뜻하는 제주 방언을 말합니다</p>
        </div>

        <div id="ollemap">
            <img src="resources/course/island/기본.PNG" alt="제주도지도">
        </div>
        
        <div id="whole-course">
            <h3>코스 한 눈에 보기</h3>
            <div id="btn-area">
            	<c:forEach var="item" items="${list}">
            		<button class="course-btn">${item.courseNo}</button>
            	</c:forEach>
            </div>
        </div>
    </div>
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>