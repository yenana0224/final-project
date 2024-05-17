<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>리뷰 게시판</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
            div{
                box-sizing : border-box;
                background-color: #ffffff;
            }          
        
            #wrap{
                width: 1200px;
                height: 1000px;
                margin: 0 auto;
                position: relative; 
            }


            /*마이페이지 전체 박스*/
            #content{ 
                width: 800px;
                height: 780px;
                margin: 0 auto;
                margin-top: 200px;
                border-radius: 20px;
                border : 4px solid #FF9843; 
                position: relative;
            }

           
            /*귤 아이콘*/
            .icon-Img{
                width: 130px;
                height: 150px;
                background-color: transparent;
                position: absolute;
                top: -130px;
                left: 2%; 
            }

            /*타이틀 박스*/
            #titleBox     
            {
                width: 700px;
                height: 50px;
                margin-top: 30px;
                margin-left: 50px;
                text-align: center;
                line-height: 50px;
                font-size: 20px;
                font-weight: bold;
            }

            /*내용 박스*/
            #detailBox
            {
                width: 790px;
                height: 660px;
                margin-left: 2px;
                padding-top: 25px;
            }
           
            #btnBox{
                width: 400px;
                height: 40px;
                display: inline-block; 
                margin-left: 230px; 
                position: absolute;
                top: -60px; 
                left: 2%; 
            }

            /*버튼테두리박스*/
            .box1{
                width: 130px;
                height: 50px;
                float: left;
                margin-right: 50px;
            }

            .mnbtn{
                width: 130px;
                height: 40px;
                border-radius: 10px;
                background-color: #FF9843; 
                color: #ffffff;
                font-weight: bold;
                font-size: 14px;
                border: 0;
            }

            .mnbtn:hover{
                width: 130px;
                height: 40px;
                border-radius: 10px;
                background-color: #9e9e9e; 
                color: #ffffff;
            }
            th{
                background-color: #fee2bd; 
                text-align: center;
            }
            td{
                text-align: center;
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
                border-radius: 10px;
            }
            
            .page-link {
                color: #292929 !important;
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
    <div id="wrap">
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">
            <div id="btnBox">
                <div class="box1"><button class="mnbtn" type="button">리뷰 게시판</button></div>
                <div class="box1"><button class="mnbtn" type="button">동행 게시판</button></div>
            </div>
            <div id="titleBox">리뷰 게시판</div>
            <div id="detailBox">
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th style="width: 60px;">번호</th>
                        <th style="width: 100px;">코스</th>
                        <th style="width: 400px;">제목</th>
                        <th style="width: 150px;">작성일</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~~~~~~~~~~~~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>1</td>
                        <td>1코스</td>
                        <td>1코스 리뷰~~</td>
                        <td>2024-05-13</td>
                      </tr>
                    </tbody>
                  </table>
                <!--페이지 숫자-->
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="#"> < </a></li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item active"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#"> > </a></li>
                  </ul>                 
                </div>




            </div>
        </div>
	<jsp:include page="../common/footer.jsp"/>


</body>
</html>