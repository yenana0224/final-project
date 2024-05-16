<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

.tab {
  display: flex;
  align-items: center;
  padding: 1rem;
}
.cs_menu_tap {
    width: 150px;
    height: 60px;
    border: none;
    border-radius: 20px;
    font-size: 20px;
    font-weight: bold;
    color: #292929;
    margin-right: 20px;
  	background-color: #ececec;
}
.cs_menu_tap.active {
  display: inline-block;
  border: 1px solid #FF9843;
  background-color: #FF9843;
  color: #fff;
}
.tab_content-wrapper {
  padding: 1rem
}
.tab_content {
  display: none;
}
.tab_content.active {
  display: block;
}
</style>

</head>
<body>

<!-- 탭 버튼 영역 -->
<div class="cs_menu">
  <button class="cs_menu_tap active" id="tab1">공지사항</button>
  <button class="cs_menu_tap" id="tab2">FAQ</button>
</div>

<!-- 탭 내용 영역 -->
<div class="tab__content-wrapper">
  <div id="tab1" class="tab_content active">첫번째 탭 내용</div>
  <div id="tab2" class="tab_content">두번째 탭 내용</div>
</div>

<script>
//탭 버튼과 탭 내용 부분들을 querySelectorAll을 사용해 변수에 담는다.
const tabItem = document.querySelectorAll(".cs_menu_tap");
const tabContent = document.querySelectorAll(".tab_content");

// 탭 버튼들을 forEach 문을 통해 한번씩 순회한다.
// 이때 index도 같이 가져온다.
tabItem.forEach((item, index) => {
  // 탭 버튼에 클릭 이벤트를 준다.
  item.addEventListener("click", (e) => {
    // 탭 버튼들을 forEach 문을 통해 한번씩 순회한다.
    tabItem.forEach((item) => {
      // 탭 버튼들의 active 클래스를 제거한다.
      item.classList.remove("active");
    });
    // 클릭한 index의 탭 버튼에 active 클래스를 추가한다.
    tabItem[index].classList.add("active");
    
    // 탭 버튼의 id값을 string으로 가져온다.
    const tabItemId = String(item.id);
    // 탭 내용 부분들을 forEach 문을 통해 한번씩 순회한다.
    tabContent.forEach((item, index) => {
      // 탭 내용 부분들 전부 active 클래스를 제거한다.
      item.classList.remove("active");

      // 탭 내용의 id값을 string으로 가져온다.
      const tabContentId = String(item.id);
      // 만약 탭 버튼의 id 값과 탭 내용의 id값이 같다면,
      // 해당 탭 내용에 active 클래스를 추가한다.
      if(tabContentId === tabItemId) {
        tabContent[index].classList.add("active");
      }
    });
  });
});	
</script>
</body>
</html>