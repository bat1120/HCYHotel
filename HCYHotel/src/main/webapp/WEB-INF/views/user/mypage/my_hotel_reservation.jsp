<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko" class="noIE">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1280">
<meta name="format-detection" content="telephone=no">

<title>나의 호텔예매내역 - 마이페이지 | HCYCombined</title>

<link rel="shortcut icon" href="/system/images/favicon.ico">
<link rel="apple-touch-icon" href="/system/images/favicon.ico">
<!-- style -->
<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/phoenix/common.min.css">
<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/phoenix/contents.min.css">
<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- js -->
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-1J0VYQ4NSJ&amp;cx=c&amp;_slc=1"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script src="/js/libs/jquery-3.3.1.min.js"></script>
<script src="/js/libs/jquery-ui/jquery-ui.min.js"></script>
<script src="/js/libs/jquery.form.min.js"></script>
<script src="/js/libs/jquery.datepicker.extension.range.modified.js"></script>
<script src="/js/libs/jquery.bxslider.min.js"></script>
<script src="/js/libs/swiper.min.js"></script>
<script src="/js/pwUtil.js"></script>
<script src="/js/ko/ui-common.js"></script>
<link rel="stylesheet"
	href="https://unpkg.com/nprogress@0.2.0/nprogress.css">
<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/phoenix/system.css">

<script type="text/javascript"
	src="https://unpkg.com/nprogress@0.2.0/nprogress.js"></script>
<script type="text/javascript" src="/system/js/libs/es6-promise.min.js"></script>
<script type="text/javascript" src="/system/js/libs/lodash.min.js"></script>
<script type="text/javascript" src="/system/js/libs/moment.min.js"></script>
<script type="text/javascript" src="/system/js/libs/moment.locale.ko.js"></script>
<script type="text/javascript" src="/system/js/libs/axios.min.js"></script>
<script type="text/javascript" src="/system/js/libs/vue.min.js"></script>

<script type="text/javascript" src="/system/js/system.js"></script>
<script type="text/javascript" src="/system/js/system.utils.js"></script>
<script type="text/javascript" src="/system/js/system.axios.js"></script>
<script type="text/javascript" src="/system/js/system.eventBus.js"></script>
<script type="text/javascript" src="/system/js/system.filters.js"></script>

<script type="text/javascript"
	src="/system/js/components/common/datepicker.component.js"></script>
<script type="text/javascript"
	src="/system/js/components/common/full-datepicker.component.js"></script>
<script type="text/javascript"
	src="/system/js/components/common/spinner.component.js"></script>
<script type="text/javascript"
	src="/system/js/components/common/pagination.component.js"></script>
<script type="text/javascript"
	src="/system/js/components/common/board.component.js"></script>

<script type="text/javascript" src="/system/js/custom.js"></script>
<script type="text/javascript" src="/system/js/libs/history.min.js"></script>

<script type="text/javascript" src="/payment/js/easypay_payment.js"></script>
<script type="text/javascript"
	src="https://pg.easypay.co.kr/webpay/EasypayCard_Web.js"></script>


	<!-- header -->
	<jsp:include page="../include/header.jsp" />
	
	<script type="text/javascript">
	$(function(){
		
	});//ready
	
	
	</script>
	
<div id="content-main" class="content-main">
<div >
<h3 class="content-main-title" style="margin-top:7%; ">나의 호텔예약내역</h3>
<table border="1" class="board-list" style="margin-bottom: 20px; width:1200px; margin-left: 360px;">
				<caption>
					
				</caption>
				<colgroup>
					<col style="width: 100px;">
					<col style="width: 200px;">
					<col style="width: 200px;">
					<col style="width: 200px;">
					<col style="width: 100px;">
					<col style="width: 80px;">
					<col style="width: 120px;">
					<col style="width: 80px;">
					<col style="width: 100px;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">에약번호</th>
						<th scope="col">에약날짜</th>
						<th scope="col">호텔/객실정보</th>
						<th scope="col">예약기간</th>
						<th scope="col">예약자 성함</th>
						<th scope="col">인원수</th>
						<th scope="col">결제금액</th>
						<th scope="col">예약상태</th>
						<th scope="col"></th>
					</tr>
				</thead>
				<tbody>
				<td>번호</td>
				<td>번호</td>
				<td>번호</td>
				<td>번호</td>
				<td>번호</td>
				<td>번호</td>
				<td>번호</td>
				<td>번호</td>
				<td><input type="button" class="btn btn-info btn" id="btn_review" value="리뷰쓰기"/></td>
				</tbody>
			</table>

</div>
</div>
	

	<!-- footer -->
	<jsp:include page="../include/footer.jsp" />

	</div>
	<iframe allow="join-ad-interest-group" data-tagging-id="AW-796355633"
		data-load-time="1701769204166" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/796355633?random=1701769204151&amp;cv=11&amp;fst=1701769204151&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3bt0&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%9C%98%EB%8B%89%EC%8A%A4%20%ED%98%B8%ED%85%94%EC%95%A4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8&amp;auid=1184424877.1701769204&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe>



</body>
</html>