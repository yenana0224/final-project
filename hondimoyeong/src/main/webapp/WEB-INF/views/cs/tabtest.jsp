<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

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

<!-- 탭 버튼 영역 -->
<div class="cs_menu">
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

<script>
//탭 버튼과 탭 내용 부분들을 querySelectorAll을 사용해 변수에 담는다.
const tabItem = document.querySelectorAll(".cs_menu_tap");
const tabContent = document.querySelectorAll(".tab_content");

// 탭 버튼들을 forEach 문을 통해 한번씩 순회한다.
// 이때 index도 같이 가져온다.
tabItem.forEach((item, index) => {
  // 탭 버튼에 클릭 이벤트를 준다.
  item.addEventListener("click", (e) => {
    // 탭 버튼들을 forEach 문을 통해 한번씩 순회한다.
    tabItem.forEach((item) => {
      // 탭 버튼들의 active 클래스를 제거한다.
      item.classList.remove("active");
    });
    // 클릭한 index의 탭 버튼에 active 클래스를 추가한다.
    tabItem[index].classList.add("active");
    
    // 탭 버튼의 id값을 string으로 가져온다.
    const tabItemId = String(item.id);
    // 탭 내용 부분들을 forEach 문을 통해 한번씩 순회한다.
    tabContent.forEach((item, index) => {
      // 탭 내용 부분들 전부 active 클래스를 제거한다.
      item.classList.remove("active");

      // 탭 내용의 id값을 string으로 가져온다.
      const tabContentId = String(item.id);
      // 만약 탭 버튼의 id 값과 탭 내용의 id값이 같다면,
      // 해당 탭 내용에 active 클래스를 추가한다.
      if(tabContentId === tabItemId) {
        tabContent[index].classList.add("active");
      }
    });
  });
});	
</script>
</body>
</html>