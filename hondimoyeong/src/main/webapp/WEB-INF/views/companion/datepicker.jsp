<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=0.9,minimum-scale=0.9,maximum-scale=0.9,user-scalable=no">
<meta name="HandheldFriendly" content="true">
<meta name="format-detection" content="telephone=no">

<title>Datepicker</title>

</head>
<body>

<!-- 필수 JS/CSS { -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
<link type="text/css" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet"/>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<!-- } -->

<!-- 캘린더 스타일 (jquery-ui.css 파일호출 보다 아래에 있어야 합니다.) { -->
<style>

	.ui-widget-header {
	border: 0px solid #dddddd;
	background: #fff;
	}
	
	.ui-datepicker-calendar>thead>tr>th {
	font-size: 14px !important;
	}
	
	.ui-datepicker .ui-datepicker-header {
	position: relative;
	padding: 10px 0;
	}
	
	.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default, .ui-button, html .ui-button.ui-state-disabled:hover, html .ui-button.ui-state-disabled:active {
	border: 0px solid #c5c5c5;
	background-color: transparent;
	font-weight: normal;
	color: #454545;
	text-align: center;
	}
	
	.ui-datepicker .ui-datepicker-title {
	margin: 0 0em;
	line-height: 16px;
	text-align: center;
	font-size: 14px;
	padding: 0px;
	font-weight: bold;
	}
	
	.ui-datepicker {
	display: none;
	background-color: #fff;
	border-radius: 4px;
	margin-top: 10px;
	margin-left: 0px;
	margin-right: 0px;
	padding: 20px;
	padding-bottom: 10px;
	width: 300px;
	box-shadow: 10px 10px 40px rgba(0,0,0,0.1);
	}
	    
	.ui-widget.ui-widget-content {
	    border: 1px solid #eee;
	}
	
	#datepicker:focus>.ui-datepicker {
	display: block;
	}
	
	.ui-datepicker-prev,
	.ui-datepicker-next {
	cursor: pointer;
	}
	
	.ui-datepicker-next {
	float: right;
	}
	
	.ui-state-disabled {
	cursor: auto;
	color: hsla(0, 0%, 80%, 1);
	}
	
	.ui-datepicker-title {
	text-align: center;
	padding: 10px;
	font-weight: 100;
	font-size: 20px;
	}
	
	.ui-datepicker-calendar {
	width: 100%;
	}
	
	.ui-datepicker-calendar>thead>tr>th {
	padding: 5px;
	font-size: 20px;
	font-weight: 400;
	}
	
	
	.ui-datepicker-calendar>tbody>tr>td>a {
	color: #000;
	font-size: 12px !important;
	font-weight: bold !important;
	text-decoration: none;
	    
	}
	
	
	.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
	cursor: auto;
	background-color: #fff;
	}
	    
	.ui-datepicker-calendar>tbody>tr>td {
	    border-radius: 100%;
	    width: 44px;
	    height: 30px;
	    cursor: pointer;
	    padding: 5px;
	    font-weight: 100;
	    text-align: center;
	    font-size: 12px;
	}
	    
	.ui-datepicker-calendar>tbody>tr>td:hover {
	    background-color: transparent;
	    opacity: 0.6;
	}
	
	.ui-state-hover,
	.ui-widget-content .ui-state-hover,
	.ui-widget-header .ui-state-hover,
	.ui-state-focus,
	.ui-widget-content .ui-state-focus,
	.ui-widget-header .ui-state-focus,
	.ui-button:hover,
	.ui-button:focus {
	border: 0px solid #cccccc;
	background-color: transparent;
	font-weight: normal;
	color: #2b2b2b;
	}
	
	.ui-widget-header .ui-icon {
	background-image: url('resources/image/btns.png');
	}
	.ui-icon-circle-triangle-e {
	background-position: -20px 0px;
	background-size: 36px;
	}
	
	.ui-icon-circle-triangle-w {
	background-position: -0px -0px;
	background-size: 36px;
	}
	    
	.ui-datepicker-calendar>tbody>tr>td:first-child a{
	color: red !important;
	}
	    
	.ui-datepicker-calendar>tbody>tr>td:last-child a{
	color: #0099ff !important;
	}
	    
	.ui-datepicker-calendar>thead>tr>th:first-child {
	    color: red !important;
	}
	    
	.ui-datepicker-calendar>thead>tr>th:last-child {
	    color: #0099ff !important;
	}
	
	.ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight {
	    border: 0px;
	    background: #f1f1f1;
	    border-radius: 50%;
	    padding-top: 10px;
	    padding-bottom: 10px;
	}
	

	
</style>

<!-- } -->
	
	<!-- 캘린더 옵션 { -->
	<script>
    $.datepicker.setDefaults({
      closeText: "닫기",
      prevText: "이전달",
      nextText: "다음달",
      currentText: "오늘",
      monthNames: ["1월", "2월", "3월", "4월", "5월", "6월",
        "7월", "8월", "9월", "10월", "11월", "12월"
      ],
      monthNamesShort: ["1월", "2월", "3월", "4월", "5월", "6월",
        "7월", "8월", "9월", "10월", "11월", "12월"
      ],
      dayNames: ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"],
      dayNamesShort: ["일", "월", "화", "수", "목", "금", "토"],
      dayNamesMin: ["일", "월", "화", "수", "목", "금", "토"],
      weekHeader: "주",
      dateFormat: "y.mm.dd", // 날짜형태 예)yy년 m월 d일
      firstDay: 0,
      isRTL: false,
      showMonthAfterYear: true,
      yearSuffix: "년"

    })

    $(".datepicker").datepicker({
      minDate: 0
    })
	</script>
	<!-- } -->

</body>
</html>


