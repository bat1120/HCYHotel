<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="마이페이지_내가작성한객실리뷰목록"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>나의 호텔 리뷰 | 마이페이지 | HCYCombined</title>
<meta name="google-site-verification"
	content="VkreCCSKSrs9fjX7MsNkgq19WgqeUgagNEALXTbKgxI">
<meta name="keywords" content="호텔, 호텔예약, offers, 패키지, 룸, 객실정보">
<meta name="description" content="안녕하세요. 글래드 호텔입니다.">
<meta property="og:title" content="안녕하세요. 글래드 호텔입니다.">
<meta property="og:description" content="해당정보로 이동합니다.">
<meta property="og:url"
	content="https://www.glad-hotels.com/hub/review/list.do?page=1&amp;searchSysCode=GDMP">
<meta property="og:image"
	content="https://www.glad-hotels.com/static/pc/assets/img/header/logo_glad.svg">
<meta name="naver-site-verification"
	content="05b04e6fdcf298a488ce018e487ddc5917d07889">


<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/glad/common.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
<!-- page별 css 호출-->

<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/glad/page.sub.css">
<link rel="stylesheet"
	href="http://localhost/HCYHotel/common/user/css/glad/page.contact.css">
<link rel="stylesheet"
	href="http://localhost/sist/common/user/css/glad/page.mypage.css">

<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-0V0THHH2Y0&amp;l=dataLayer&amp;cx=c"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-KFFSZ2J"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="/static/pc/assets/js/libs/moment.locales.js"></script>
<script type="text/javascript"
	src="/static/pc/assets/js/libs/datepicker.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script type="text/javascript" src="/static/bluewaves/js/date_util.js"></script>
<script type="text/javascript" src="/static/bluewaves/js/num_util.js"></script>
<script type="text/javascript" src="/static/bluewaves/js/string_util.js"></script>
<script type="text/javascript"
	src="/static/bluewaves/js/bluewaves_common.js"></script>


<!-- Google Tag Manager -->
<script>
	(function(w, d, s, l, i) {
		w[l] = w[l] || [];
		w[l].push({
			'gtm.start' : new Date().getTime(),
			event : 'gtm.js'
		});
		var f = d.getElementsByTagName(s)[0], j = d.createElement(s), dl = l != 'dataLayer' ? '&l='
				+ l
				: '';
		j.async = true;
		j.src = 'https://www.googletagmanager.com/gtm.js?id=' + i + dl;
		f.parentNode.insertBefore(j, f);
	})(window, document, 'script', 'dataLayer', 'GTM-KFFSZ2J');
</script>
<!-- End Google Tag Manager -->

<!-- Google tag (gtag.js) -->
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-LGDELHH59B"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());
	gtag('config', 'G-LGDELHH59B');
</script>

<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/11266833036/?random=1701851733397&amp;cv=11&amp;fst=1701851733397&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45He3bt0v856412692&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDMP&amp;ref=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDYD&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=GLAD%20HOTELS&amp;auid=401033586.1701851391&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;rfmt=3&amp;fmt=4"></script>
<meta http-equiv="origin-trial"
	content="A+xK4jmZTgh1KBVry/UZKUE3h6Dr9HPPioFS4KNCzify+KEoOii7z/goKS2zgbAOwhpZ1GZllpdz7XviivJM9gcAAACFeyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiQXR0cmlidXRpb25SZXBvcnRpbmdDcm9zc0FwcFdlYiIsImV4cGlyeSI6MTcwNzI2Mzk5OSwiaXNUaGlyZFBhcnR5Ijp0cnVlfQ==">
<script attributionsrc="" type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/11266833036/?random=1701851733402&amp;cv=11&amp;fst=1701851733402&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45He3bt0v856412692&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDMP&amp;ref=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDYD&amp;label=ystMCOa0-80YEIz1uPwp&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=GLAD%20HOTELS&amp;value=0&amp;bttype=purchase&amp;auid=401033586.1701851391&amp;fledge=1&amp;capi=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;rfmt=3&amp;fmt=4"></script>
</head>
<body class="" cz-shortcut-listen="true">
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KFFSZ2J"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->

	<!-- 본인인증 여부 체크 -->


	<!-- header -->
	<jsp:include page="../../include/header.jsp" />

	<script type="text/javascript">
		$(document).ready(function() {
			reviewSwiper();
		});

		function reviewSwiper() {
			var swiper = new Swiper(".reviewSwiper",
					{
						slidesPerView : 'auto',
						spaceBetween : 200,
						loop : false,
						pagination : {
							el : ".swiper-pagination"
						},
						navigation : {
							nextEl : ".swiper-button-next",
							prevEl : ".swiper-button-prev",
						},
						on : {
							init : function() {
								$('.swiper-slide').addClass('changed');
								$('.custom-fraction .current').text(
										this.realIndex + 1);
								$('.custom-fraction .all').text(
										this.loopedSlides);
							},

							slideChangeTransitionStart : function() {
								$('.swiper-slide').addClass('changing');
								$('.swiper-slide').removeClass('changed');

								// 페이지 넘어갈 때마다 fraction 현재 인덱스 변경
								$('.custom-fraction .current').text(
										this.realIndex + 1);
							},
							slideChangeTransitionEnd : function() {
								$('.swiper-slide').removeClass('changing');
								$('.swiper-slide').addClass('changed');
							}
						},
					});
		}

		function fncSearch(code) {
			$("#searchSysCode").val(code);
			$("#page").val("1");

			jQuery("#reviewListForm").attr("action", "/hub/review/list.do");
			jQuery("#reviewListForm").attr("method", "get");
			jQuery("#reviewListForm").submit();
		}

		function fncPage(page) {
			jQuery("#page").val(page);
			jQuery("#reviewListForm").attr("method", "get");
			jQuery("#reviewListForm").submit();
		}
	</script>

	<main class="page-container" id="mypage-review">
		<!-- begin::subpage-intro -->
		<form name="reviewListForm" id="reviewListForm" method="get">
			<input type="hidden" id="page" name="page" value="1"> 
			<input
				type="hidden" id="searchSysCode" name="searchSysCode" value="GDMP">

				<div class="page-component">
						<h2 class="header-title">
						나의 객실후기
						</h2>
				</div>
			<!-- end::subpage-intro -->
			<!-- begin::subpage-body -->
			<div class="subpage-body page-review">
				<div class="contact-container">
					<section class="contact-section">

						<div class="page-review review-contact">
							<div class="section-body">
								<div class="review-list-wrap">
									<ul class="review-box">

										<li>
											<div class="review-item">

												리뷰내용 들어와잇엇옹
											</div>
											<div class="review-rating">

												<p class="rv-hotel">GLAD MAPO</p>

												<p class="rv-point point10">5.0</p>
												<!-- //클래스명 point0~10별점따라 이미지 변경됨 -->
											</div>
											
										</li>

									</ul>
								</div>
							</div>

					<!-- 페이지네이션 있던 자리... -->
						</div>

					</section>
				</div>

				<!-- 데이터없을경우 -->

				<!-- end::데이터없을경우 -->
			</div>
			<!-- end::subpage-body -->
		</form>
	</main>

	<!-- footer -->
	<jsp:include page="../../include/footer.jsp"/>

	<!-- page::script -->
	<script type="text/javascript"
		src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
	<script type="text/javascript" src="/static/pc/assets/js/page.libs.js"></script>





	<script type="text/javascript"
		src="/static/pc/assets/js/page.common.js"></script>


	<script type="text/javascript" src="/static/pc/assets/js/page.sub.js"></script>
	<iframe allow="join-ad-interest-group" data-tagging-id="AW-11266833036"
		data-load-time="1701851733398" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/11266833036?random=1701851733397&amp;cv=11&amp;fst=1701851733397&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45He3bt0v856412692&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDMP&amp;ref=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDYD&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=GLAD%20HOTELS&amp;auid=401033586.1701851391&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0"></iframe>
	<iframe allow="join-ad-interest-group"
		data-tagging-id="AW-11266833036/ystMCOa0-80YEIz1uPwp"
		data-load-time="1701851733407" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/11266833036?random=1701851733402&amp;cv=11&amp;fst=1701851733402&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45He3bt0v856412692&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDMP&amp;ref=https%3A%2F%2Fwww.glad-hotels.com%2Fhub%2Freview%2Flist.do%3Fpage%3D1%26searchSysCode%3DGDYD&amp;label=ystMCOa0-80YEIz1uPwp&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=GLAD%20HOTELS&amp;value=0&amp;bttype=purchase&amp;auid=401033586.1701851391&amp;fledge=1&amp;capi=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0"></iframe>
	<!-- //page::script -->
	<!-- page별 Js 호출-->


</body>
</html>