<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세</title>
<style>
	/* content */    
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


    #container{
        width: 1200px;
        height: auto;
        margin: 0 auto;
    }

    .detail_box{
        width: 1200px;
        height: 120px;
        margin: 0 auto;
        margin-top: 30px;
        border-bottom: 1px solid lightgray;
        /* border: 1px solid red; */
    }

    .detail_title{
        width: 1200px;
        font-size: 25px;
        font-weight: bold;
        padding-top: 20px;
        padding-bottom: 10px;
        border-top: 1px solid lightgray;
        /* border: 1px solid pink; */
    }

    .detail_info{
        width: 1200px;
        /* border: 1px solid red; */
    }

    .detail_info1{
        width: 230px;
        float: left;
    }

    .detail_content{
        width: 1200px;
        margin: 0 auto;
        font-size: 15px;
        border-bottom: 1px solid lightgray;
    }
    
    .detail_content_p{
        padding-top: 20px;
        padding-bottom: 20px;
    }

    /* 목록 수정 삭제 버튼 */
    .detail_btn_box{
        margin-top: 30px;
    }

    .hdmy_detail_btn {
        display: inline-block;
        width: 80px;
        height: 50px;
        padding: 8px;
        font-size: 20px;
        font-weight: bold;
        border: none;
        border-radius: 15px;
        background-color: #FF9843;
        color: #ffffff;
        margin-right: 10px;
        cursor: pointer;
        line-height: 35px;
        text-decoration: none;
    }
    
    .hdmy_detail_btn:hover {
  		text-decoration: none;
    	color: #FFFFFF;
    }
    
</style>
</head>
<body>


<jsp:include page="../common/header.jsp"/>


    <div id="container">

        <div class="cs_title"><a class="cs_title_a">고객센터</a></div>

        <div class="cs_menu" align="center">
            <button class="cs_menu_notice" onclick="noticeList();">공지사항</button>
            <button class="cs_menu_faq">FAQ</button>
        </div>

        <div class="detail_box"> <!-- 제목, 작성자 신청버튼 전부 감싸는 div -->
            <div class="detail_title"><span>${ notice.noticeTitle }</span></div>
            <div class="detail_info">
                <div class="detail_info1"><a>${ notice.createDate } &nbsp;&nbsp;| &nbsp;&nbsp;조회수 : ${ notice.count }</a></div>
            </div>
        </div>

        <div class="detail_content">
            <p class="detail_content_p">${ notice.noticeContent }</p> 
        </div>

        <div class="detail_btn_box" align="center">
            <button class="hdmy_detail_btn" onclick="noticeList();">목록</button>
            <a class="hdmy_detail_btn" href="update.notice?noticeNo=${ requestScoppe.notice.noticeNo }">수정</a>
            <button class="hdmy_detail_btn">삭제</button>
        </div>
    </div> <!-- container 끝 -->

<jsp:include page="../common/footer.jsp"/>

<script>


	$(function(){
		$('.hdmy_detail_btn').click(function(){
			location.href='${ path }/list.notice?page=1';
		});
	})
	
	function noticeList(){
		location.href='${ path }/list.notice?page=1';
	}

	function updateNotice(){
		location.href = '${ path }/updateForm.notice?noticeNo=${notice.noticeNo}';
	}





</script>


</body>
</html>