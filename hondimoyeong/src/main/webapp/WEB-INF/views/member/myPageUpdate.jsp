<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마이페이지 메인</title>

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
                border : 1px solid red;
                position: relative; 
            }


            /*마이페이지 전체 박스*/
            #content{ 
                width: 800px;
                height: 650px;
                margin: 0 auto;
                margin-top: 300px;
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

            /*개인정보 타이틀 박스*/
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

            /*이름, 생년월일, 이메일 박스*/
            #detailBox
            {
                width: 700px;
                height: 560px;
                margin-left: 50px;
                padding-top: 25px;
                padding-left: 110px;

            }

            /*비밀번호~연락처 전체 박스*/ 
            .input-box    
            {
                width: 490px;
                height: 65px;
                padding-top: 5px;
                padding-left: 115px;

            }
                        

            /*아이디~연락처 인풋박스 테두리*/
            .form-control{ 
                width: 260px;
                height: 30px;
                border: none;
                border-radius: 8px;
                padding-left: 10px;
                border: 1px solid #cecdcd;
            }


            h5{
                margin: 0 auto;
                font-size: 14px;
                font-weight: bold;
                padding-bottom: 5px;
                color: rgb(51, 51, 51);
            }
            

            /*버튼 스타일*/
            button{ 
                width: 260px;
                height: 40px;
                border-radius: 8px;
                background-color: #FF9843; 
                color: #ffffff; 
                border: none; 
                cursor: pointer; 
                font-size: 14px;
                font-weight: bolder;
                margin-top: 3px;
            }
            
            /*회원가입 버튼 박스*/
            #signupButton    
            {
                width: 490px;
                height: 50px;
                padding-left: 115px;
                /* background-color: #FFF2D7; */
                margin-top: 5px;
                /* border: 1px solid rgb(204, 0, 160); */
            }                                 





    </style>    
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div id="wrap">
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">

            <div id="titleBox">개인정보 수정</div>
            <div id="detailBox">
                <form action="insert.member" method="post">
	                <div class="input-box"> 
	                    <h5>이름</h5>
	                    <input type="text" class="form-control" name="userName" value="유나킴" readonly > 
	                </div>
	                <div class="input-box"> 
	                    <h5>아이디</h5>
	                    <input type="text" class="form-control" name="userId" value="nananakim" readonly>
	                </div>
	                <div class="input-box"> 
	                    <h5>비밀번호</h5>
	                    <input type="password" class="form-control" name="userPwd" value="1234">
	                </div>
	                <div class="input-box"> 
	                    <h5>비밀번호 재확인</h5>
	                    <input type="password" class="form-control" name="userPwd" value="1234"> 
	                </div>
	                <div class="input-box"> 
	                    <h5>이메일</h5>
	                    <input type="text" class="form-control" name="userEmail" value="abc@naver.com"> 
	                </div>
	                <div class="input-box"> 
	                    <h5>연락처</h5>
	                    <input type="text" class="form-control" name="userPhone" value="010-1234-5678"> 
	                </div>
	                <div class="input-box"> 
	                    <h5>가입일</h5>
	                    <input type="text" class="form-control" name="joinDate" value="2024-05-05" readonly> 
	                </div>
	                <div id="signupButton">
	                    <button type="submit">완료</button>
	                </div>
                </form>
            </div>               
        </div>
    </div>
	<jsp:include page="../common/footer.jsp"/>


</body>
</html>