<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>내 글 목록</title>

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
                height: 1000px;
                margin: 0 auto;
                position: relative;
            }


            /*마이페이지 전체 박스*/
            #content{ 
                width: 800px;
                height: 900px;
                margin: 0 auto;
                margin-top: 150px;
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

            /*타이틀 박스*/
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

            /*내용 박스*/
            #detailBox
            {
                width: 790px;
                height: 660px;
                margin-left: 2px;
                padding-top: 25px;
            }
           

            .mnbtn{
                width: 130px;
                height: 40px;
                border-radius: 10px;
                background-color: #FF9843; 
                color: #ffffff;
                font-weight: bold;
                font-size: 14px;
                border: 0;
            }

            tr > th{
                background-color: #fee2bd; 
                text-align: center;
            }
            td{
                text-align: center;
            }

            .pagination {
                width:fit-content;
                margin: 0 auto;
                margin-top: 40px;
                margin-bottom: 40px;
            }
            
            .page-item.active .page-link {
                background-color: #FF9843 !important;
                border: 1px solid #FF9843 !important;
                color: #FFFFFF !important;
                border-radius: 10px;
            }
            
            .page-link {
                color: #292929 !important;
                border-radius: 10px;
                margin-right: 10px;
            }
            
            .page-item:last-child .page-link, .page-item:first-child .page-link {
                border-radius: 10px !important;
            }
            #btnBox{
                width: 100px;
                height: 40px;
                display: inline-block; 
                margin-left: 660px; 
                position: absolute;
                top: 160px; 
                left: 2%; 
                /* border : 1px solid red; */
            }
            .mnbtn{
                width: 85px;
                height: 38px;
                border-radius: 15px;
                background-color: #FF9843; 
                color: #ffffff;
                font-weight: bold;
                font-size: 14px;
                border: 0;
            }

            #searchTitle { /*검색창*/
              width: 300px;
              height: 37px;
              border-radius: 15px;
              border: 1px solid lightgray;
              font-size: 15px;
              margin-right: 5px;
              padding-left: 20px;
              padding-right: 20px;
            }
            #searchBox{
              width: 790px;
              height: 60px;
              padding-left: 150px;
              margin-top: 5px;
              margin-bottom: 50px;
              /* border: 1px solid rgb(228, 73, 248); */
            }
            .searchBtn{
                width: 75px;
                height: 36px;
                border-radius: 15px;
                background-color: #FF9843; 
                color: #ffffff;
                font-weight: bold;
                font-size: 14px;
                border: 0;
                padding-top: 3px;
            }
            #category{ /*카테고리*/
                border: 1px solid rgb(212, 212, 212);
                border-radius: 15px;
                width: 100px;
                height: 37px;
                font-size: 15px;
                color: #727272;
                padding-left: 7px;
            }            




    </style>    
</head>
<body>
    <jsp:include page="../common/header.jsp"/>
    <div id="wrap">
        <div id="content">
            <img class="icon-Img" src="resources/image/mypageIcon.png">

            <div id="titleBox">내 글 목록</div>
            <div id="detailBox">
              <div id="searchBox">

				    <select name="category" id="category">
				    	<option value="0">전체</option>
				        <option value="1">문의</option>
				        <option value="2">신고</option>
				    </select>
				    <input type="search" id="searchTitle" name="searchTitle">
				    <button class="searchBtn" onclick="customerSearch(1)">검색</button>
              </div>
              <div id="btnBox">
                <div class="box1"><button class="mnbtn" onclick="location.href='customerEnrollForm';">글쓰기</button></div>
              </div>
                <table class="table table-hover">
                    <thead>
                      <tr>
                        <th width="80px;">번호</th>
                        <th width="100px;">카테고리</th>
                        <th>제목</th>
                        <th width="120px;">작성자</th>
                        <th width="130px;">날짜</th>
                      </tr>
                    </thead>
                    <tbody id="tbody">
            	
                    </tbody>
                  </table>
					<!--페이지 숫자-->
					<div id="pagingArea">
					    <ul class="pagination">
							
					    </ul>               
				   </div>
                </div>
            </div>
        </div>
	<jsp:include page="../common/footer.jsp"/>


	<script>
		$(document).ready(function() {
 			customerSearch();
 			
 		    $('#category').on('change', function() {
 		        customerSearch(1);
 		    });
 			
 		    $('#searchTitle').on('keypress', function(e) {
 		        if (e.which == 13) {   
 		        	e.preventDefault();   
 		        	customerSearch(1);  
 		        }
 		    });
 		});
	
		function customerSearch(currentPage) {
 			
 			$.ajax({
				url : 'list.customerData',
				data : {
						page : currentPage,
						category : $('#category').val(),
						searchTitle : $('#searchTitle').val(),
					   },
				type : 'get',
				success : function(result){
		            let customers = result.customer;  
		            let tbodyHtml = '';  
		            customers.forEach(function(customer) {
			                tbodyHtml += '<tr>' +
			                    '<td>' + customer.customerNo + '</td>' +
			                    '<td>' + (customer.categoryNo === 1 ? '문의' : '신고') + '</td>' +
			                    '<td>' + customer.customerTitle + '</td>' +
			                    '<td>' + customer.userName + '</td>' +  
			                    '<td>' + customer.createDate + '</td>' +
			                    '</tr>';
		            });
		            $('#tbody').empty();
		            $('#tbody').html(tbodyHtml);  
		            let pageInfo = result.pageInfo;
		            var pagination = $('.pagination');
		            pagination.empty();	 
		            if (pageInfo.currentPage > 1) {
		                pagination.append('<li class="page-item"><a class="page-link" href="#" onclick="customerSearch(' + (pageInfo.currentPage - 1) + '); return false;">&lt;</a></li>');
		            }
		            for (var i = pageInfo.startPage; i <= pageInfo.endPage; i++) {
		                var activeClass = pageInfo.currentPage === i ? 'active' : '';
		                pagination.append('<li class="page-item ' + activeClass + '"><a class="page-link" href="#" onclick="customerSearch(' + i + '); return false;">' + i + '</a></li>');
		            }
		            if (pageInfo.currentPage < pageInfo.maxPage) {
		                pagination.append('<li class="page-item"><a class="page-link" href="#" onclick="customerSearch(' + (pageInfo.currentPage + 1) + '); return false;">&gt;</a></li>');
		            }
				}
    		});
 			
 			

 			

 		}
	</script>
 		
 		
 		
</body>
</html>