<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>

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

        <div class="list-area">
            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/aqua.jpg" class="eventImg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 이벤트다람쥐~</a> <a href="detail.ev">디테일</a> <br><br>
                <label>조회수</label> : <span>0</span>
                </p>
            </div>

            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/감귤체험.jpg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 이벤트지렁이~</a> <br><br>
                <label>조회수</label> : <span>0</span>
                </p>
            </div>

            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/tangerine.jpg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 이벤트다용가리~</a> <br><br>
                <label>조회수</label> : <span>0</span>
                </p>
            </div>

            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/han2.jpg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 오케이승철~</a> <br><br>
                <label>조회수</label> : <span>0</span>
                </p>
            </div>

            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/han.jpg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 희주봉주희~~</a> <br><br>
                <label>조회수</label> : <span>0</span>
                </p>
            </div>

            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/aqua.jpg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 한라봉주희~</a> <br><br>
                <label>조회수</label> : <span>0</span>
                </p>
            </div>
        </div>
        
                <div class="hdmy-board_page" id="pagination">
			<ul class="pagination">
                <li class="page-item active"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
			</ul>
        </div>
    </div> <!-- container-->
	
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>