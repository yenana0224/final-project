<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판</title>

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
            /* border: 1px solid red; */
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
            /* border: 1px solid red; */
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
    
        .review_table_small{
            width: 90px;
            text-align: center;
            /* border: 1px solid red; */
        }
    
        .review_table_mid{
            width: 110px;
            text-align: center;
        }
    </style>
    
</head>
<body>

<jsp:include page="../common/header.jsp"/>

    <div id="container">
        <div class="review_title"><a class="review_title_a">리뷰 게시판</a></div>

        <div class="review_search">
            <form action="#" class="review_searchForm">
                <select name="search" class="review_search_select">
                    <option value="title">제목</option>
                    <option value="course">코스</option>
                </select>
                <input type="text" class="review_search_input" placeholder="검색어를 입력해 주세요.">
                <button type="submit" class="review_search_btn">검색</button>
            </form>
        </div>

        <div class="cs_board_top">
            <div class="cs_board_top_btn"><button class="cs_btn">글쓰기</button></div>
        </div>

        <div class="review_content">
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th class="review_table_small">번호</th>
                        <th class="review_table_small">코스</th>
                        <th class="review_table_mid">별점</th>
                        <th>제목</th>
                        <th class="review_table_small">작성자</th>
                        <th class="review_table_small">날짜</th>
                        <th class="review_table_small">사진</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분 <a href="reviewDetail">디테일</a>
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                    <tr class="list">
                        <td class="review_table_small">1</td>
                        <td class="review_table_small">1코스</td>
                        <td class="review_table_mid">⭐⭐⭐⭐⭐</td>
                        <td>봉보로봉 동행하실 분
                        <td class="review_table_small">희주봉</td>
                        <td class="review_table_small">24/05/20</td>
                        <td class="review_table_small">📂</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <div class="hdmy-board_page">
            <div class="paging-area" align="center" style="margin:30px 0px;">
                <button class="btn btn-outline-secondary"> < </button>
                <button class="btn btn-outline-secondary">1</button>
                <button class="btn btn-outline-secondary">2</button>
                <button class="btn btn-outline-secondary">3</button>
                <button class="btn btn-outline-secondary">4</button>
                <button class="btn btn-outline-secondary"> > </button>
            </div>
        </div>

    </div> <!-- container -->

<jsp:include page="../common/footer.jsp"/>

</body>
</html>