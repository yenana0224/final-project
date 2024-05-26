<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼디모영 - 이벤트</title>

<style>
	/* 컨텐트 */
	#container{
	    width: 1200px;
	    margin: 0 auto;
	}
	
	.event_title{
	    width: 1200px;
	    text-align: center;
	    margin-bottom: 40px;
	}

	.event_title_a{
	    font-size: 35px;
	    font-weight: bold;
	    color: #272727;
	}
	
	.event_title_a:hover{
	    color: #FF9843;
	    text-decoration: none;
	}
	
	/* 글쓰기 버튼 */
    .cs_board_top{
        width: 1140px;
        height: 52px;
        margin: 0 auto;
        margin-bottom: 10px;
    }

    .cs_board_top_btn{
        width: 100px;
        float: right;
    }

    .cs_btn{
        width: 80px;
        height: 45px;
        border: none;
        background-color: #FF9843;
        border-radius: 20px;
        margin-left: 10px;
        color: white;
        font-size: 15px;
        font-weight: bold;
        margin-bottom: 15px;
    }
	

	.list-area{
		text-align: center;
	}

	.event{
	    border: 1px solid #e1e1e1;
	    border-radius: 20px;
	    width: 340px;
	    padding: 12px;
	    margin: 25px;
	    display: inline-block;
	}
	
	.event > img{
	    width: 280px;
	    height: 180px;
	    margin-top: 10px;
	    margin-bottom: 25px;
	    border-radius: 20px;
	}
	
	.event:hover{
		cursor: pointer;
	    opacity: 0.9;
	}
	
	.eventTitle{
	    width: 100px;
	    font-size: 17px;
	    font-weight: bold;
	    color: #272727;
	}
	
	.eventTitle:hover{
		text-decoration: none;
		color: #FF9843;
	}
	
	/* 페이징바 */
    .hdmy-board_page{
    	width: 1200px;
    }
    
     .pagination {
     	width:fit-content;
     	margin: 0 auto;
     	margin-top: 40px;
     	margin-bottom: 40px;
     }
     
     .page-item.active .page-link {
     	background-color: #FF9843 !important;
     	border: 1px solid #FF9843 !important;
     	color: #FFFFFF !important;
     	font-weight: bold;
     	border-radius: 10px;
     }
     
     .page-link {
     	color: #292929 !important;
     	font-weight: bold;
     	border-radius: 10px;
     	margin-right: 10px;
     }
     
     .page-item:last-child .page-link, .page-item:first-child .page-link {
     	border-radius: 10px !important;
     }
     
	
</style>
</head>
<body>

	<jsp:include page="../common/header.jsp"/>
	
    <div id="container">
        <div class="event_title"><a class="event_title_a" href="review">이벤트</a></div>
        
        <c:if test="${sessionScope.loginUser.status == 'A'}">
	        <div class="cs_board_top">
	            <div class="cs_board_top_btn"><button class="cs_btn" onclick="insertEvent();">작성</button></div>
	        </div>
        </c:if>

        <div class="list-area">
        	<c:forEach var="e" items="${event}">
	            <div class="event" align="center">
	                <input type="hidden" value="${e.eventNo}" />
	                <img src="${e.changeName}" class="eventImg" />
	                <p>
	                <a class="eventTitle">${e.eventTitle}</a> <a href="detail.ev">디테일</a> <br><br>
	                <label>조회수</label> : <span>0</span>
	                </p>
	            </div>
        	</c:forEach>
        </div>
        
			<div class="hdmy-board_page" id="pagination">
				<ul class="pagination">
			        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" var="p">
			            <c:choose>
			                <c:when test="${p eq pageInfo.currentPage}">
			                    <li class="page-item active"><a class="page-link" href="event?page=${p}">${p}</a></li>
			                </c:when>
			                <c:otherwise>
			                    <li class="page-item"><a class="page-link" href="event?page=${p}">${p}</a></li>
			                </c:otherwise>
			            </c:choose>
			        </c:forEach>
				</ul>
	        </div>
    </div> <!-- container-->
	
	<jsp:include page="../common/footer.jsp"/>
	
	<script>
	function insertEvent(){
		location.href = '${ path }/event/insertForm';
	}
	
	$(() => {
	    $('.event').click(function() {
	        const eventNo = $(this).find('input[type="hidden"]').val();
	        location.href = '${path}/event/' + eventNo;
	    });
	});

	
	
	</script>

</body>
</html>