<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼디모영</title>
<style>

	#innerOuter{
		width : 1000px;
		height : 1300px;
		margin : auto;
		margin-bottom: 50px;
	}
	
	#ex{
		width : 800px;
		height : 250px;
		margin : auto;
	}
	
	.reservation {
		width : 250px;
		height : 250px;
		float : left;
		margin-right : 15px;
	}
	
	.reservation:hover {
		cursor : pointer;
	}

	.reservation > img {
		width: 200px;
		height: 200px;
		display: table-cell;
		margin:auto;
		border-radius: 100px;
	}

	#jeju-island{
		width:1000px;
		height:800px;
		margin : auto;
	
	}

     #ollemap{
        width: 920px;
        height: 650px;
        margin: auto;
        background-image: url(resources/course/island/기본.png);
        background-size: cover;
        background-repeat: no-repeat;
        position: relative;
    }

    #ollemap > img{
        width: 100%;
        height: 100%;

    }

    #course-datail{
        width: 380px;
        height: 180px;
        background-color: rgba(255, 255, 255, 0.606);
        position: absolute;
        z-index: 10;
        right : 280px;
        top : 230px;
    }
    
    h4, h5 {
    	padding : 5px;
    	text-align : center;
    	font-size : smaller;
    }

    #whole-course{
       width: 1000px;
       margin: auto; 
       margin : 40px 0px 40px 0px;
       text-align: center;
       padding: 20px;
    }

    #btn-area{
    	width : 900px;
        margin: auto;
        margin-bottom : 40px;
    }

    h3{
        font-size: 25px;
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
	
	<div id="innerOuter">
	
		<div id="ex">
		    <div class="reservation">
		   		<img src="resources/image/han.jpg" onclick="location.href='hanlasan'">
		    </div>
		    <div class="reservation">
		    	<img onclick="location.href='aqua'"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTbaKUXqbAlMJq-P1psHmMJ1KoEuZSfoDNSyQ&s">
		    </div>
		    <div class="reservation">
		   		<img onclick="location.href='tangerine'"src="resources/image/tangerine.jpg"/>
		    </div>
		 </div>
		 
		<div id ="jeju-island">
			<div id="ollemap"></div>
			<div id="content-area"></div>
		        
		    <div id="whole-course">
		        <h3>코스 한 눈에 보기</h3>
		        <div id="btn-area">
		        	
		        </div>
		    </div>
		</div>
		
	</div>


    <script>
    	$.ajax({
    		url : 'mainCourse',
    		success : (data) => {

    			let btn = '';
    			
    			for(let i in data){
    				//console.log(data[i].courseName);
    				if(data[i].courseName === '온평-표선(B)' || data[i].courseName === '한림-고내(B)'){
    					continue;
    				}
    				
    				btn += '<button class="course-btn" id="' + data[i].courseIndex
			 		   + '" onclick="content(this);">'
			 		   + data[i].courseNo + '</button>';    				   
    			}
    			
    			$('#btn-area').html(btn);	  
    		}
    		
    	});
    	
    	function content(button){
    		
    		$.ajax({
    			url : 'selectCourse',
    			data : {courseIndex : (button.id)},
    			success : (data) => {
    				let content = '';
    				
    	    		const url = "resources/course/island/"+ (data.courseIndex) +".PNG"

    	    		content += '<div id="course-datail">'
    	    				 + '<h4>' + data.courseNo + '</h4>'
    						 + '<h5>' + data.startEnd + '</h5>'
    						 + '<h5>' + data.takeTime + '</h5>'
    						 + '<h5>' + data.distance + '</h5>'
    						 + '</div>'
    				
	    			
    	    		$('#ollemap').html(content + '<img src="'+ url + '">');		 
    			}

    		})

    	}

    </script>

	<div id="temporary">
		<a href="admin/course">관리자페이지-코스</a>
	</div>
	
	
	<jsp:include page ="WEB-INF/views/common/footer.jsp" />

</body>
</html>