<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 디테일</title>

<style>
    /* content */
    #container{
        width: 1200px;
        height: auto;
        margin: 0 auto;
    }

    /* 상단 */
    .detail_top{
        width: 1200px;
        height: 100px;
        text-align: center;
        font-size: 35px;
        font-weight: bold;
        color: #292929;
    }

    .detail_top:hover{
        color: #FF9843;
        text-decoration: none;
    }

    .detail_course{
        width: 1200px;
        height: 100px;
        text-align: center;
        line-height: 95px;
        font-size: 25px;
        font-weight: bold;
        background-color: #ececec;
        margin-bottom: 30px;
        border-radius: 30px;
    }

    .detail_courseImg {
        width: 1200px;
        margin: 0 auto;
        display: flex;
        justify-content: center;
        border: 4px solid #FF9843;
        border-radius: 30px;
    }

    .courseImg {
        width: 950px;
        display: block;
    }

    /* 제목 + 별점 상단 부분 */
    .detail_box{
        width: 1200px;
        height: 120px;
        margin: 0 auto;
        margin-top: 30px;
        border-bottom: 1px solid lightgray;
        /* border: 1px solid red; */
    }

    .detail_box_left{
        width: 950px;
        height: 100px;
        float: left;
        /* border: 1px solid green; */
    }

    .detail_box_right{
        width: 250px;
        height: 100px;
        float: left;
        padding-top: 10px;
        font-size: 30px;
        text-align: center;
        line-height: 65px;
        /* border: 1px solid black; */
    }

    .detail_title{
        width: 1000px;
        font-size: 25px;
        font-weight: bold;
        padding-top: 10px;
        padding-bottom: 10px;
        /* border: 1px solid pink; */
    }

    .detail_info{
        width: 1000px;
        /* border: 1px solid red; */
    }

    .detail_info1{
        width: 230px;
        float: left;
    }

    .detail_btn{
        width: 180px;
        height: 72px;
        border: none;
        background-color: #FF9843;
        border-radius: 10px;
        margin-left: 10px;
        color: white;
        font-size: 20px;
        font-weight: bold;
    }

    /* 본문 */
    .detail_content{
        width: 1200px;
        margin: 0 auto;
        font-size: 15px;
        /* border-bottom: 1px solid lightgray; */
    }

    .detail_content_p{
        padding-top: 20px;
        padding-bottom: 20px;
    }

    .content_img{
        width: 1200px;
        height: auto;
        margin-bottom: 20px;
    }

    /* 댓글 */
    .detail_reply_title{
        width: 1200px;
        margin: 0 auto;
        font-size: 17px;
        font-weight: bold;
        padding-top: 20px;
        padding-bottom: 20px;
        border-bottom: 1px solid lightgray;
        background-color: #ececec;
        padding-left: 20px;
        margin-bottom: 10px;
    }

    .detail_reply{
        width: 1200px;
        height: auto;
        margin: 0 auto;
    }

    .detail_reply_content{
        width: 1200px;
        height: auto;
        margin: 0 auto;
        overflow: auto;
        border-bottom: 1px solid lightgray;
    }

    .detail_reply_left{
        width: 1100px;
        padding-top: 15px;
        padding-bottom: 10px;
        float: left;
    }

    .detail_reply_write{
        font-size: 17px;
        font-weight: bold;
        margin-bottom: 10px;
    }

    .detail_reply_p{
        font-size: 15px;

    }

    .detail_reply_right{
        width: 100px;
        float: left;
    }

    .detail_reply_data{
        width: 90px;
        padding-top: 15px;
        font-weight: bold;
    }

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
    }

</style>
</head>
<body>

<jsp:include page="../common/header.jsp"/>

    <div id="container">
        <div class="detail_top">
            <a class="detail_top">리뷰 게시판</a>
        </div>

        <div class="detail_course">${review.courseName}</div>

        <div class="detail_courseImg">
            <img src="https://contents.ollepass.org/static/homepage/trail/img/road/road_01_imgmap_pc_2024.jpg" alt="" class="courseImg">
        </div>
        
        <div class="detail_box"> <!-- 제목, 작성자 신청버튼 전부 감싸는 div -->
            <div class="detail_box_left"> <!-- 제목, 작성자 감싸는 div -->
                <div class="detail_title"><span>${review.reviewTitle}</span></div>
                <div class="detail_info">
                    <div class="detail_info1"><a>작성자 : ${review.userName} &nbsp;&nbsp;| &nbsp;&nbsp;조회수 : ${review.count}</a></div>
                </div>
            </div>

            <div class="detail_box_right"> <!-- 버튼 감싸는 div -->
                <div class="detail_right_btn">${review.reviewStar}</div>
            </div>
        </div>

        <div class="detail_content">
            <p class="detail_content_p">${review.reviewContent}</p>
            <img src="/resources/image/aqua.jpg" class="content_img">
            <img src="/resources/image/aqua.jpg" class="content_img">
        </div>

        <div class="detail_reply_title">
            <div class="detail_reply_top"><a>댓글 [2]</a></div>
        </div>
        <div class="detail_reply">
            <div class="detail_reply_content"> <!-- 댓글 내용 박스 -->
                <div class="detail_reply_left"> <!-- 왼쪽(작성자, 내용) -->
                    <div class="detail_reply_write"><a>🍊 빈정박</a></div>
                    <div class="detail_reply_p"><p>저요! 혹시 점심 메뉴는 뭔가요?</p></div>
                </div>
                <div class="detail_reply_right">
                    <div class="detail_reply_data"><a>2024.05.11</a></div>
                </div>
            </div>

            <div class="detail_reply_content"> <!-- 댓글 내용 박스 -->
                <div class="detail_reply_left"> <!-- 왼쪽(작성자, 내용) -->
                    <div class="detail_reply_write"><a>🍊 희주봉</a></div>
                    <div class="detail_reply_p"><p>뭐 드시고 싶으세요? 맞춰드립니다~!</p></div>
                </div>
                <div class="detail_reply_right">
                    <div class="detail_reply_data"><a>2024.05.11</a></div>
                </div>
            </div>

            <div class="detail_reply_content"> <!-- 댓글 내용 박스 -->
                <div class="detail_reply_left"> <!-- 왼쪽(작성자, 내용) -->
                    <div class="detail_reply_write"><a>🍊 나유김</a></div>
                    <div class="detail_reply_p"><p>저도 일정 맞는데 같이 가고싶어요! 신청했습니다!</p></div>
                </div>
                <div class="detail_reply_right">
                    <div class="detail_reply_data"><a>2024.05.11</a></div>
                </div>
            </div>
        </div>

        <div class="detail_btn_box" align="center">
            <div class="hdmy_detail_btn">목록</div>
            <div class="hdmy_detail_btn">수정</div>
            <div class="hdmy_detail_btn">삭제</div>
        </div>
        
    </div>

<jsp:include page="../common/footer.jsp"/>

</body>
</html>