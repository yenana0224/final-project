<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>혼디모영 상세</title>
<style>
    /* content */
    #container{
        width: 1200px;
        height: auto;
        margin: 0 auto;
        /* border: 1px solid darkcyan; */
    }

    .hdmy_title{
        width: 1200px;
        text-align: center;
        margin-bottom: 40px;
        /* border: 1px solid red; */
    }

    .hdmy_title_a{
        font-size: 35px;
        font-weight: bold;
        color: #272727;
    }

    .hdmy_title_a:hover{
        color: #FF9843;
        text-decoration: none;
    }

    .hdmy_search{
        width: 1200px;
        margin-bottom: 30px;
        /* border: 1px solid red; */
    }

    .hdmy_searchForm{
        width: 620px;
        margin: 0 auto;
    }

    .hdmy_search_select{
        width: 100px;
        height: 45px;
        text-align: center;
        border: 1px solid #afafaf;
        margin: 0 auto;
        font-size: 15px;
        border-radius: 20px;
    }

    .hdmy_search_input{
        width: 400px;
        height: 45px;
        border: 1px solid #afafaf;
        margin-left: 10px;
        padding-left: 10px;
        border-radius: 20px;
        font-size: 15px;
    }

    .hdmy_search_btn{
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
    
    .hdmy-board_top{
        width: 1200px;
        height: 42px;
        margin: 0 auto;
        margin-bottom: 10px;
        /* border: 1px solid darkblue; */
    }

    .hdmy-board_top-align{
        width: 800px;
        height: 42px;
        float: left;
        line-height: 37px;
        color: #afafaf;
        padding-left: 10px;
    }

    .hdmy-board_top-align a{
        color: #272727;
        font-size: 15px;
        font-weight: bold;
        text-decoration: none;
    }

    .hdmy-board_top-align a:hover{
        color: #FF9843;
    }

    .hdmy-board_top-btn{
        width: 100px;
        float: right;
    }

    .hdmy-btn{
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

    .hdmy-board_content{
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
        width: 90px;
        text-align: center;
        /* border: 1px solid red; */
    }

    .hdmy-table_status{
        width: 90px;
        text-align: center;
        font-weight: bold;
    }

    .hdmy-table_mid{
        width: 110px;
        text-align: center;
    }
</style>
</head>
<body>

<jsp:include page="../common/header.jsp"/>

    <div id="container">  <!-- 전체 박스 -->
        <div class="hdmy_title"><a class="hdmy_title_a">혼디모영</a></div>

        <div class="hdmy_search">
            <form action="#" class="hdmy_searchForm">
                <select name="search" class="hdmy_search_select">
                    <option value="title">제목</option>
                    <option value="course">코스</option>
                </select>
                <input type="text" class="hdmy_search_input" placeholder="검색어를 입력해 주세요.">
                <button type="submit" class="hdmy_search_btn">검색</button>
            </form>
        </div>

        <div class="hdmy-board">
            <div class="hdmy-board_top">
                <div class="hdmy-board_top-align"><a href="#">모집중</a> | <a href="#">날짜순</a></div>
                <div class="hdmy-board_top-btn"><button class="hdmy-btn">글쓰기</button></div>
            </div>

            <div class="hdmy-board_content">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th class="hdmy-table_small">번호</th>
                            <th class="hdmy-table_mid">동행 날짜</th>
                            <th class="hdmy-table_small">코스</th>
                            <th>제목</th>
                            <th class="hdmy-table_small">작성자</th>
                            <th class="hdmy-table_small">인원</th>
                            <th class="hdmy-table_small">상태</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    	<c:forEach var="accompany" items="${ accompany }">
	                        <tr class="list">
	                            <td class="hdmy-table_small">${ accompany.accompanyNo }</td>
	                            <td class="hdmy-table_mid">24/05/19</td>
	                            <td class="hdmy-table_small">1코스</td>
	                            <td>봉보로봉 동행하실 분 <a href="accompanyDetail">디테일</a></td>
	                            <td class="hdmy-table_small">희주봉</td>
	                            <td class="hdmy-table_small">3/4</td>
	                            <td class="hdmy-table_status" style="color: #FF9843;">모집중</td>
	                        </tr>
                        </c:forEach>
                        <tr class="list">
                            <td class="hdmy-table_small">1</td>
                            <td class="hdmy-table_mid">24/05/19</td>
                            <td class="hdmy-table_small">1코스</td>
                            <td>봉보로봉 동행하실 분</td>
                            <td class="hdmy-table_small">희주봉</td>
                            <td class="hdmy-table_small">3/4</td>
                            <td class="hdmy-table_status">마감</td>
                        </tr>
                        <tr class="list">
                            <td class="hdmy-table_small">1</td>
                            <td class="hdmy-table_mid">24/05/19</td>
                            <td class="hdmy-table_small">1코스</td>
                            <td>봉보로봉 동행하실 분</td>
                            <td class="hdmy-table_small">희주봉</td>
                            <td class="hdmy-table_small">3/4</td>
                            <td class="hdmy-table_status" style="color: #FF9843;">모집중</td>
                        </tr>
                        <tr class="list">
                            <td class="hdmy-table_small">1</td>
                            <td class="hdmy-table_mid">24/05/19</td>
                            <td class="hdmy-table_small">1코스</td>
                            <td>봉보로봉 동행하실 분</td>
                            <td class="hdmy-table_small">희주봉</td>
                            <td class="hdmy-table_small">3/4</td>
                            <td class="hdmy-table_status">마감</td>
                        </tr>
                        <tr class="list">
                            <td class="hdmy-table_small">1</td>
                            <td class="hdmy-table_mid">24/05/19</td>
                            <td class="hdmy-table_small">1코스</td>
                            <td>봉보로봉 동행하실 분</td>
                            <td class="hdmy-table_small">희주봉</td>
                            <td class="hdmy-table_small">3/4</td>
                            <td class="hdmy-table_status">마감</td>
                        </tr>
                        <tr class="list">
                            <td class="hdmy-table_small">1</td>
                            <td class="hdmy-table_mid">24/05/19</td>
                            <td class="hdmy-table_small">1코스</td>
                            <td>봉보로봉 동행하실 분</td>
                            <td class="hdmy-table_small">희주봉</td>
                            <td class="hdmy-table_small">3/4</td>
                            <td class="hdmy-table_status" style="color: #FF9843;">모집중</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div> <!-- hdmy-board -->
        
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