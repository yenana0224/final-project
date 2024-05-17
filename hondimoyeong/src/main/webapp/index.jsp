<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼디모영</title>
<style>
	#ex1 > a> img {
		width: 200px;
		height: 200px;
		display: table-cell;
		vertical-align: middle;
		text-align:center;
		margin:auto;
		border-radius: 100px;
		float:left;
	}
	#ex2 > a > img {
		width: 200px;
		height: 200px;
		display: table-cell;
		vertical-align: middle;
		text-align:center;
		margin:auto;
		border-radius: 100px;
		float:left;
	}
	#ex3 > a > img {
		width: 200px;
		height: 200px;
		display: table-cell;
		vertical-align: middle;
		text-align:center;
		margin:auto;
		border-radius: 100px;
		float:left;
		
	}
	
	#oa{
		border : 1px solid red;
		width : 1200px;
		height : auto;
		margin : auto;
		
		margin-bottom: 550px;
	}
	#ex{
		margin-top:100px;
		height:100%;
		width:51%;
		margin:auto;
	}
	
	        #ollemap{
            width: 920px;
            height: 650px;
            margin: auto;
            background-image: url(resources/course/island/기본.PNG);
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
           padding: 20px;
        }

        #btn-area{
            margin: auto;
            margin-bottom : 40px;
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



	<jsp:include page ="WEB-INF/views/common/header.jsp" />

	<div id="oa">
		<div id="ex">
		    <div id='ex1'>
		   		<a href="hanlasan"><img src="resources/image/han.jpg"></a>
		    </div>
		    <div id='ex2'>
		    	<a href="aqua"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaKUXqbAlMJq-P1psHmMJ1KoEuZSfoDNSyQ&s"></a>
		    </div>
		    <div id='ex3'>
		   		<a href="tangerine"><img src="resources/image/tangerine.jpg"/></a>
		    </div>
		 </div>
	</div>
	
	<div id="ollemap">
        	
    </div>
        
    <div id="whole-course">
        <h3>코스 한 눈에 보기</h3>
        <div id="btn-area">
        	<c:forEach var="item" items="${list}">
        		<c:if test="${ item.courseName ne '온평-표선(B)' && item.courseName ne '한림-고내(B)' }">
        			<button class="course-btn" id="${item.courseName}" onclick="content(this);">${item.courseNo}</button>
        		</c:if>
        	</c:forEach>
        </div>
    </div>
    
    <script>
    	$.ajax({
    		url : 'mainCourse',
    		success : (data) => {

    			let btn = '';
    			
    			for(let i in data){
    				
         			btn += '<button class="course-btn" id="' + data[i].courseName
				 		   + '" onclick="content(this);">'
				 		   + data[i].courseNo + '</button>';
    			}
    			
    			$('#btn-area').html(btn);	  
    		}
    		
    	});
    	

    	function content(button){
    		const url = "resources/course/island/"+ (button.id) +".PNG"
    		$('#ollemap').html('<img src="'+ url + '">');
    	}

    </script>
	
	
	
	<div id="temporary">
		<a href="admin/course">관리자페이지-코스</a>
	</div>
	
	
	<jsp:include page ="WEB-INF/views/common/footer.jsp" />

</body>
</html>