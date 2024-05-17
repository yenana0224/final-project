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
                height: 580px;
                margin: 0 auto;
                margin-top: 200px;
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
                height: 480px;
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
            div > .form-control{ 
                width: 260px;
                height: 30px;
                border: none;
                border-radius: 8px;
                padding-left: 10px;
                border: 1px solid #cecdcd;
            }


            div > p, label {
                margin: 0 auto;
                font-size: 14px;
                font-weight: bold;
                padding-bottom: 5px;
                color: rgb(51, 51, 51);
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
            .btn-a{
                width: 80px;
                height: 35px;
                background-color: #FF9843;
                border: 0;
                border-radius: 10px;
                margin-top: 10px;
                color: #ffffff;
                font-size: 12px;
                margin-right: 5px;

            }

            .btn-b{
                width: 80px;
                height: 35px;
                background-color: #9e9e9e;
                border: 0;
                border-radius: 10px;
                margin-top: 15px;
                margin-right: 5px;
                color: #ffffff;
                font-size: 12px;
            }

            .btn-c{
                width: 80px;
                height: 35px;
                background-color: #ff7373;
                border: 0;
                border-radius: 10px;
                margin-top: 10px;
                color: #ffffff;
                font-size: 12px;
                margin-right: 5px;

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
                <form action="update.member" method="post">
	                <div class="input-box"> 
	                    <p>이름</p>
	                    <input type="text" class="form-control" name="userName" value="${ sessionScope.loginUser.userName }"> 
	                </div>
	                <div class="input-box"> 
	                    <p>아이디</p>
	                    <input type="text" class="form-control" name="userId" value="${ sessionScope.loginUser.userId }" readonly>
	                </div>
	                <div class="input-box"> 
	                    <p>이메일</p>
	                    <input type="text" class="form-control" name="email" value="${ sessionScope.loginUser.email }"> 
	                </div>
	                <div class="input-box"> 
	                    <p>연락처</p>
	                    <input type="text" class="form-control" name="phone" value="${ sessionScope.loginUser.phone }"> 
	                </div>
	                <div class="input-box"> 
	                    <p>가입일</p>
	                    <input type="text" class="form-control" name="enrollDate" value="${ sessionScope.loginUser.enrollDate }" readonly> 
	                </div>
	                <div id="signupButton">
	                    <button type="submit" class="btn-a">수정하기</button>
	                    <button type="button" class="btn-c" data-toggle="modal" data-target="#deleteForm">회원탈퇴</button>
	                    <button type="button" class="btn-b" onclick="location.href='myPage';">목록</button>
	                </div>
                </form>
            </div>               
        </div>
    </div>
    
    
    <!-- 회원탈퇴 버튼 클릭 시 보여질 Modal -->
    <div class="modal fade" id="deleteForm">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">회원탈퇴</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <form action="delete.member" method="post">
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div align="center">
			                            탈퇴 후 복구가 불가능합니다. <br>
			                            정말로 탈퇴 하시겠습니까? <br>
                        </div>
                        <br>
                            <label for="userPwd">비밀번호 입력 : </label>
                            <input type="password" class="form-control" placeholder="비밀번호를 입력해 주세요." id="userPwd" name="userPwd"> <br>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer" align="center">
                        <button type="submit" class="btn-c">탈퇴하기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
	<jsp:include page="../common/footer.jsp"/>
	
	

    
    
    



</body>
</html>