<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="다이닝 상세"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이닝 | HCYCombined</title>
<link rel="icon" href="http://192.168.10.145/mvc_prj/common/main/favicon.png">
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">
#content_area{
position: absolute;
left: 20%;
top: 180px;
}


/* h3{
position: absolute;
left: 20%;
top: 180px;
/* font-family: ; */
} */
</style>
<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>
<body>
<!-- header -->
<jsp:include page="../include/header.jsp"/>
<div id="content_area">
호텔 > 다이닝명
<div id="diningName" class="grid-gap3">
<h3>여기는다이닝명이들어오는자리에용</h3>
</div>

<div id="dining_content">
<input type="button" class="btn btn-secondary" value="후기" id="btn_review"/>
<input type="button" class="btn btn-info" value="예약하기" id="btn_booking"/>
뭐뭐 들어와야하지
위치 호텔명 
다이닝명(이 위에 있는거고)
운영시간
수용인원
정보
<input type="button" class="btn btn-secondary btn-sm" value="메뉴 보기" id="btn_menu"/>

</div>
</div>

<!-- footer -->
<div id="footer">
<jsp:include page="../include/footer.jsp"/>
</div>
</body>
</html>