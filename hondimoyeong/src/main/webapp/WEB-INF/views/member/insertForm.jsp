<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>회원가입</title>

    <style>
            div{
                box-sizing : border-box;
                background-color: #ffffff;
            }

            #wrap{ 
                width: 1200px;
                height: 800px;
                margin: 0 auto;
            }

            /*회원가입 전체 박스*/
            #content{ 
                width: 500px;
                height: 600px;
                margin: 0 auto;
                margin-top: 100px;
                background-color: #FFF2D7;
                border-radius: 20px;
            }


             /*회원가입 박스*/ 
            #signupTitle  
            {
                width: 490px;
                height: 100px;
                padding-top: 35px;
                text-align: center; 
                border-radius: 20px;
                background-color: #FFF2D7;
            }
            
            /*아이디 박스*/ 
            #idBox 
            {
                width: 490px;
                height: 65px;
                padding-top: 5px;
                padding-left: 115px;
                margin-bottom: 10px;
                background-color: #FFF2D7;
                
            }

            
            /*비밀번호~연락처 박스*/ 
            #pwBox, #pwConfirmBox, #nameBox, #emailBox, #phoneBox    
            {
                width: 490px;
                height: 65px;
                padding-top: 5px;
                padding-left: 115px;
                background-color: #FFF2D7;
                
            }

            /*회원가입 버튼 박스*/
            #signupButton    
            {
                width: 490px;
                height: 50px;
                padding-left: 115px;
                background-color: #FFF2D7;
                margin-top: 20px;

            }
            
            /*비밀번호~연락처 인풋박스*/
           div> .form-control{ 
                width: 260px;
                height: 30px;
                border: none;
                border-radius: 8px;
                padding-left: 10px;
                
            }



           div > p{
                margin: 0 auto;
                padding-bottom: 1px;
                color: rgb(51, 51, 51);
            }
           
            /*버튼 스타일*/
            #signupButton > button { 
                width: 260px;
                height: 40px;
                border-radius: 10px;
                background-color: #FF9843; 
                color: #ffffff; 
                border: none; 
                cursor: pointer; 
                font-size: 14px;
                font-weight: bolder;
                margin-top: 3px;
            }


            #checkResult{
                width: 260px;
                height: 15px;
                background-color: #FFF2D7;
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
            <div id="signupTitle">
                <h4>회원가입</h4>
            </div>
            
            <form action="insert.member" method="post">
	            <div id="idBox">
	                <p>아이디</p>
	                <input type="text" class="form-control" name="userId" required>
	                <div id="checkResult" style="font-size:0.7em; display:none;"></div>
	            </div>
	            <div id="pwBox">
	                <p>비밀번호</p>
	                <input type="password" class="form-control" name="userPwd" required>
	            </div>
	            <div id="pwConfirmBox">
	                <p>비밀번호 확인</p>
	                <input type="password" class="form-control" name="checkPwd" required>
	            </div>
	            <div id="nameBox">
	                <p>이름</p>
	                <input type="text" class="form-control" name="userName" required>
	            </div>
	            <div id="emailBox">
	                <p>이메일</p>
	                <input type="text" class="form-control" name="email" required>
	            </div>
	            <div id="phoneBox">
	                <p>연락처</p>
	                <input type="text" class="form-control" name="phone" required>
	            </div>
	            <div id="signupButton">
	                <button type="submit" id="joinBtn" disabled>가입하기</button>
	            </div>
            </form>
        </div>
    </div>

	<jsp:include page="../common/footer.jsp"/>


	<script>
		$(function() {
			
			const $idInput = $('[name="userId"]'); 
			const $checkResult = $('#checkResult');
			const $joinSubmit = $('#joinBtn');
			
			$idInput.keyup(function() {
			
				if($idInput.val().length >= 5){
			
					$.ajax({
						url : 'idCheck.member',
						data : {checkId : $idInput.val()},
						success : function(result) {
							
							if(result.substr(4) == 'N') { //중복이다!
								$checkResult.show().css('color', 'crimson').text('이미 사용 중인 아이디입니다.');
								$joinSubmit.attr('disabled', true);
							}
							else { //중복이 아니다! -> $joinSubmit = $('#joinBtn');를 활성화시켜줌
								$checkResult.show().css('color', '#33b325').text('사용 가능한 아이디입니다.');
								$joinSubmit.removeAttr('disabled');
							}
						},
						error : function() {
							console.log('아이디 중복체크용 JSJA 통신 실패~');
						}
					});
				}
				else {
					$checkResult.hide();
					$joinSubmit.attr('disabled', true);
				}
			});
		});
	</script>




</body>
</html>