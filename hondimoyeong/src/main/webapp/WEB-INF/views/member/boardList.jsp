<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>내 글 목록</title>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <style>
            div{
                /* border : 1px solid red;  */
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
                height: 900px;
                margin: 0 auto;
                margin-top: 150px;
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

            tr > th{
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
            #btnBox{
                width: 100px;
                height: 40px;
                display: inline-block; 
                margin-left: 660px; 
                position: absolute;
                top: 150px; 
                left: 2%; 
                /* border : 1px solid red; */
            }
            .mnbtn{
                width: 85px;
                height: 38px;
                border-radius: 15px;
                background-color: #FF9843; 
                color: #ffffff;
                font-weight: bold;
                font-size: 14px;
                border: 0;
            }

            #find { /*검색창*/
              width: 300px;
              height: 37px;
              border-radius: 15px;
              border: 1px solid lightgray;
              font-size: 15px;
              margin-right: 5px;
              padding-left: 20px;
              padding-right: 20px;
            }
            #searchBox{
              width: 790px;
              height: 60px;
              padding-left: 200px;
              margin-top: 5px;
              margin-bottom: 40px;
              /* border: 1px solid rgb(228, 73, 248); */
            }
            .searchBtn{
                width: 75px;
                height: 36px;
                border-radius: 15px;
                background-color: #FF9843; 
                color: #ffffff;
                font-weight: bold;
                font-size: 14px;
                border: 0;
                padding-top: 5px;
            }




    </style>    
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div id="wrap">
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">

            <div id="titleBox">내 글 목록</div>
            <div id="detailBox">
              <div id="searchBox">
              <input type="search" id="find">
              <button class="searchBtn" type="button">검색</button>
              </div>
              <div id="btnBox">
                <div class="box1"><button class="mnbtn" onclick="location.href='boardEnrollForm';">글쓰기</button></div>
              </div>
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>카테고리</th>
                        <th>제목</th>
                        <th>날짜</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>문의</td>
                        <td>문의인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>신고</td>
                        <td>신고인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>문의</td>
                        <td>문의인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>신고</td>
                        <td>신고인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>문의</td>
                        <td>문의인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>신고</td>
                        <td>신고인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>문의</td>
                        <td>문의인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>신고</td>
                        <td>신고인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>문의</td>
                        <td>문의인데용</td>
                        <td>2024-05-13</td>
                      </tr>
                      <tr>
                        <td>신고</td>
                        <td>신고인데용</td>
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