<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>로그인</title>
    <style>
        
            div{
                box-sizing : border-box;
                background-color: #ffffff;
            }

            #wrap{
                width: 1200px;
                height: 600px;
                margin: 0 auto;
            }

            #content{ 
                width: 400px;
                height: 400px;
                margin: 0 auto;
                margin-top: 100px;
                background-color: #FFF2D7;
                border-radius: 20px;
            }
            
            #loginTitle     
            {
                width: 390px;
                height: 100px;
                padding-top: 35px;
                text-align: center; 
                border-radius: 20px;
                background-color: #FFF2D7;
            }

            #idBox, #pwBox     
            {
                width: 390px;
                height: 75px;
                padding-left: 70px;
                margin-top: 10px;
                background-color: #FFF2D7;
            }
            .fontBox
            {
                width: 280px;
                height: 30px;
                background-color: #FFF2D7;
            }

            .inputBox
            {
                width: 280px;
                height: 36px;
                background-color: #FFF2D7;
            }

            .buttonBox   
            {
                width: 390px;
                height: 50px;
                padding-left: 70px;
                background-color: #FFF2D7;
                margin-top: 5px;
            }

            #linkBox   
            {
                width: 390px;
                height: 30px;
                padding-left: 100px;
                background-color: #FFF2D7;
            }
            
            .inputBox > .form-control{
                width: 260px;
                height: 36px;
                border: none;
                border-radius: 9px;
                padding-left: 10px;
                border: 1px solid #e2e2e2;
            }

            p{
                margin: 0 auto;
                padding-bottom: 5px;
            }
            
            #linkBox > a{
                display: inline-block;
                margin: 0 auto;
                text-decoration: none; 
                color: #000000;  
                font-size: 12px; 
            }

            #loginButton{
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
    </style>        
    
</head>
<body>
    
    <jsp:include page="../common/header.jsp"/>
    
    <div id="wrap">
        <div id="content">
            <div id="loginTitle">
                <h4>로그인</h4>
            </div>
            <div id="idBox">
                <div class="fontBox">아이디</div>
                <div class="inputBox"><input type="text" class="form-control" name="userId"></div>
            </div>
            <div id="pwBox">
                <div class="fontBox">비밀번호</div>
                <div class="inputBox"><input type="password" class="form-control" name="userPwd"></div>
            </div>
            <div class="buttonBox">
                <button type="submit" id="loginButton">로그인</button>
            </div>
            <div id="linkBox">
                <a href="#">회원가입</a> | <a href="#">아이디 찾기</a> | <a href="#">비밀번호 찾기</a>
            </div>
        </div>
    </div>
    
	<jsp:include page="../common/footer.jsp"/>

</body>
</html>