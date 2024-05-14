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

    /* 고객센터 메뉴 */
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
    }

    /* 검색 */
    .cs_search{
        width: 1200px;
        margin-top: 40px;
        margin-bottom: 40px;
        /* border: 1px solid red; */
    }

    .cs_searchForm{
        width: 620px;
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
        /* border: 1px solid red; */
    }

    .cs_table_mid{
        width: 700px;
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
</style>
</head>
<body>

<jsp:include page="../common/header.jsp"/>



    <div id="container">
        <div class="cs_title"><a class="cs_title_a">고객센터</a></div>

        <div class="cs_menu" align="center">
            <button class="cs_menu_notice">공지사항</button>
            <button class="cs_menu_faq">FAQ</button>
        </div>


        <div class="cs_board"> <!-- 공지사항 게시판 -->
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
                    <c:forEach var="notice" items="${ notice }">
                        <tr class="noticeList">
                            <td class="cs_table_small">${ notice.noticeNo }</td>
                            <td class="cs_table_mid">${ notice.noticeTitle }</td>
                            <td class="cs_table_small">${ notice.count }</td>
                            <td class="cs_table_small">${ notice.createDate }</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>         
            
            <div class="hdmy-board_page"> <!-- 페이징바 -->
               	<ul class="pagination">
               	
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
				</ul>
            </div>
        </div>

        <div class="cs_faq" style="display: none;"> <!-- FAQ 게시판 -->
            <div class="cs_faq_box">
                <div class="cs_faq_q">
                    <div class="faq_q_icon">Q</div>
                    <div class="faq_q_content">완주증은 어떻게 얻을 수 있나요?</div>
                    <div class="faq_icon">+</div>
                </div>

                <div class="cs_faq_a">
                    <div class="faq_a_icon">A</div>
                    <div class="faq_a_content">27개 코스, 437km의 제주올레 길을 완주한 여행자들이 받을 수 있는 완주증은 제주올레 패스포트를 구매하여 각 코스의 시작/중간/종점 스탬프를 찍은 후 서귀포에 위치한 제주올레 여행자센터(중정로 22)를 방문하면 받을 수 있습니다. 걷는 기간은 크게 중요하지 않으니 천천히 놀멍 쉬멍 간세다리가 되어 제주도를 여행하시는 것을 권장 드립니다.
                        ※ 437km 전 코스 완주증 발급 비용 5,000원 별도</div>
                </div>
            </div>

            <div class="cs_faq_box">
                <div class="cs_faq_q">
                    <div class="faq_q_icon">Q</div>
                    <div class="faq_q_content">완주증은 어떻게 얻을 수 있나요?</div>
                    <div class="faq_icon">+</div>
                </div>

                <div class="cs_faq_a">
                    <div class="faq_a_icon">A</div>
                    <div class="faq_a_content">27개 코스, 437km의 제주올레 길을 완주한 여행자들이 받을 수 있는 완주증은 제주올레 패스포트를 구매하여 각 코스의 시작/중간/종점 스탬프를 찍은 후 서귀포에 위치한 제주올레 여행자센터(중정로 22)를 방문하면 받을 수 있습니다. 걷는 기간은 크게 중요하지 않으니 천천히 놀멍 쉬멍 간세다리가 되어 제주도를 여행하시는 것을 권장 드립니다.
                        ※ 437km 전 코스 완주증 발급 비용 5,000원 별도</div>
                </div>
            </div>

            <div class="cs_faq_box">
                <div class="cs_faq_q">
                    <div class="faq_q_icon">Q</div>
                    <div class="faq_q_content">완주증은 어떻게 얻을 수 있나요?</div>
                    <div class="faq_icon">+</div>
                </div>

                <div class="cs_faq_a">
                    <div class="faq_a_icon">A</div>
                    <div class="faq_a_content">27개 코스, 437km의 제주올레 길을 완주한 여행자들이 받을 수 있는 완주증은 제주올레 패스포트를 구매하여 각 코스의 시작/중간/종점 스탬프를 찍은 후 서귀포에 위치한 제주올레 여행자센터(중정로 22)를 방문하면 받을 수 있습니다. 걷는 기간은 크게 중요하지 않으니 천천히 놀멍 쉬멍 간세다리가 되어 제주도를 여행하시는 것을 권장 드립니다.
                        ※ 437km 전 코스 완주증 발급 비용 5,000원 별도</div>
                </div>
            </div>

            <div class="cs_faq_box">
                <div class="cs_faq_q">
                    <div class="faq_q_icon">Q</div>
                    <div class="faq_q_content">완주증은 어떻게 얻을 수 있나요?</div>
                    <div class="faq_icon">+</div>
                </div>

                <div class="cs_faq_a">
                    <div class="faq_a_icon">A</div>
                    <div class="faq_a_content">27개 코스, 437km의 제주올레 길을 완주한 여행자들이 받을 수 있는 완주증은 제주올레 패스포트를 구매하여 각 코스의 시작/중간/종점 스탬프를 찍은 후 서귀포에 위치한 제주올레 여행자센터(중정로 22)를 방문하면 받을 수 있습니다. 걷는 기간은 크게 중요하지 않으니 천천히 놀멍 쉬멍 간세다리가 되어 제주도를 여행하시는 것을 권장 드립니다.
                        ※ 437km 전 코스 완주증 발급 비용 5,000원 별도</div>
                </div>
            </div>

        </div>
    </div> <!-- container 끝 -->

<jsp:include page="../common/footer.jsp"/>

    <script>
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

        $(() => {
            $('.cs_menu_notice').click(() => {
                $('.cs_board').show();
                $('.cs_faq').hide();
                $('.cs_menu_faq').css({'background-color' : '#ececec', 'color' : '#272727'});
                $('.cs_menu_notice').css({'background-color' : '#FF9843', 'color' : '#ffffff'});
            })

            $('.cs_menu_faq').click(() => {
                $('.cs_faq').show();
                $('.cs_board').hide();
                $('.cs_menu_faq').css({'background-color' : '#FF9843', 'color' : '#ffffff'});
                $('.cs_menu_notice').css({'background-color' : '#ececec', 'color' : '#272727'});
            });
        });
        
        
    	$(function(){
    		$('.table-hover > tbody > tr').click(function(){
    			location.href = 'detail.notice?noticeNo='+$(this).children().eq(0).text();
    		});
    	})
    	
    	function insertNotice(){
			location.href = '${ path }/enrollForm.notice';
    	}
    	
    	

    </script>

</body>
</html>