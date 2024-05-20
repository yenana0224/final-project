<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>완주한 코스</title>

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
                height: 880px;
                margin: 0 auto;
                margin-top: 150px;
                /* background-color: #FFF2D7; */
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
                /* background-color: #FFF2D7; */
                /* border: 1px solid rgb(0, 255, 64); */
            }

            /*내용 박스*/
            #detailBox
            {
                width: 700px;
                height:760px;
                margin-left: 50px;
                padding-left: 2px;
                padding-top: 0px;
                /* background-color: #FFF2D7; */
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




            .detail{
                width: 200px;
                height: 60px;
                float: left;
                background-color: #f7d3a0;
                margin-top: 3px;
                /* border: 1px solid rgb(0, 163, 204); */
            }

            h5{
                padding-top: 5px;
                font-size: 16px;
                font-weight: bold;
            }


            .map{
                width: 110px;
                height: 121px;
                float: left;
                margin-left: 25px;
                margin-top: 5px;
            }

            .box2{
                width: 110px;
                height: 30px;
                display: inline-block;
                font-size: 18px;
                font-weight: bold;
                text-align: center;
            }

            /*코스 아이콘*/
            .map > img {
                opacity: 0.2; /* 투명도 조절 */
            }


    </style>    
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div id="wrap">
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">

            <div id="titleBox">완주한 코스</div>
            <div id="detailBox">
                <div class="map">
                    <img src="resources/image/map_1.png">
                    <div class="box2">1코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_1-1.png">
                    <div class="box2">1-1코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_2.png">
                    <div class="box2">2코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_3-A.png">
                    <div class="box2">3코스-A</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_3-B.png">
                    <div class="box2">3코스-B</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_4.png">
                    <div class="box2">4코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_5.png">
                    <div class="box2">5코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_6.png">
                    <div class="box2">6코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_7.png">
                    <div class="box2">7코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_7-1.png">
                    <div class="box2">7-1코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_8.png">
                    <div class="box2">8코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_9.png">
                    <div class="box2">9코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_10.png">
                    <div class="box2">10코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_10-1.png">
                    <div class="box2">10-1코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_11.png">
                    <div class="box2">11코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_12.png">
                    <div class="box2">12코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_13.png">
                    <div class="box2">13코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_14.png">
                    <div class="box2">14코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_14-1.png">
                    <div class="box2">14-1코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_15-A.png">
                    <div class="box2">15-A코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_15-B.png">
                    <div class="box2">15-B코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_16.png">
                    <div class="box2">16코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_17.png">
                    <div class="box2">17코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_18.png">
                    <div class="box2">18코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_18-1.png">
                    <div class="box2">18-1코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_18-2.png" style="margin-left: 22px; margin-top: 27px; margin-bottom: 27px;">
                    <div class="box2">18-2코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_19.png">
                    <div class="box2">19코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_20.png">
                    <div class="box2">20코스</div>
                </div>
                <div class="map">
                    <img src="resources/image/map_21.png">
                    <div class="box2">21코스</div>
                </div>
            </div>
        </div>
    </div>
	<jsp:include page="../common/footer.jsp"/>


</body>
</html>