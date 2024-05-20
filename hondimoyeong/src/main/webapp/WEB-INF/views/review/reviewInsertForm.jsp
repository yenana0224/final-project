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
	
	/* 별점 */
	#myform fieldset{
	    display: inline-block;
	    direction: rtl;
	    border:0;
	}
	#myform fieldset legend{
	    text-align: right;
	}
	#myform input[type=radio]{
	    display: none;
	}
	#myform label{
	    font-size: 3em;
	    color: transparent;
	    text-shadow: 0 0 0 #cfcfcf;
	}
	#myform label:hover{
	    text-shadow: 0 0 0 #FF9843;
	}
	#myform label:hover ~ label{
	    text-shadow: 0 0 0 #FF9843;
	}
	#myform input[type=radio]:checked ~ label{
	    text-shadow: 0 0 0 #FF9843;
	}
	#reviewContents {
	    width: 100%;
	    height: 150px;
	    padding: 10px;
	    box-sizing: border-box;
	    border: solid 1.5px #D3D3D3;
	    border-radius: 5px;
	    font-size: 16px;
	    resize: none;
	}

   </style>
</head>
<body>

	<jsp:include page="../common/header.jsp"/>
	
    <div id="container">
        <div class="notice_insert_title"><span>리뷰 작성</span></div>

        <div class="insert_box">
            <form action="insert.notice" method="post" id="myform">
				<table class="tb_input">
					<tbody>
                        <tr>
							<th>* 코스</th>
							<td>
                                <select name="course" class="course_input">
                                    <option value="">1코스</option>
                                    <option value="">1-1코스</option>
                                    <option value="">2코스</option>
                                    <option value="">3코스-A</option>
                                    <option value="">3코스-B</option>
                                    <option value="">4코스</option>
                                    <option value="">5코스</option>
                                    <option value="">6코스</option>
                                    <option value="">7코스</option>
                                    <option value="">7-1코스</option>
                                    <option value="">8코스</option>
                                    <option value="">9코스</option>
                                    <option value="">10코스</option>
                                    <option value="">10-1코스</option>
                                    <option value="">11코스</option>
                                    <option value="">12코스</option>
                                    <option value="">13코스</option>
                                    <option value="">14코스</option>
                                    <option value="">14-1코스</option>
                                    <option value="">15코스-A</option>
                                    <option value="">15코스-B</option>
                                    <option value="">16코스</option>
                                    <option value="">17코스</option>
                                    <option value="">18코스</option>
                                    <option value="">18-1코스</option>
                                    <option value="">18-2코스</option>
                                    <option value="">19코스</option>
                                    <option value="">20코스</option>
                                    <option value="">21코스</option>
                                </select>
                            </td>
						</tr>
                        <tr>
                            <tr>
                                <th>* 별점</th>
                                <td>
                                    <fieldset>
                                        <input type="radio" name="reviewStar" value="5" id="rate1"><label
                                            for="rate1">★</label>
                                        <input type="radio" name="reviewStar" value="4" id="rate2"><label
                                            for="rate2">★</label>
                                        <input type="radio" name="reviewStar" value="3" id="rate3"><label
                                            for="rate3">★</label>
                                        <input type="radio" name="reviewStar" value="2" id="rate4"><label
                                            for="rate4">★</label>
                                        <input type="radio" name="reviewStar" value="1" id="rate5"><label
                                            for="rate5">★</label>
                                    </fieldset>
                                </td>
                            </tr>
                        <tr>
							<th>* 제목</th>
							<td><input type="text" name="title" class="hdmy_input"/></td>
						</tr>
						<tr>
							<th>* 내용</th>
							<td><textarea class="input_content" name="content">
                            </textarea>
                            </td>
						</tr>
                        <tr>
							<th>* 첨부파일</th>
							<td>
                                <input type="file" name="" id="file" style="padding-right: 35px;">
                                <input type="file" name="" id="file">
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