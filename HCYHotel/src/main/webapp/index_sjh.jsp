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
<li><a href="user/login/user_login.do">로그인</a></li>
<hr>
<li><a href="user/hotel/hotelSearch/user_hotel_search.do">호텔 검색</a></li>
<li><a href="user/hotel/hotelSearch/user_hotel_search_map.do">호텔검색 지도상세</a></li>
<li><a href="user/hotel/room/user_room_list.do">객실 리스트</a></li>
<li><a href="user/hotel/room/user_room_info.do">객실 상세</a></li>
<li><a href="user/hotel/room/user_room_reser.do">객실 예약</a></li>
<li><a href="user/hotel/room/user_roombooking.do">객실 결제</a></li>
</ul>
</body>
</html>