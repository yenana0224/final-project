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
                height: 635px;
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
				margin-top: 10px;
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
                width: 55px;
                height: 35px;
                background-color: #FF9843;
                border: 0;
                border-radius: 10px;
                margin-top: 10px;
                color: #ffffff;
                font-size: 12px;

            }

            .btn-b{
                width: 55px;
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
                width: 55px;
                height: 35px;
                background-color: #ff7373;
                border: 0;
                border-radius: 10px;
                margin-top: 10px;
                color: #ffffff;
                font-size: 12px;
            }
            
            
            .btn-d{
                width: 85px;
                height: 35px;
                background-color: #2C86A2;
                border: 0;
                border-radius: 10px;
                margin-top: 15px;
                color: #ffffff;
                font-size: 12px;
            }
            #emailCheckResult, #phoneCheckResult{
                width: 260px;
                height: 15px;
                padding-left: 5px;
                padding-top: 1px;          
                font-weight: bold;   
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
                        <input type="text" class="form-control" name="userName" value="${ sessionScope.loginUser.userName }" maxlength="20" oninput="nameValidateInput(this)">
                    </div>
                    <div class="input-box">
                        <p>아이디</p>
                        <input type="text" class="form-control" name="userId" value="${ sessionScope.loginUser.userId }" readonly>
                    </div>
                    <div class="input-box">
                        <p>이메일</p>
                        <input type="text" class="form-control" name="email" value="${ sessionScope.loginUser.email }" maxlength="30" oninput="emailValidateInput(this)">
                    	<div id="emailCheckResult" style="font-size:0.7em; display:none;"></div>
                    </div>
                    <div class="input-box">
                        <p>연락처</p>
                        <input type="text" class="form-control" name="phone" value="${ sessionScope.loginUser.phone }" maxlength="11" oninput="phoneValidateInput(this)">
                    	<div id="phoneCheckResult" style="font-size:0.7em; display:none;"></div>
                    </div>
                    <div class="input-box">
                        <p>가입일</p>
                        <input type="text" class="form-control" name="enrollDate" value="${ sessionScope.loginUser.enrollDate }" readonly>
                    </div>
                    <div id="signupButton">
                        <button type="button" class="btn-d" data-toggle="modal" data-target="#updatePwdModal">비밀번호 변경</button>
                        <button type="submit" class="btn-a" id="joinBtn">수정</button>
                        <button type="button" class="btn-c" data-toggle="modal" data-target="#deleteForm">탈퇴</button>
                        <button type="button" class="btn-b" onclick="location.href='myPage';">목록</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- 비밀번호 변경 버튼 클릭 시 보여질 Modal -->
    <div class="modal fade" id="updatePwdModal">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">비밀번호 변경</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <form action="updatePwd.member" method="post">
                    <!-- Modal body -->
                    <div class="modal-body">
                        <label for="currentPwd">현재 비밀번호 입력 : </label>
                        <input type="password" class="form-control" placeholder="현재 비밀번호를 입력해 주세요." id="currentPwd" name="currentPwd" required maxlength="100"> <br>

                        <label for="newPwd">새 비밀번호 입력 : </label>
                        <input type="password" class="form-control" placeholder="새 비밀번호를 입력해 주세요." id="newPwd" name="newPwd" required maxlength="100"> <br>

                        <label for="checkPwd">새 비밀번호 확인 : </label>
                        <input type="password" class="form-control" placeholder="다시 한 번 입력해 주세요." id="checkPwd" name="checkPwd" required maxlength="100"> <br>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer" align="center">
                        <button type="submit" class="btn-d">비밀번호 변경</button>
                        <input type="hidden" value="${sessionScope.loginUser.userNo}" name="userNo">
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
                        <div align="center" style="color:crimson; font-weight: bold;">
			                            탈퇴 후 복구가 불가능합니다. <br>
			                            정말로 탈퇴 하시겠습니까? <br>
                        </div>
                        <br>
                        <label for="userPwd">비밀번호 입력 : </label>
                        <input type="password" class="form-control" placeholder="비밀번호를 입력해 주세요." id="userPwd" name="userPwd"> <br>
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer" align="center">
                        <button type="submit" class="btn-c">확인</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <jsp:include page="../common/footer.jsp"/>

<script>
    $(document).ready(function() {
        const $joinSubmit = $('#joinBtn');

        function validateForm() {
            const emailValid = $('#emailCheckResult').text() === '사용 가능한 이메일입니다.';
            const phoneValid = $('#phoneCheckResult').text() === '사용 가능한 연락처입니다.';
            return emailValid || phoneValid;
        }

        $('[name="email"]').keyup(function() {
            if ($(this).val().length > 0) {
                $.ajax({
                    url: 'emailCheck.member',
                    data: { email: $(this).val() },
                    success: function(result) {
                        if (result.substr(4) == 'N') {
                            $('#emailCheckResult').show().css('color', 'crimson').text('이미 사용 중인 이메일입니다.');
                            $joinSubmit.prop('disabled', true);
                        } else {
                            $('#emailCheckResult').show().css('color', '#33b325').text('사용 가능한 이메일입니다.');
                            $joinSubmit.prop('disabled', !validateForm());
                        }
                    },
                    error: function() {
                        console.log('이메일 중복체크용 JSJA 통신 실패~');
                    }
                });
            } else {
                $('#emailCheckResult').hide();
                $joinSubmit.prop('disabled', true);
            }
        });

        $('[name="phone"]').keyup(function() {
            if ($(this).val().length === 11) {
                $.ajax({
                    url: 'phoneCheck.member',
                    data: { phone: $(this).val() },
                    success: function(result) {
                        if (result.substr(4) == 'N') {
                            $('#phoneCheckResult').show().css('color', 'crimson').text('이미 사용 중인 연락처입니다.');
                            $joinSubmit.prop('disabled', true);
                        } else {
                            $('#phoneCheckResult').show().css('color', '#33b325').text('사용 가능한 연락처입니다.');
                            $joinSubmit.prop('disabled', !validateForm());
                        }
                    },
                    error: function() {
                        console.log('연락처 중복체크용 JSJA 통신 실패~');
                    }
                });
            } else if ($(this).val().length === 10) {
                $('#phoneCheckResult').show().css('color', '#2C73D2').text('연락처는 11자리여야 합니다.');
                $joinSubmit.prop('disabled', true);
            } else {
                $('#phoneCheckResult').hide();
                $joinSubmit.prop('disabled', true);
            }
        });
    });
    
    function phoneValidateInput(input) {
        input.value = input.value.replace(/[^0-9]/g, '');
    }
    
    function nameValidateInput(input) {
    	input.value = input.value.replace(/[^ㄱ-힣a-zA-Z]/gi, '');
    }

    function emailValidateInput(input) {
    	input.value = input.value.replace(/[ \{\}\[\]\/?,;:|\)*~`!^\-_+┼<>\#$%&\'\"\\\(\=\^ㄱ-힣]/gi, '');
    }
</script>



</body>
</html>