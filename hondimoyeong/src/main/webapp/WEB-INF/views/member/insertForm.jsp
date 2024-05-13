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
                width: 284px;
                height: 65px;
                padding-top: 5px;
                padding-left: 115px;
                background-color: #FFF2D7;
                float: left;                
            }

            /*중복확인 박스*/
            #idCheckButton 
            { 
                width: 130px;
                height: 65px;
                padding-top: 29px;
                background-color: #FFF2D7;
                display: inline-block;
                margin-left: 5px;
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
                margin-top: 5px;
            }
            
            /*비밀번호~연락처 인풋박스*/
           div> .form-control{ 
                width: 260px;
                height: 30px;
                border: none;
                border-radius: 8px;
                padding-left: 10px;
                border: 1px solid #e2e2e2;
            }

            /*아이디 인풋박스*/
            .form-control-id{ 
                width: 170px;
                height: 30px;
                border: none;
                border-radius: 8px;
                padding-left: 10px;
                border: 1px solid #e2e2e2;
                margin: 0 auto;
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

            /* 중복확인 버튼 스타일 */
            #idCheckButton > button{
                width: 80px;
                height: 30px;
                text-align: 35px; /*텍스트 가로중앙 */
                line-height: 30px; /*텍스트 세로중앙 */
                border-radius: 8px;
                background-color: #FF9843; 
                color: #ffffff; 
                border: none; 
                cursor: pointer; 
                font-size: 14px;
                font-weight: bolder;
                margin: 0 auto;
                
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
            <div id="idBox">
                <p>아이디</p>
                <input type="text" class="form-control-id" name="userId">
            </div>
            <div id="idCheckButton">
                <button type="submit">중복확인</button>
            </div>
            <div id="pwBox">
                <p>비밀번호</p>
                <input type="password" class="form-control" name="userPwd">
            </div>
            <div id="pwConfirmBox">
                <p>비밀번호 확인</p>
                <input type="password" class="form-control" name="userPwd">
            </div>
            <div id="nameBox">
                <p>이름</p>
                <input type="text" class="form-control" name="userName">
            </div>
            <div id="emailBox">
                <p>이메일</p>
                <input type="text" class="form-control" name="userEmail">
            </div>
            <div id="phoneBox">
                <p>연락처</p>
                <input type="text" class="form-control" name="userPhone">
            </div>
            <div id="signupButton">
                <button type="submit">가입하기</button>
            </div>
        </div>
    </div>

	<jsp:include page="../common/footer.jsp"/>

</body>
</html>