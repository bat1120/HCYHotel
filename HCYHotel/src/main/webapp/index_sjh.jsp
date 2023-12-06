<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="http://192.168.10.140/mvc_prj/common/main/favicon.png">
<!-- bootstrap CDN-->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">

</style>
<script type="text/javascript">
$(function(){
	
});//ready
</script>
 
</head>
<body>
<ul>
<li><a href="user/home/user_home.do">사용자 홈</a></li>
<li><a href="user/join/join_check.do">회원 가입대상 확인</a></li>
<li><a href="user/join/user_join_check.do">사용자 중복확인</a></li>
<li><a href="user/join/business_join_check.do">사업자 중복확인</a></li>
<li><a href="user/join/user_join.do">사용자 회원가입</a></li>
<li><a href="user/join/business_join.do">사업자 회원가입</a></li>
<li><a href="user/findId/user_find_id.do">사용자 아이디 찾기</a></li>
<li><a href="user/findId/user_result_id.do">사용자 아이디 찾기결과</a></li>
<li><a href="user/findPass/user_find_pass.do">사용자 비밀번호 찾기</a></li>
<li><a href="user/findPass/user_result_pass.do">사용자 비밀번호 재설정</a></li>
<li><a href="user/findId/business_find_id.do">사업자 아이디 찾기</a></li>
<li><a href="user/findId/business_result_id.do">사업자 아이디 찾기결과</a></li>
<li><a href="user/findPass/business_find_pass.do">사업자 비밀번호 찾기</a></li>
<li><a href="user/findPass/business_result_pass.do">사업자 비밀번호 재설정</a></li>
<hr>
<li><a href="user/hotel/hotelSearch/user_hotel_search.do">호텔 검색</a></li>
<li><a href="user/hotel/hotelSearch/user_hotel_search_map.do">호텔검색 지도상세</a></li>
<li><a href="user/hotel/hotelInfo/user_hotel_info.do">호텔 상세</a></li>
</ul>
</body>
</html>