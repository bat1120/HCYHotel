<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다이닝리뷰 테슷흐 테슷흐</title>
<link rel="icon" href="http://192.168.10.145/mvc_prj/common/main/favicon.png">
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<style type="text/css">
table{
text-align: left;
width:400px;
margin-left: 20%;
margin-top: 20%;
}

tr{

}

</style>
<script type="text/javascript">
$(function(){
	
});//ready
</script>
</head>
<body>

<!-- header -->
<jsp:include page="../../include/header.jsp"/>

<table>
<tr style="text-align: left;">
	<td colspan="3"><c:out value="다이닝이름" /></td>
	<td><c:out value="호텔이름"/></td>
	<td><c:out value="평점."/></td>
	<td rowspan="2"><input type="button" class="btn btn-info btn-sm" value="삭제"/></td>
</tr>
<tr style="text-align: left;">
	<td colspan="3">내용 떠야댐</td>
	<td></td>
	<td></td>
</tr>	
<tr style="text-align: left;">
	<td colspan="3"><c:out value="다이닝이름" /></td>
	<td><c:out value="호텔이름"/></td>
	<td><c:out value="평점."/></td>
	<td rowspan="2"><input type="button" class="btn btn-info btn-sm" value="삭제"/></td>
</tr>
<tr style="text-align: left;">
	<td colspan="3">내용 떠야댐</td>
	<td></td>
	<td></td>
</tr>
</table>

<jsp:include page="../../include/footer.jsp"/>
</body>
</html>