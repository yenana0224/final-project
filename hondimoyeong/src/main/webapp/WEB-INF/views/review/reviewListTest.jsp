<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트</title>

<style>
    /* content */
    #container{
        width: 1200px;
        height: auto;
        margin: 0 auto;
    }
	
    .review_title{
        width: 1200px;
        text-align: center;
        margin-bottom: 40px;
    }

    .review_title_a{
        font-size: 35px;
        font-weight: bold;
        color: #272727;
    }

    .review_title_a:hover{
        color: #FF9843;
        text-decoration: none;
    }
    
        .review_search{
        width: 1200px;
        margin-bottom: 30px;
    }

    .review_searchForm{
        width: 620px;
        margin: 0 auto;
    }

    .review_search_select{
        width: 100px;
        height: 45px;
        text-align: center;
        border: 1px solid #afafaf;
        margin: 0 auto;
        font-size: 15px;
        border-radius: 20px;
    }

    .review_search_input{
        width: 400px;
        height: 45px;
        border: 1px solid #afafaf;
        margin-left: 10px;
        padding-left: 10px;
        border-radius: 20px;
        font-size: 15px;
    }

    .review_search_btn{
        width: 80px;
        height: 45px;
        border: none;
        background-color: #FF9843;
        border-radius: 20px;
        margin-left: 10px;
        color: white;
        font-size: 15px;
        font-weight: bold;
    }

    /* 글쓰기 버튼 */
    .cs_board_top{
        width: 1200px;
        height: 42px;
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
	    border: 1px solid lightgray;
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
        <div class="review_title"><a class="review_title_a" href="review">리뷰 게시판</a></div>

        <div class="review_search">
            <form action="search.test" class="review_searchForm">
                <select name="condition" class="review_search_select">
                    <option value="title">제목</option>
                    <option value="course">코스</option>
                </select>
                <input type="text" name="keyword" value="${requestScope.keyword}" class="review_search_input" placeholder="검색어를 입력해 주세요.">
                <button type="submit" class="review_search_btn">검색</button>
            </form>
        </div>
        <c:if test="${ not empty condition }">
        	<script>
        		$(function(){
        			$('.review_search option[value=${condition}]').attr('selected', true);
        		})
        	</script>
        </c:if>

        <div class="cs_board_top">
        <c:if test="${!empty loginUser}">
            <div class="cs_board_top_btn"><button class="cs_btn" onclick="insertReview();">글쓰기</button></div>
        </c:if>
        </div>
        
        
        <div class="list-area">
        
        	<c:forEach var="r" items="${review}">
            	<div class="event" align="center">
	                <input type="hidden" value="" />
	                <img src="resources/image/aqua.jpg" class="eventImg" />
	                <p>
	                <a class="eventTitle">어쩌고 저쩌고 리뷰다람쥐~</a> <a href="detail.ev">디테일</a> <br><br>
	                <label>조회수</label> : <span>0</span>
	                </p>
	            </div>
        	</c:forEach>

            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/감귤체험.jpg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 리뷰지렁이~</a> <br><br>
                <label>조회수</label> : <span>0</span>
                </p>
            </div>

            <div class="event" align="center">
                <input type="hidden" value="" />
                <img src="resources/image/tangerine.jpg" />
                <p>
                <a class="eventTitle">어쩌고 저쩌고 리뷰다용가리~</a> <br><br>
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