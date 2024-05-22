<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>예매내역</title>

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
                margin-top: 50px;
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
                width: 80px;
                height: 40px;
                display: inline-block; 
                margin-left: 660px; 
                position: absolute;
                top: 95px; 
                left: 2%; 
                /* border : 1px solid red; */
            }

            .btn-b{
                width: 80px;
                height: 38px;
                border-radius: 15px;
                background-color: #9e9e9e; 
                color: #ffffff;
                font-weight: bold;
                font-size: 14px;
                line-height: 38px;
                border: 0;
            }
    </style>    
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div id="wrap">
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">

            <div id="titleBox">예매내역</div>
            <div id="detailBox">
              <div id="btnBox">
                <button class="btn-b" onclick="location.href='myPage';">목록</button>
              </div>
                <table class="table table-hover" id="customerListTable">
                    <thead>
                      <tr>
                        <th width="200px;">체험명</th>
                        <th width="120px;">날짜</th>
                        <th width="120px;">시간</th>
                        <th width="150px;">내용</th>
                        <th width="120px;">인원</th>
                        <th width="120px;">가격</th>
                      </tr>
                    </thead>
                    <tbody id="tbody">

                    </tbody>
                  </table>
					<!--페이지 숫자-->
					<div id="pagingArea">
					    <ul class="pagination">
                            
							
					    </ul>               
				   </div>
                </div>
            </div>
        </div>
	<jsp:include page="../common/footer.jsp"/>
		
 		
 		
</body>
</html></html>