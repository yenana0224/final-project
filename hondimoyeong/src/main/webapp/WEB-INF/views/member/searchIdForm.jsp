<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>아이디 찾기</title>


    <style>
        
            div{
                box-sizing : border-box;
                background-color: #ffffff;
            }

            #wrap{
                width: 1200px;
                height: 600px;
                margin: 0 auto;
                /* border : 1px solid red; */
            }

            #content{ 
                width: 400px;
                height: 450px;
                margin: 0 auto;
                margin-top: 100px;
                background-color: #FFF2D7;
                border-radius: 20px;
                /* border : 1px solid red;  */
            }
            
            #box-title     
            {
                width: 390px;
                height: 100px;
                padding-top: 35px;
                text-align: center; 
                border-radius: 20px;
                background-color: #FFF2D7;
                /* border: 1px solid rgb(0, 255, 64); */
            }

            .input-box   
            {
                width: 390px;
                height: 65px;
                padding-top: 5px;
                padding-left: 70px;
                background-color: #FFF2D7;
                /* border: 1px solid rgb(0, 88, 204); */
            }

            #box-button   
            {
                width: 390px;
                height: 50px;
                padding-left: 70px;
                background-color: #FFF2D7;
                margin-top: 25px;
                /* border: 1px solid rgb(204, 0, 160); */
            }


            div > .form-control{
                width: 260px;
                height: 30px;
                border: none;
                border-radius: 8px;
                padding-left: 10px;
                border: 1px solid #e2e2e2;
            }

            div > p{
                margin: 0 auto;
                padding-bottom: 5px;
                font-size: 14px;
                font-weight: bold; 
            }
            
            a{
                display: inline-block;
                margin: 0 auto;
                text-decoration: none; 
                color: rgb(0, 0, 0);  
                font-size: 11px; 
            }

            div > button{
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
            #linkBox   
            {
                width: 390px;
                height: 30px;
                padding-left: 120px;
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
            #linkBox > a{
                display: inline-block;
                margin: 0 auto;
                text-decoration: none; 
                color: #000000;  
                font-size: 12px; 
                font-weight: bold;                 
            }





    </style>    
</head>
<body>
    
    <jsp:include page="../common/header.jsp"/>
    
    <div id="wrap">
        <div id="content">
            <div id="box-title">
                <h4>아이디 찾기</h4>
            </div>
            <div class="input-box">
                <p>이름</p>
                <input type="text" class="form-control" name="userName">
            </div>
            <div class="input-box">
                <p>연락처</p>
                <input type="text" class="form-control" name="userPhone">
            </div>
            <div class="input-box">
                <p>이메일</p>
                <input type="text" class="form-control" name="userEmail">
            </div>
            <div id="box-button">
                <button type="submit">아이디 찾기</button>
            </div>
            <div id="linkBox">
                <a href="insertForm">회원가입</a> | <a href="login">로그인</a> | <a href="searchPwdForm">비밀번호 찾기</a>
            </div>
        </div>
    </div>

	<jsp:include page="../common/footer.jsp"/>

</body>
</html>