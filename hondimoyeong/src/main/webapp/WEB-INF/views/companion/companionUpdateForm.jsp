<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	/* 컨텐트 */
	#container{
	    width: 1200px;
	    height: auto;
	    margin: 0 auto;
	}
	
	.notice_insert_title{
	    width: 1200px;
	    height: 100px;
	    font-size: 35px;
	    font-weight: bold;
	    text-align: center;
	}
	
	.insert_box{
	    width: 800px;
	    margin: 0 auto;
	}
	
	.tb_input {
	    width: 800px;
	    border-top: solid 2px #FF9843;
	    margin-top: 10px;
	}
	
	.tb_input th {
	    width: 150px;
	    background-color: #f3f3f3;
	}
	
	.tb_input th, .tb_input td {
	    border-bottom: solid 1px #ddd;
	    padding: 10px 20px;
	    text-align: left;
	    vertical-align: middle;
	    font-size: 14px;
	}
	
	.input_title{
	    width: 650px;
	    height: 35px;
	    padding: 7px;
	    border-radius: 10px;
	    border: 1px solid #b1b1b1;
	}
	
	.hdmy_input{
	    width: 650px;
	    height: 35px;
	    padding: 7px;
	    border-radius: 10px;
	    font-size: 15px;
	    border: 1px solid #b1b1b1;
	}
	
	.date_input, .course_input, .people_input{
	    width: 150px;
	    height: 35px;
	    padding: 7px;
	    font-size: 15px;
	    border-radius: 10px;
	    border: 1px solid #b1b1b1;
	}
	
	.input_info{
	    color: #292929;
	    padding-left: 10px;
	    text-decoration: none;
	    line-height: 0px;
	}
	
	.input_content{
	    width: 650px;
	    height: 400px;
	    resize: none;
	    border-radius: 10px;
	    padding: 7px;
	    border: 1px solid #b1b1b1;
	}
	
	/* 등록 취소 버튼 */
	.detail_btn_box{
	    width: 800px;
	    margin-top: 30px;
	}
	
	.hdmy_detail_btn {
	    display: inline-block;
	    width: 80px;
	    height: 50px;
	    padding: 8px;
	    font-size: 20px;
	    font-weight: bold;
	    border: none;
	    border-radius: 15px;
	    background-color: #FF9843;
	    color: #ffffff;
	    margin-right: 10px;
	    cursor: pointer;
	    line-height: 35px;
	}

	
</style>
</head>
<body>

	<jsp:include page="../common/header.jsp"/>

    <div id="container">
        <div class="notice_insert_title"><span>혼디모영!</span></div>

        <div class="insert_box">
            <form action="update.cmp" method="post">
            	<input type="hidden" name="companionNo" value="${ companion.companionNo }"/>
				<table class="tb_input">
					<tbody>
                        <tr>
							<th>* 코스</th>
							<td>
                                <select name="courseName" class="course_input">
                                    <option value="1">1코스</option>
                                    <option value="24">1-1코스</option>
                                    <option value="2">2코스</option>
                                    <option value="3">3코스-A</option>
                                    <option value="4">3코스-B</option>
                                    <option value="5">4코스</option>
                                    <option value="6">5코스</option>
                                    <option value="7">6코스</option>
                                    <option value="8">7코스</option>
                                    <option value="25">7-1코스</option>
                                    <option value="9">8코스</option>
                                    <option value="10">9코스</option>
                                    <option value="11">10코스</option>
                                    <option value="26">10-1코스</option>
                                    <option value="12">11코스</option>
                                    <option value="13">12코스</option>
                                    <option value="14">13코스</option>
                                    <option value="15">14코스</option>
                                    <option value="27">14-1코스</option>
                                    <option value="16">15코스-A</option>
                                    <option value="17">15코스-B</option>
                                    <option value="18">16코스</option>
                                    <option value="19">17코스</option>
                                    <option value="20">18코스</option>
                                    <option value="28">18-1코스</option>
                                    <option value="29">18-2코스</option>
                                    <option value="21">19코스</option>
                                    <option value="22">20코스</option>
                                    <option value="23">21코스</option>
                                </select>
                            </td>
						</tr>
						<tr>
							<th>* 동행 날짜</th>
							<td>
								<input type="date" name="companionDate" class="date_input" required/>
							</td>
						</tr>
                        <tr>
							<th>* 모집 인원</th>
							<td>
								<input type="number" min="1" max="10" name="companionPeople" class="people_input" value="${companion.companionPeople}"required/>
                                <a class="input_info">* 최소 1명, 최대 10명 선택해 주세요.</a>
                            </td>
						</tr>
                        <tr>
							<th>* 제목</th>
							<td>
								<input type="text" name="companionTitle" class="hdmy_input" value="${companion.companionTitle}" required/>
							</td>
						</tr>
						<tr>
							<th>* 내용</th>
							<td>
								<textarea class="input_content" name="companionContent">${companion}</textarea>
							</td>
						</tr>
					</tbody>
				</table>
                <div class="detail_btn_box" align="center">
                    <button class="hdmy_detail_btn">등록</button>
                    <button class="hdmy_detail_btn" type="submit">취소</button>
                </div>
            </form>
        </div> <!-- inset_box -->
    </div>
    
    <jsp:include page="../common/footer.jsp"/>

</body>
</html>