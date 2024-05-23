<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>동행신청 내역</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
            div{
                box-sizing : border-box;
                background-color: #ffffff;
            }          
        
            #wrap{
                width: 1200px;
                height: 900px;
                margin: 0 auto;
                position: relative;  
            }


            /*마이페이지 전체 박스*/
            #content{ 
                width: 800px;
                height: 700px;
                margin: 0 auto;
                margin-top: 200px;
                border-radius: 20px;
                border : 4px solid #FF9843; 
                position: relative;
            }

           
            /*귤 아이콘*/
            .icon-Img{
                width: 130px;
                height: 150px;
                background-color: transparent;
                position: absolute; 
                top: -130px; 
                left: 2%; 
            }


            #titleBox     
            {
                width: 700px;
                height: 50px;
                margin-top: 30px;
                margin-left: 50px;
                text-align: center; 
                line-height: 50px;
                font-size: 20px;
                font-weight: bold;

            }


            .detailBox
            {
                width: 700px;
                height: 550px;
                margin-left: 50px;
            }
           
            .background-Box{
                width: 650px;
                height: 80px;
                padding-top: 8px;
                background-color: #f7d3a0;
                border-radius: 10px;
                margin-top: 15px;
                margin-left : 20px;
                
            }

            .box1{
                width: 80px;
                height: 60px;
                margin-left: 30px;
                float: left;
                background-color: #f7d3a0;
            }

            .detail{
                width: 200px;
                height: 60px;
                float: left;
                background-color: #f7d3a0;
                margin-top: 3px;
            }

            h5{
                padding-top: 5px;
                font-size: 16px;
                font-weight: bold;
            }

            .box2 {
            	width : 400px;
                padding-top: 5px;
                font-size: 16px;
                font-weight: bold;
                background-color: #f7d3a0;
                margin-top: 1px;
                padding-left : 20px;
            }

            .box3 {
           	 	width : 400px;
                padding-top: 5px;
                font-size: 14px;
                margin: 0;
                background-color: #f7d3a0;
                padding-left : 20px;
            }
            
            .acompany-btn{
            	width : 100px;
            	height : 50px;
            	float : right;
            	margin-top : 5px;
            	margin-right : 30px;
            	border-radius : 10px;
            	text-align : center;
            	padding-top : 10px;
            	vertical-align : middle;
            }
            
            .acompany-btn:hover{
            	cursor : pointer;
            }

            .btnBox{
                width: 100px;
                height: 60px;
                float: left;
                background-color: #f7d3a0;
                margin-left: 40px;
                margin-top: 3px;

            }

            .btn-y{
                width: 60px;
                height: 28px;
                background-color: #FF9843;
                border: 0;
                border-radius: 10px;
                margin-bottom: 4px;
                color: #ffffff;
                font-size: 12px;
            }

            .btn-n{
                width: 60px;
                height: 28px;
                background-color: #9e9e9e;
                border: 0;
                border-radius: 10px;
                margin-bottom: 4px;
                color: #ffffff;
                font-size: 12px;
            }


            .box4 {
                width: 450px;
                height: 40px;
                padding-top: 20px;
                border-radius: 10px;
                margin-left: 20px;
                margin : auto;
                padding-left : 80px;
                margin-top : 30px;
            }


            .pagination {
                width:fit-content;
                margin: 0 auto;
            }
          
            .active {
                background-color: #FF9843 !important;
                border: 1px solid #FF9843 !important;
                color: #FFFFFF !important;
                border-radius: 10px;
            }

            
            .page-link {
            	width : 40px;
            	height : 40px;
            	float : left;
                color: #292929 !important;
                border-radius: 10px;
                margin-right: 10px;
                border: 1px solid #9e9e9e;
                text-align : center;
            }
            
            .page-item:last-child .page-link, .page-item:first-child .page-link {
                border-radius: 10px !important;
            }

    </style>    
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div id="wrap">
    
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">
			<a href="myRequest?page="> 나의 신청내역 보기 </a>
			
            <div id="titleBox">내가 쓴 동행 게시글</div>
            <div class="detailBox">
            
	            <c:forEach var="board" items="${list}">
	            	<div class="background-Box">
	            	    <div class="acompany-btn" id="${board.companionNo }">신청확인</div>
	            		<div class="box2">제목 : ${board.companionTitle} </div>
	            		<div class="box3"> ${board.courseName} | 날짜 : ${board.companionDate} | 인원 : ${board.companionNum}/${board.companionPeople }</div>
	            	</div>
	            </c:forEach>
	            
	            <div class="box4"> 
		            <c:if test="${pageInfo.currentPage gt 1}">
		            	<a class="page-link" href="companionInvite?page=${pageInfo.currentPage - 1}"> < </a>
		            </c:if>
		            <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" var="i" step="1">
		            	<c:choose>
							<c:when test="${pageInfo.currentPage ne i }">
								<a class="page-link" href="companionInvite?page=${i}"> ${i} </a>
							</c:when>    
							<c:otherwise>
								<a class="page-link active" href="companionInvite?page=${i}">${i}</a>
							</c:otherwise>        	
		            	</c:choose>
		            </c:forEach>
		            <c:if test="${not empty list && pageInfo.currentPage ne pageInfo.maxPage}">
		            	<a class="page-link" href="companionInvite?page=${pageInfo.currentPage +1 }"> > </a>
		            </c:if>	
	            </div>
            </div>
        </div>
        
        <script>
        
	        $(document).on('click', '.acompany-btn', function() {
	        	
	        	$.ajax({
	        		url : 'companions/acompany',
	        		data : {companionNo : $(this).attr('id')},
	        		success : (data) => {
	        			console.log(data);
	        		}
	        		
	        	})
	        })
	        
	        

        </script>
        
    </div>
    
    
	<jsp:include page="../common/footer.jsp"/>


</body>
</html>