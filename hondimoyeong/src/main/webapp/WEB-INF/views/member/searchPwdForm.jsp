<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>비밀번호 찾기</title>


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
            
            #box-title     
            {
                width: 390px;
                height: 100px;
                padding-top: 35px;
                text-align: center;
                border-radius: 20px;
                background-color: #FFF2D7;
            }

            .input-box     
            {
                width: 390px;
                height: 65px;
                padding-top: 5px;
                padding-left: 70px;
                background-color: #FFF2D7;
            }

            #box-button   
            {
                width: 390px;
                height: 50px;
                padding-left: 70px;
                background-color: #FFF2D7;
                margin-top: 7px;
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
                margin-top: px;
            }






    </style>    
</head>
<body>

    <jsp:include page="../common/header.jsp"/>
    
    <div id="wrap">
        <div id="content">
            <div id="box-title">
                <h4>비밀번호 찾기</h4>
            </div>
            <div class="input-box">
                <p>아이디</p>
                <input type="text" class="form-control" name="userId">
            </div>
            <div class="input-box">
                <p>이름</p>
                <input type="text" class="form-control" name="userName">
            </div>
            <div class="input-box">
                <p>이메일</p>
                <input type="text" class="form-control" name="userEmail">
            </div>
            <div id="box-button">
                <button type="submit">비밀번호 찾기</button>
            </div>
        </div>
    </div>
    
    <jsp:include page="../common/footer.jsp"/>



</body>
</html>