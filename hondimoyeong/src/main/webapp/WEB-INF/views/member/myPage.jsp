<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <title>마이페이지 메인</title>

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
                height: 600px;
                margin: 0 auto;
                position: relative; 
            }

            /*마이페이지 전체 박스*/
            #content{ 
                width: 800px;
                height: 300px;
                margin: 0 auto;
                margin-top: 300px;
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

            /*아이콘*/
            .icon-box{
                width: 90px;
                height: 90px;
                /* border : 1px solid rgb(0, 225, 255);  */
                margin-right: 17px;
            }


            /*회원아이디*/
            #idBox{
                width: 400px;
                height: 40px;
                margin-left: 50px;
                margin-top: 25px;
                line-height: 40px; 
                font-size: 17px;
                font-weight: bold;
            }


            /*아이콘,버튼 테두리*/
            #subIcon{
                width: 700px;
                height: 160px;
                border-radius: 20px;
                margin-left: 55px;
                margin-top: 20px;
                /* border : 1px solid rgb(0, 255, 64);  */
            }

            /*아이콘 박스 테두리*/
            #iconBox{
                width: 700px;
                height: 100px;
                margin-top: 5px;
                padding-top: 3px;
                padding-left: 25px;
                /* border : 1px solid rgb(255, 0, 234);  */
            }

            /*버튼 박스 테두리*/
            #buttonBox {
                width: 700px;
                height: 45px;
                padding-left: 20px;
                line-height: 40px;
                margin-top: 10px;
                /* border : 1px solid rgb(255, 94, 0);  */

            }
            #buttonBox > button{
                width: 92px;
                height: 30px;
                font-size: 12px; 
                text-align: center;
                line-height: 25px;
                margin-right: 17px;
                padding: 0; /* 버튼 내부 여백 없앰 */
                color: #ffffff;
                font-size: 12px;
                font-weight: bold;
                background-color: #FF9843; 
            }




    </style>    
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div id="wrap">
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">
            <div id="idBox" name="userId">${ sessionScope.loginUser.userName }님</div>
            <div id="subIcon">
                <div id="iconBox">
                    <img class="icon-box" src="resources/image/icon1.png">
                    <img class="icon-box" src="resources/image/icon2.png">
                    <img class="icon-box" src="resources/image/icon3.png">
                    <img class="icon-box" src="resources/image/icon4.png">
                    <img class="icon-box" src="resources/image/icon5.png">
                    <img class="icon-box" src="resources/image/icon6.png">
                </div>
                <div id="buttonBox">
                    <button type="button" class="btn btn-warning">개인정보수정</button>
                    <button type="button" class="btn btn-warning">예매내역</button>
                    <button type="button" class="btn btn-warning">내가 쓴 글</button>
                    <button type="button" class="btn btn-warning">동행모임</button>
                    <button type="button" class="btn btn-warning">완주한 코스</button>
                    <button type="button" class="btn btn-warning">문의내역</button>
                </div>
            </div>
        </div>
    </div>

	<jsp:include page="../common/footer.jsp"/>

</body>
</html>