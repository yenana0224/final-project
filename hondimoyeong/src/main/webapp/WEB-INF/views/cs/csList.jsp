<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
    /* content */
    #container{
        width: 1200px;
        height: auto;
        margin: 0 auto;
    }

    .cs_title{
        width: 1200px;
        text-align: center;
        margin-bottom: 40px;
        /* border: 1px solid red; */
    }

    .cs_title_a{
        font-size: 35px;
        font-weight: bold;
        color: #272727;
    }

    .cs_title_a:hover{
        color: #FF9843;
        text-decoration: none;
    }

    /* 고객센터 메뉴 
    .cs_menu_notice{
        width: 150px;
        height: 60px;
        border: none;
        border-radius: 20px;
        font-size: 20px;
        font-weight: bold;
        color: #ffffff;
        background-color: #FF9843;
        margin-right: 20px;
    }

    .cs_menu_faq{
        width: 150px;
        height: 60px;
        border: none;
        border-radius: 20px;
        font-size: 20px;
        font-weight: bold;
        background-color: #ececec;
    }*/
    
    

    /* 검색 */
    .cs_search{
        width: 1200px;
        margin-top: 40px;
        margin-bottom: 40px;
        /* border: 1px solid red; */
    }

    .cs_searchForm{
        width: 520px;
        margin: 0 auto;
    }

    .cs_search_select{
        width: 100px;
        height: 45px;
        text-align: center;
        border: 1px solid #afafaf;
        margin: 0 auto;
        font-size: 15px;
        border-radius: 20px;
    }

    .cs_search_input{
        width: 400px;
        height: 45px;
        border: 1px solid #afafaf;
        margin-left: 10px;
        padding-left: 10px;
        border-radius: 20px;
        font-size: 15px;
    }

    .cs_search_btn{
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
        /* border: 1px solid darkblue; */
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

    /* 게시판 테이블 */
    .cs_board_content{
        width: 1200px;
        margin: 0 auto;
    }

    .cs_board_page{
        width: 1200px;
        margin: 0 auto;
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

    .cs_table_small{
        width: 100px;
        text-align: center;
    }

    .cs_table_mid{
        width: 700px;
    }
    
    .noNotice{
    	height: 40px;
    	pointer-events: none;
    	text-align: center;
    	font-weight: bold;
    	padding: 40px 0px !important;
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
     
    /* FAQ */
    .cs_faq{
        width: 1200px;
        padding-bottom: 40px;
        border-top: 1px solid lightgray;
        margin-top: 60px;
    }

    .cs_faq_box{
        width: 1200px;
    }

    .cs_faq_q{
        width: 1200px;
        overflow: auto;
        padding: 20px 0;
        border-bottom: 1px solid lightgray;
    }

    .faq_q_icon{
        width: 50px;
        height: 50px;
        font-size: 25px;
        font-weight: bold;
        text-align: center;
        line-height: 45px;
        color: #ffffff;
        background-color: #FF9843;
        border-radius: 50px;
        float: left;
        margin-left: 30px;
        margin-right: 30px;
    }

    .faq_q_content{
        width: 1000px;
        height: auto;
        overflow: auto;
        font-size: 20px;
        font-weight: bold;
        line-height: 45px;
        float: left;
    }

    .faq_icon{
        width: 50px;
        height: auto;
        font-size: 40px;
        text-align: center;
        line-height: 45px;
        float: left;
    }

    .cs_faq_a{
        width: 1200px;
        overflow: auto;
        padding: 20px 0;
        border-bottom: 1px solid lightgray;
        display: none;
    }

    .faq_a_icon{
        width: 50px;
        height: 50px;
        font-size: 25px;
        font-weight: bold;
        text-align: center;
        line-height: 45px;
        color: #272727;
        background-color: #ececec;
        border-radius: 50px;
        float: left;
        margin-left: 30px;
        margin-right: 30px;
    }

    .faq_a_content{
        width: 1040px;
        height: auto;
        overflow: auto;
        font-size: 15px;
        line-height: 30px;
        float: left;
        /* border: 1px solid red; */
    }
    
.tab {
  display: flex;
  align-items: center;
  padding: 1rem;
}
.cs_menu_tap {
    width: 150px;
    height: 60px;
    border: none;
    border-radius: 20px;
    font-size: 20px;
    font-weight: bold;
    color: #292929;
    margin-right: 20px;
  	background-color: #ececec;
}
.cs_menu_tap.active {
  display: inline-block;
  border: 1px solid #FF9843;
  background-color: #FF9843;
  color: #fff;
}
.tab_content-wrap {
  padding: 1rem
}
.tab_content {
  display: none;
}
.tab_content.active {
  display: block;
}

</style>
</head>

<body>
<jsp:include page="../common/header.jsp"/>


    <div id="container">
        <div class="cs_title"><a class="cs_title_a">고객센터</a></div>

		<div class="cs_menu" align="center">
		  <button class="cs_menu_tap active" id="tab1">공지사항</button>
		  <button class="cs_menu_tap" id="tab2">FAQ</button>
		</div>
        
	<!-- 탭 내용 영역 -->
	<div class="tab_content-wrapper">
		<div id="tab1" class="tab_content active">
	        <div class="cs_board active"> <!-- 공지사항 게시판 -->
		        <div class="cs_search">
		            <form action="search.notice" class="cs_searchForm" method="get">
		            	<input type="hidden" name="page" value="1">
		                <input type="text" class="cs_search_input" placeholder="검색어를 입력해 주세요." name="keyword" value="${ requestScope.keyword }">
		                <button type="submit" class="cs_search_btn">검색</button>
		            </form>
		        </div>
	                <div class="cs_board_top">
	                    <div class="cs_board_top_btn"><button class="cs_btn" onclick="insertNotice();">글쓰기</button></div>
	                </div>
	            <div class="cs_board_content">
	                <table class="table table-hover">
	                    <thead>
	                        <tr>
	                            <th class="cs_table_small">번호</th>
	                            <th class="cs_table_mid">제목</th>
	                            <th class="cs_table_small">조회수</th>
	                            <th class="cs_table_small">날짜</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                    <c:choose>
	                    	<c:when test="${ empty notice }">
	                    		<td colspan="4" class="noNotice">검색 결과가 없습니다.</td>
	                    	</c:when>
	                    	<c:otherwise>
			                    <c:forEach var="notice" items="${ notice }">
			                        <tr class="noticeList">
			                            <td class="cs_table_small">${ notice.noticeNo }</td>
			                            <td class="cs_table_mid">${ notice.noticeTitle }</td>
			                            <td class="cs_table_small">${ notice.count }</td>
			                            <td class="cs_table_small">${ notice.createDate }</td>
			                        </tr>
			                    </c:forEach>
	                    	</c:otherwise>
	                    </c:choose>
	                    </tbody>
	                </table>
	            </div>         
	            
	            <div class="hdmy-board_page"> <!-- 페이징바 -->
	               	<ul class="pagination">
	     				<c:choose>
	               			<c:when test="${ empty keyword }">
	               				<c:choose>
	               					<c:when test="${ pageInfo.currentPage eq 1 }">
	               						<li class="page-item disabled"><a class="page-link"> < </a></li>
	               					</c:when>
									<c:otherwise>
							  			<li class="page-item"><a class="page-link" href="list.notice?page=${ pageInfo.currentPage - 1 }"> < </a></li>
							  		</c:otherwise>
	               				</c:choose>
	               				
	               				<c:forEach begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }" var="p">
									<c:choose>
										<c:when test="${ p eq pageInfo.currentPage }">
											<li class="page-item active test"><a class="page-link" href="list.notice?page=${ p }">${ p }</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item"><a class="page-link" href="list.notice?page=${ p }">${ p }</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								
								<c:choose>
								    <c:when test="${ pageInfo.currentPage lt pageInfo.maxPage }">
								        <li class="page-item"><a class="page-link" href="list.notice?page=${ pageInfo.currentPage + 1 }"> > </a></li>
								    </c:when>
								    <c:otherwise>
								        <li class="page-item disabled"><a class="page-link"> > </a></li>
								    </c:otherwise>
								</c:choose>
	               			</c:when>
	               			
	               			<c:otherwise>
	               			    <c:choose>
	               					<c:when test="${ pageInfo.currentPage eq 1 }">
	               						<li class="page-item disabled"><a class="page-link"> < </a></li>
	               					</c:when>
									<c:otherwise>
							  			<li class="page-item"><a class="page-link" href="search.notice?page=${ pageInfo.currentPage - 1 }&keyword=${ keyword }"> < </a></li>
							  		</c:otherwise>
	               				</c:choose>
	               				
	               				<c:forEach var="p" begin="${ pageInfo.startPage }" end="${ pageInfo.endPage }">
									<li class="page-item"><a class="page-link" href="search.notice?page=${ p }&keyword=${ keyword }">${ p }</a></li>
								</c:forEach>
								
								<c:choose>
								    <c:when test="${ pageInfo.currentPage lt pageInfo.maxPage }">
								        <li class="page-item"><a class="page-link" href="search.notice?page=${ pageInfo.currentPage + 1 }&keyword=${ keyword }"> > </a></li>
								    </c:when>
								    <c:otherwise>
								        <li class="page-item disabled"><a class="page-link"> > </a></li>
								    </c:otherwise>
								</c:choose>
	               			</c:otherwise>
	               		</c:choose>
					</ul>
	            </div>
	        </div>
		</div>
		
		<div id="tab2" class="tab_content">
	        <div class="cs_faq"> <!-- FAQ 게시판 -->
	           	<c:forEach var="faq" items="${ faqList }">
		            <div class="cs_faq_box">
			                <div class="cs_faq_q">
			                    <div class="faq_q_icon">Q</div>
			                    <div class="faq_q_content">${ faq.questionContent }</div>
			                    <div class="faq_icon">+</div>
			                </div>
		
		                <div class="cs_faq_a">
		                    <div class="faq_a_icon">A</div>
		                    <div class="faq_a_content">${ faq.answerContent }</div>
		                </div>
		            </div>
	            </c:forEach>
	        </div>
		</div>
	</div>
        
        
        
    </div> <!-- container 끝 -->

<jsp:include page="../common/footer.jsp"/>

    <script>
    
    	
    const tabItem = document.querySelectorAll(".cs_menu_tap");
    const tabContent = document.querySelectorAll(".tab_content");

    tabItem.forEach((item, index) => {
      item.addEventListener("click", (e) => {
        tabItem.forEach((item) => {
          item.classList.remove("active");
        });
        tabItem[index].classList.add("active");
        
        const tabItemId = String(item.id);
        tabContent.forEach((item, index) => {
          item.classList.remove("active");

          const tabContentId = String(item.id);
          if(tabContentId === tabItemId) {
            tabContent[index].classList.add("active");
          }
        });
      });
    });
    
	
		function insertNotice(){
			location.href = '${ path }/enrollForm.notice';
		}
		
        
    	$(function(){
    		$('.table-hover > tbody > tr').click(function(){
    			location.href = 'detail.notice?noticeNo='+$(this).children().eq(0).text();
    		});
    	});
	
		
		// FAQ + - 변경 코드
        $(() => {
            $('.cs_faq_q').click(function() {
                let clickQ = $(this).closest('.cs_faq_box');
                let clickA = clickQ.find('.cs_faq_a');
                let clickIcon = $(this).find('.faq_icon');

                $('.cs_faq_a').not(clickA).slideUp(200);
                $('.faq_icon').not(clickIcon).text('+');

                clickA.slideToggle(200, function() {
                    if ($(this).css('display') === 'none') {
                        clickIcon.text('+');
                    } else {
                        clickIcon.text('-');
                    }
                });
            });
        });
        
    	
    </script>

</body>
</html>