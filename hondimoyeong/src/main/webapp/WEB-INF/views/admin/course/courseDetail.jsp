<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코스상세페이지</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8fb9d532bba6f497bc125efc82a1127e"></script>
    <style>

        *{
            box-sizing: border-box;
            margin: 0;
        }

        #innerOuter{
            width: 1000px;
            height: 800px;
            margin: auto;
        }

        h2{
            font-size : 30px;
            margin: 20px 0px 20px 0px;
        }

        #line{
            width: 1000px;
            height: 20px;
            background-color: #ff9843;
        }

        table{
            border : 1px solid red;
            margin: auto;
            margin-top : 20px;
        }

        .part {
            width: 150px;
            height: 50px;
            text-align: center;
            font-size: larger;
            background-color: rgba(255, 238, 216, 0.478);

        }

        .infomation{
            text-align: left;
            height: auto;
            padding: 10px;
        }

        .infomation > img {
            width: 800px;
            margin: auto;
        }

        #stamp{
            width: 120px;
        }

        .btn-area{
            text-align: center;
            margin : 30px
        }
        button{
            background-color: #ff9843;
            border : none;
            color : white;
            font-size : 20px;
            padding : 5px 15px 5px 15px;
            border-radius: 30px;
            text-align: center;
        }
    </style>

</head>
<body>
    
    <div id="innerOuter">

        <h2>관리자페이지/ 올레길</h2>
        <div id="line"></div>

        <table>
            <tr>
                <td class="part">코스번호</td>
                <td class="infomation">${course.courseNo}</td>
                <td class="part">소요시간</td>
                <td class="infomation">${course.takeTime}</td>
                <td class="part" rowspan="2">스탬프</td>
                <td rowspan="2" class="infomation">
                
                	<c:forEach var="file" items="${course.files}">
                		<c:if test="${file.fileLevel eq 1 }">
                			<img alt="스탬프" src="${file.changeName}">
                		</c:if>
                	</c:forEach>
                   
                </td>
            </tr>
            <tr>
                <td class="part">코스이름</td>
                <td colspan="3" class="infomation">${course.courseName }</td>
            </tr>
            <tr>
                <td class="part">코스설명</td>
                <td class="infomation" colspan="5">${course.content }</td>
            </tr>
            <tr>
                <td class="part">상세지도</td>
                <td class="infomation" colspan="5">
                    <c:forEach var="file" items="${course.files}">
                		<c:if test="${file.fileLevel eq 2 }">
                			<img alt="상세지도" scr="${file.changeName}">
                		</c:if>
                	</c:forEach>
                </td>
            </tr>
            
            <c:forEach var="file" items="${course.files}">
               <c:if test="${file.fileLevel eq 3 }">
               </c:if>
            </c:forEach>
                			
	            <tr>
	                <td class="part" rowspan="3">코스사진</td>
	                <td class="part"> 사진 1 </td>
	                <td class="infomation" colspan="4"> OriginalName </td>
	            </tr>
	            <tr>
	                <td class="part"> 사진 2 </td>
	                <td class="infomation" colspan="4"> OriginalName </td>
	            </tr>
	            <tr>
	                <td class="part"> 사진 3 </td>
	                <td class="infomation" colspan="4"> 첨부파일이 없습니다 </td>
	            </tr>

        </table>

        <div class="btn-area">
            <button id="update">수정하기</button>
        </div>

        <div class="btn-area">
            <button>목록으로</button>
        </div>
    </div>
    
    
    
    <script>
    	
    $(() => {
    	
    	$('#update').click(()=> {
    		location.href="update/"+${course.courseIndex};
    	})
    })
    
    </script>
    
	
	
</body>
</html>