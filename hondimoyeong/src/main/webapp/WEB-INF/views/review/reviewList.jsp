<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼디모영 리뷰</title>

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

    .review_content{
        width: 1200px;
        margin: 0 auto;
    }

    .review_page{
        width: 1200px;
        margin: 0 auto;
    }

    .hdmy-board_page{
        width: 1200px;
        margin: 0 auto;
    }

    .btn-outline-secondary{
        width: 40px;
        height: 40px;
        border: none;
        background-color: #ffebdb;
        color: #272727;
        border-radius: 10px;
    }

    .btn-outline-secondary:hover{
        background-color: #FF9843;
    }

    .table-hover tbody {
        border-bottom: 1px solid lightgray;
    }

    .table-hover tbody tr:hover {
        background-color: #f5f5f5;
    }

    .table-hover thead th{
        padding-top: 20px;
        padding-bottom: 20px;
    }

    .table-hover tbody tr{
        line-height: 30px;
    }

    .hdmy-table_small{
        width: 80px;
        text-align: center;
    }

    .hdmy-table_mid{
        width: 130px;
        text-align: center;
    }
    
    .commentCount{
    	color: #FF9843;
    	font-weight: bold;
    }
    
    .commentCount:hover{
    	text-decoration: none;
    	color: #FF9843;
    	font-weight: bold;
    }
    
    .star{
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
            <form action="search.rvw" class="review_searchForm">
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

        <div class="review_content">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th class="hdmy-table_small">번호</th>
                        <th class="hdmy-table_small">코스</th>
                        <th>제목</th>
                        <th class="hdmy-table_mid">별점</th>
                        <th class="hdmy-table_small">작성자</th>
                        <th class="hdmy-table_small">날짜</th>
                        <th class="hdmy-table_small">사진</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="r" items="${review}">
                    	<tr class="list">
	                        <td class="hdmy-table_small">${r.reviewNo}</td>
	                        <td class="hdmy-table_small">${r.courseName}</td>
					        <c:choose>
					            <c:when test="${r.commentCount == 0}">
					                <td>${r.reviewTitle}</td>
					            </c:when>
					            <c:otherwise>
					                <td>${r.reviewTitle} <a class="commentCount">[${r.commentCount}]</a></td>
					            </c:otherwise>
					        </c:choose>
	                        <td class="hdmy-table_mid star" data-rating="${r.reviewStar}"></td>
	                        <td class="hdmy-table_small">${r.userName}</td>
	                        <td class="hdmy-table_small">${r.createDate}</td>
	                        <c:choose>
	                        	<c:when test="${empty r.changeName}">
	                       			<td class="hdmy-table_small"> </td>
	                        	</c:when>
	                        	<c:otherwise>
	                       			<td class="hdmy-table_small"> 🍊 </td>
	                        	</c:otherwise>
	                        </c:choose>
	                        
                    	</tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <div class="hdmy-board_page" id="pagination">
			<ul class="pagination">
				<c:choose>
					<c:when test="${ not empty condition }">
						<c:forEach begin="${searchPage.startPage}" end="${searchPage.endPage}" var="p">
		                    <c:choose>
		                        <c:when test="${p eq searchPage.currentPage}">
		                            <li class="page-item active"><a class="page-link" href="search.rvw?page=${p}&condition=${condition}&keyword=${keyword}">${p}</a></li>
		                        </c:when>
		                        <c:otherwise>
		                            <li class="page-item"><a class="page-link" href="search.rvw?page=${p}&condition=${condition}&keyword=${keyword}">${p}</a></li>
		                        </c:otherwise>
		                    </c:choose>
		            	</c:forEach>
				    </c:when>
				    <c:otherwise>
				        <c:forEach begin="${pageInfo.startPage}" end="${pageInfo.endPage}" var="p">
				            <c:choose>
				                <c:when test="${p eq pageInfo.currentPage}">
				                    <li class="page-item active"><a class="page-link" href="review?page=${p}">${p}</a></li>
				                </c:when>
				                <c:otherwise>
				                    <li class="page-item"><a class="page-link" href="review?page=${p}">${p}</a></li>
				                </c:otherwise>
				            </c:choose>
				        </c:forEach>
				    </c:otherwise>
				</c:choose>
			</ul>
        </div>

    </div> <!-- container -->

	<jsp:include page="../common/footer.jsp"/>

	<script>
		function insertReview(){
			location.href = '${ path }/insertForm.rvw';
		}
		// 별점
	    document.addEventListener("DOMContentLoaded", function () {
	        var starContainers = document.querySelectorAll('.star');
	        starContainers.forEach(function (container) {
	            var rating = container.getAttribute('data-rating');
	            var starsHTML = '';
	            for (var i = 0; i < rating; i++) {
	                starsHTML += '★';
	            }
	            container.innerHTML = starsHTML;
	        });
	    });
	    
		// 상세보기
		$(function(){
			$('.table-hover > tbody > tr').click(function(){
				location.href = 'detail.rvw?reviewNo='+$(this).children().eq(0).text();
			});
		});
	</script>

</body>
</html>