<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>안녕하세요 이것은 쿠키예제입니다.</h3>
	<form action="cookieExample3.jsp" method="post">
		<input class="rbtn" type="radio" name="language" value="korea" />
		<label>한국어 페이지 보기</label>
		<input class="rbtn" type="radio" name="language" value="english"/>
		<label>영어 페이지 보기</label>
		<input type="submit" value="설정">
	</form>
	<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
	<!-- 아래는 제이쿼리 코드 -->
	<script>
		$(function(){
// 			console.log("로컬스토리지를 비웁니다");
// 				localStorage.clear();
// 			console.log("로컬스토리지를 비우기 완료");
			$(".rbtn").click(function(){
// 				$(".rbtn").removeProp("checked");
// 				$(this).prop("checked","checked"); 이 부분이 없어도 잘 된다. 왜지? 일단 넣어주는게 정석이긴한데...
				localStorage.lang1 = $(this).val();
				console.log($(this).val());
			});
			if(localStorage.lang1 == "korea") {
				$(".rbtn:first").prop("checked", "checked");
				$("h3").text("안녕하세요 이것은 쿠키예제입니다.");
			} else {
				$(".rbtn:last").prop("checked", "checked");		
				$("h3").text("Hello. This is Cookie example.");
			}
		});
	</script>
</body>
</html>