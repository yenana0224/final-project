<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>

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
        <div class="notice_insert_title"><span>공지사항 작성</span></div>

        <div class="insert_box">
            <form action="insert.notice" method="post">
		    	<input type="hidden" name="userNo" value="1" />
				<table class="tb_input">
					<tbody>
						<tr>
							<th>* 제목</th>
							<td><input type="text" name="noticeTitle" class="input_title"/></td>
						</tr>
						<tr>
							<th>* 내용</th>
							<td><textarea class="input_content" name="noticeContent"></textarea></td>
						</tr>
					</tbody>
				</table>
                <div class="detail_btn_box" align="center">
                    <button class="hdmy_detail_btn" type="submit">등록</button>
                    <button class="hdmy_detail_btn" type="button" onclick="noticeList();">취소</button>
                </div>
            </form>
        </div> <!-- inset_box -->
    </div>

<jsp:include page="../common/footer.jsp"/>

<script>
	function noticeList(){
		location.href='${ path }/list.notice?page=1';
	}
</script>

</body>
</html>