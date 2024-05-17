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
                height: 800px;
                margin: 0 auto;
                position: relative;  
            }


            /*마이페이지 전체 박스*/
            #content{ 
                width: 800px;
                height: 660px;
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
                text-align: center; /
                line-height: 50px;
                font-size: 20px;
                font-weight: bold;
            }

            /*내용 박스*/
            #detailBox
            {
                width: 700px;
                height: 540px;
                margin-left: 50px;
                padding-left: 110px;
                /* background-color: #FFF2D7; */
                /* border: 1px solid rgb(0, 88, 204); */
            }
           
            /*-------------------------------------------------------------------------*/

            .background-Box{
                width: 450px;
                height: 120px;
                padding-top: 10px;
                background-color: #f7d3a0;
                border-radius: 10px;
                margin-top: 15px;
                margin-left: 20px;
            }

            .imgBox{
                width: 100px;
                height: 100px;
                margin-left: 30px;
                margin-right: 30px;
                float: left;
                background-color: #f7d3a0;
                /* border: 1px solid rgb(170, 0, 204); */
            }

            .imgBox > img{
                width: 100px;
                height: 100px;
            }

            .detail{
                width: 250px;
                height: 100px;
                float: left;
                background-color: #f7d3a0;
                /* border: 1px solid rgb(0, 163, 204); */
            }

            div > h5{
                padding-top: 5px;
                font-size: 16px;
                font-weight: bold;
            }

            div > p{
                font-size: 14px;
                margin: 0 auto;
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
                <div class="background-Box">
                    <div class="imgBox">
                      <img src="#">  
                    </div>
                    <div class="detail">
                        <h5>아쿠아플라넷</h5>
                        <p>날짜 : 2024-06-10</p>
                        <p>시간 : 11:00</p>
                        <p>인원 : 2명</p>
                    </div>
                </div>
                <div class="background-Box">
                    <div class="imgBox">
                      <img src="#">  
                    </div>
                    <div class="detail">
                        <h5>아쿠아플라넷</h5>
                        <p>날짜 : 2024-06-10</p>
                        <p>시간 : 11:00</p>
                        <p>인원 : 2명</p>
                    </div>
                </div>
                <div class="background-Box">
                    <div class="imgBox">
                      <img src="#">  
                    </div>
                    <div class="detail">
                        <h5>아쿠아플라넷</h5>
                        <p>날짜 : 2024-06-10</p>
                        <p>시간 : 11:00</p>
                        <p>인원 : 2명</p>
                    </div>
                </div>                
                <div class="background-Box">
                    <div class="imgBox">
                      <img src="#">  
                    </div>
                    <div class="detail">
                        <h5>아쿠아플라넷</h5>
                        <p>날짜 : 2024-06-10</p>
                        <p>시간 : 11:00</p>
                        <p>인원 : 2명</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="../common/footer.jsp"/>


</body>
</html>