<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="문의사항 상세"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko" class="noIE">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=1280">
<meta name="format-detection" content="telephone=no">

<title>공지사항 &lt; 고객센터 | 휘닉스 호텔앤드리조트</title>

<link rel="shortcut icon" href="/system/images/favicon.ico">
<link rel="apple-touch-icon" href="/system/images/favicon.ico">
<!-- style -->
<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/phoenix/common.min.css">
<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/phoenix/contents.min.css">

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
	<div id="content-main" class="content-main" style="margin-top: 4%; margin-bottom: 8%">
		<!-- #BREADCRUMB -->
		<div class="common-content customer-notice">
			<h3 class="content-main-title">문의사항</h3>

			<div class="board-detail">
				<div class="detail-header">
					<h4 class="detail-tit">
						<span class="board-flag-cate type1"> 평창</span> <span
							class="tit-text">[태기산CC] 2023년 폐장 안내</span>
					</h4>
					<div class="detail-info">등록일 : 2023-10-08</div>
				</div>
				<div class="detail-content" style="overflow: auto;">
					<p></p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">안녕하십니까</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">23년
							태기산CC의 운영 종료 일정을 안내드립니다.</span>
					</p>
					<br>

					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&lt;</span><span
							style="font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">운영
							일정</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&gt;</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(255, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">•
						</span><span
							style="font-weight: bold; font-size: 12pt; color: rgb(255, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">폐장일
							: 2023년 11월 6일(월)</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="font-weight: bold; font-size: 12pt; color: rgb(255, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"></span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(255, 0, 0); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">-
							11월 5일(일)까지 운영</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">10H
							정상운영</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">※
							위 일정은 상황에 따라 변동될 수 있습니다.</span>
					</p>
					<br>

					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&lt;</span><span
							style="font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">예약
							방법</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&gt;</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="letter-spacing: 0pt; font-weight: bold; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-size: 12pt; color: rgb(0, 0, 0); font-family: 돋움;">9H(10H)
							/ 18H(10H*2) 선택제</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">3주전(수)
							9시 선착순 예약</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">전화
							/ 인터넷 예약 가능</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">&nbsp;-
						</span><span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">전화예약
							: 예약실(주중 09:00~17:00, 주말/공휴일 미운영)</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">&nbsp;-
						</span><span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">인터넷예약
							: 휘닉스평창 홈페이지</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">※
							예약 변경 및 취소는 예약일기준 주중 3일전 / 주말 4일전 17시까지이며, 이후 취소 시 위약 규정이 적용됩니다.</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">※
							무작위예약 및 노쇼방지를 위하여 위약기간은 차년도로 이월되오니, 위약규정을 준수하여 주시기 바랍니다.</span>
					</p>
					<br>

					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&lt;</span><span
							style="font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">이벤트
							운영</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&gt;</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">현재
							시행중인 이벤트는 폐장일까지 동일하게 적용됩니다</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">.</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="font-size: 12pt; color: rgb(0, 0, 0); font-family: 돋움;">
							&nbsp; </span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&lt;</span><span
							style="font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">식음
							운영</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&gt;</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">11월1일(수)부터&nbsp;식음
							운영 축소에 따라 식사류는 컵라면과 주먹밥만 가능하며, 커피/음료/스낵류는 모두 가능하오니 이용에 착오 없으시기
							바랍니다.</span>
					</p>
					<br>

					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&lt;</span><span
							style="font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">기타
							사항</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&gt;</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">기온하강에
							따라 코스 및 카트도로의 결빙구간이 예상되오니 안전에 유의하여 주시기 바랍니다.</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">진행요원의
							안내에 따라 경기규정 및 주의사항을 준수하여 안전한 플레이하시기 바랍니다.</span>
					</p>
					<br>

					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&lt;</span><span
							style="font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">예약
							문의</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; color: rgb(0, 0, 255); background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-family: 돋움;">&gt;</span>
					</p>
					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">•
						</span><span
							style="letter-spacing: 0pt; font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">1577-0755
							#2(1-예약실, 2-프런트, 3-진행실)</span>
					</p>
					<br>

					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">올
							한해도 변함없는 성원에 진심으로 감사드리며, 내년에는 더욱 발전 된 모습으로 다시 찾아뵙겠습니다.</span>
					</p>
					<br>

					<p class="0"
						style="background: rgb(255, 255, 255); line-height: 180%;">
						<span
							style="font-weight: bold; font-size: 12pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); font-family: 돋움;">감사합니다.</span>
					</p>
					<p></p>
				</div>
			</div>

			<div class="page-foot">
			<input type="button" id="btn_list" value="목록" class="btn btn-dark btn-sm"/>
			<!-- 	<a
					href="/page/customer/notice?q%5BhmpgDivCd%5D=&amp;page=1&amp;size=10"
					class="btn-action light primary">목록</a> -->
			</div>
		</div>
	</div>
	<!-- // content-main -->
	</section>
	<!-- // section-container -->


	<!-- footer // -->
	<jsp:include page="../include/footer.jsp" />

	</div>
	<iframe allow="join-ad-interest-group" data-tagging-id="AW-796355633"
		data-load-time="1701771796915" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/796355633?random=1701771796905&amp;cv=11&amp;fst=1701771796905&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3bt0&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%2F14304%3F%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;ref=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%9C%98%EB%8B%89%EC%8A%A4%20%ED%98%B8%ED%85%94%EC%95%A4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8&amp;auid=1184424877.1701769204&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe>



</body>
</html>