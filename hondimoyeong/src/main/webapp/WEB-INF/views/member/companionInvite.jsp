<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>동행신청 내역</title>

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


            #detailBox
            {
                width: 700px;
                height: 540px;
                margin-left: 50px;
                padding-left: 110px;
            }
           
            .background-Box{
                width: 450px;
                height: 80px;
                padding-top: 8px;
                background-color: #f7d3a0;
                border-radius: 10px;
                margin-top: 15px;
                margin-left: 20px;
            }

            .box1{
                width: 80px;
                height: 60px;
                margin-left: 30px;
                float: left;
                background-color: #f7d3a0;
            }



            .detail{
                width: 200px;
                height: 60px;
                float: left;
                background-color: #f7d3a0;
                margin-top: 3px;
            }

            h5{
                padding-top: 5px;
                font-size: 16px;
                font-weight: bold;
            }

            .box2 {
                padding-top: 5px;
                font-size: 16px;
                font-weight: bold;
                background-color: #f7d3a0;
                margin-top: 1px;
            }

            .box3 {
                padding-top: 5px;
                font-size: 14px;
                margin: 0 auto;
                background-color: #f7d3a0;
            }

            .btnBox{
                width: 100px;
                height: 60px;
                float: left;
                background-color: #f7d3a0;
                margin-left: 40px;
                margin-top: 3px;
            }

            .btn-y{
                width: 60px;
                height: 28px;
                background-color: #FF9843;
                border: 0;
                border-radius: 10px;
                margin-bottom: 4px;
                color: #ffffff;
                font-size: 12px;
            }

            .btn-n{
                width: 60px;
                height: 28px;
                background-color: #9e9e9e;
                border: 0;
                border-radius: 10px;
                margin-bottom: 4px;
                color: #ffffff;
                font-size: 12px;
            }


            .box4 {
                width: 450px;
                height: 60px;
                padding-top: 8px;
                border-radius: 10px;
                margin-top: 15px;
                margin-left: 20px;
            }


            .pagination {
                width:fit-content;
                margin: 0 auto;
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
                border: 1px solid #9e9e9e;
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

            <div id="titleBox">동행신청 내역</div>
            <div id="detailBox">
                <div class="background-Box">
                    <div class="box1">
                      <div class="box2">이름</div>
                      <div class="box2">연락처</div>
                    </div>
                    <div class="detail">
                        <div class="box3">빈정박</div>
                        <div class="box3">010-1234-5678</div>
                    </div>
                    <div class="btnBox">
                        <button class="btn-y">수락</button>
                        <button class="btn-n">거절</button>
                    </div>
                </div>

                <div class="background-Box">
                    <div class="box1">
                      <div class="box2">이름</div>
                      <div class="box2">연락처</div>
                    </div>
                    <div class="detail">
                        <div class="box3">빈정박</div>
                        <div class="box3">010-1234-5678</div>
                    </div>
                    <div class="btnBox">
                        <button class="btn-y">수락</button>
                        <button class="btn-n">거절</button>
                    </div>
                </div>

                <div class="background-Box">
                    <div class="box1">
                      <div class="box2">이름</div>
                      <div class="box2">연락처</div>
                    </div>
                    <div class="detail">
                        <div class="box3">빈정박</div>
                        <div class="box3">010-1234-5678</div>
                    </div>
                    <div class="btnBox">
                        <button class="btn-y">수락</button>
                        <button class="btn-n">거절</button>
                    </div>
                </div>

                <div class="background-Box">
                    <div class="box1">
                      <div class="box2">이름</div>
                      <div class="box2">연락처</div>
                    </div>
                    <div class="detail">
                        <div class="box3">빈정박</div>
                        <div class="box3">010-1234-5678</div>
                    </div>
                    <div class="btnBox">
                        <button class="btn-y">수락</button>
                        <button class="btn-n">거절</button>
                    </div>
                </div>

                <div class="background-Box">
                    <div class="box1">
                      <div class="box2">이름</div>
                      <div class="box2">연락처</div>
                    </div>
                    <div class="detail">
                        <div class="box3">빈정박</div>
                        <div class="box3">010-1234-5678</div>
                    </div>
                    <div class="btnBox">
                        <button class="btn-y">수락</button>
                        <button class="btn-n">거절</button>
                    </div>
                </div>

                <div class="box4">
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
    </div>
	<jsp:include page="../common/footer.jsp"/>


</body>
</html>