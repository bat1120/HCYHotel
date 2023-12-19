<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="공지사항 상세"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko" class="noIE">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1280">
<meta name="format-detection" content="telephone=no">

<title>공지사항 | HCYCombined</title>

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

<script type="text/javascript">
	/* (DEVELOP ONLY) Enable Vue devtools */
	Vue.prototype._ssrNode = function() {
		return null;
	};
	Vue.config.debug = true;
	Vue.config.devtools = true;

	/* NProgress Config */
	NProgress.configure({
		showSpinner : false
	});
</script>

<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script',
			'https://www.google-analytics.com/analytics.js', 'ga');

	ga('create', 'UA-87590871-1', 'auto');
	ga('send', 'pageview');
</script>


<!-- Global site tag (gtag.js) - Google Ads: 796355633 휘닉스 마케팅팀 김하나과장 요청 20190926-->
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=AW-796355633"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'AW-796355633');
</script>



<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/796355633/?random=1701771796905&amp;cv=11&amp;fst=1701771796905&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3bt0&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%2F14304%3F%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;ref=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%9C%98%EB%8B%89%EC%8A%A4%20%ED%98%B8%ED%85%94%EC%95%A4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8&amp;auid=1184424877.1701769204&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script>
</head>
<body cz-shortcut-listen="true">

	<a href="#content-main" class="skip-navi">본문 바로가기</a>

	<script type="text/x-template" id="globalMessageboxAlertTemplate">
            <article id="commonAlert" class="common-pop default-pop is-layer" style="display:none;">
                <!-- 팝업 body // -->
                <div class="common-pop-body pop-class-name common-message-box-pop-body">
                    <header class="common-pop-title">
                        <h1 class="title">알림</h1>
                        <a id="commonAlertClose" href="javascript:;" class="common-message-box-close">취소</a>
                    </header>
                    <div id="alertMessageContent" class="common-pop-content common-message-box-pop-content">
                    </div>
                    <div class="common-pop-btn-area">
                        <button id="commonAlertOk" type="button" class="btn-action primary">확인</button>
                    </div>
                </div>
                <!-- // 팝업 body -->
            </article>
        </script>

	<script type="text/x-template" id="globalMessageboxConfirmTemplate">
            <article id="commonConfirm" class="common-pop default-pop is-layer" style="display:none;">
                <!-- 팝업 body // -->
                <div class="common-pop-body pop-class-name common-message-box-pop-body">
                    <header class="common-pop-title">
                        <h1 class="title">알림</h1>
                        <a id="commonConfirmClose" href="javascript:;" class="common-message-box-close">닫기</a>
                    </header>
                    <div id="confirmMessageContent" class="common-pop-content common-message-box-pop-content">
                    </div>
                    <div class="common-pop-btn-area">
                        <button id="commonConfirmCancel" type="button" class="btn-action">취소</button>
                        <button id="commonConfirmOk" type="button" class="btn-action primary">확인</button>
                    </div>
                </div>
                <!-- // 팝업 body -->
            </article>
        </script>
	<!-- header -->
	<jsp:include page="../include/header.jsp" />


	<!-- content-main : 본문 페이지 영역 // -->
	<div id="content-main" class="content-main"
		style="margin-top: 4%; margin-bottom: 8%">
		<!-- #BREADCRUMB -->
		<div class="common-content customer-notice">
			<h3 class="content-main-title">공지사항</h3>

			<div class="board-detail">
				<div class="detail-header">
					<h4 class="detail-tit">
						<span class="tit-text"><c:out value="${ notice.title }"/></span>
					</h4>
					<div class="detail-info">작성일 <c:out value="${ notice.inputDate }"/>&nbsp;&nbsp;&nbsp;조회수 <c:out value="${ notice.viewCnt }"/></div>
				</div>
				<div class="detail-content" style="overflow: auto;">
				<c:out value="${ notice.content }"/>
				</div>
			</div>

			<div class="page-foot">
				<input type="button" id="btn_list" value="목록" class="btn btn-dark" />
				<!-- 	<a
					href="/page/customer/notice?q%5BhmpgDivCd%5D=&amp;page=1&amp;size=10"
					class="btn-action light primary">목록</a> -->
			</div>
		</div>
	</div>
	<!-- // content-main -->
	</section>
	<!-- // section-container -->

<script type="text/javascript">
$(function(){
	$("#btn_list").click(function(){
		location.href="user_notice.do"
	});//click
	
	
});//ready
</script>
	<!-- footer // -->
	<jsp:include page="../include/footer.jsp" />

	</div>
	<iframe allow="join-ad-interest-group" data-tagging-id="AW-796355633"
		data-load-time="1701771796915" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/796355633?random=1701771796905&amp;cv=11&amp;fst=1701771796905&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3bt0&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%2F14304%3F%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;ref=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%9C%98%EB%8B%89%EC%8A%A4%20%ED%98%B8%ED%85%94%EC%95%A4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8&amp;auid=1184424877.1701769204&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe>



</body>
</html>