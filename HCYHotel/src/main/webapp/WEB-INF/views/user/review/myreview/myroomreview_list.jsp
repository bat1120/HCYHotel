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


<link rel="stylesheet" href="http://localhost/HCYHotel/common/user/css/glad/common.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
<!-- page별 css 호출-->

<link rel="stylesheet" href="http://localhost/HCYHotel/common/user/css/glad/page.sub.css">
<link rel="stylesheet" href="http://localhost/HCYHotel/common/user/css/glad/page.contact.css">
<link rel="stylesheet" href="http://localhost/sist/common/user/css/glad/page.mypage.css">

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
	<jsp:include page="../../include/header.jsp"/>

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
			<input type="hidden" id="page" name="page" value="1"> <input
				type="hidden" id="searchSysCode" name="searchSysCode" value="GDMP">

			<div class="subpage-intro" data-intro="default">
				<div class="page-component">
					<header class="intro-header">
						<h2 class="header-title">
							REVIEW
							<!-- REVIEW -->
						</h2>
						<p class="intro-description">






							패키지 이용에 대한 소중한 경험을 나눠주세요.<br>리뷰를 남겨 주시면 추첨을 통해 소정의 상품을 드립니다.
							<!-- 패키지 이용에 대한 소중한 경험을 나눠주세요.<br>리뷰를 남겨 주시면 추첨을 통해 소정의 상품을 드립니다. -->
						</p>
					</header>
				</div>
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

												<p class="rv-id">
													yeun****<span class="rv-date">2023.12.01</span>
												</p>
												<p class="rv-title">침대가&nbsp;진짜&nbsp;편하고&nbsp;위치가&nbsp;너무너무&nbsp;좋아요</p>
												<p class="rv-cont">
													공덕역&nbsp;출구&nbsp;바로&nbsp;나와서&nbsp;엎어지니까&nbsp;입구더라구요?&nbsp;김포공항에서&nbsp;오기&nbsp;진짜&nbsp;편하고&nbsp;여행다니기도&nbsp;위치가&nbsp;제격이에요!!<br>프론트&nbsp;직원분들도&nbsp;되게&nbsp;친절하고&nbsp;룸&nbsp;컨디션도&nbsp;엄청&nbsp;좋았어요.&nbsp;근데&nbsp;침대가&nbsp;진짜&nbsp;미쳤음.&nbsp;침대&nbsp;너무&nbsp;좋고&nbsp;꿀잠자다&nbsp;못해&nbsp;체크아웃&nbsp;하기가&nbsp;너무&nbsp;슬플정도였어요.&nbsp;다음에도&nbsp;서울쪽에서&nbsp;호텔&nbsp;잡으면&nbsp;다음엔&nbsp;글래드&nbsp;여의도로&nbsp;가볼까&nbsp;생각중입니다ㅎㅎ
												</p>
											</div>
											<div class="review-rating">

												<p class="rv-hotel">GLAD MAPO</p>

												<p class="rv-point point10">5.0</p>
												<!-- //클래스명 point0~10별점따라 이미지 변경됨 -->
											</div>
											<div class="review-imgbox" data-toggle="popup"
												data-target="#popup-review-detail0"></div>
										</li>

										<li>
											<div class="review-item">

												<p class="rv-id">
													soly***<span class="rv-date">2023.11.30</span>
												</p>
												<p class="rv-title">가성비최고의&nbsp;&nbsp;꿀잠&nbsp;글래드!&nbsp;</p>
												<p class="rv-cont">
													친구들과&nbsp;파티하기&nbsp;최고인&nbsp;글래드&nbsp;마포&nbsp;글래드하우스~<br>위치도&nbsp;최고&nbsp;침구류도&nbsp;최고!!&nbsp;직원들의&nbsp;친철한&nbsp;응대에&nbsp;감동감동&nbsp;
												</p>
											</div>
											<div class="review-rating">

												<p class="rv-hotel">GLAD MAPO</p>

												<p class="rv-point point10">5.0</p>
												<!-- //클래스명 point0~10별점따라 이미지 변경됨 -->
											</div>
											<div class="review-imgbox" data-toggle="popup"
												data-target="#popup-review-detail1"></div>
										</li>

										<li>
											<div class="review-item">

												<p class="rv-id">
													jung*****<span class="rv-date">2023.11.30</span>
												</p>
												<p class="rv-title">포근한&nbsp;침구,&nbsp;합리적&nbsp;위치!</p>
												<p class="rv-cont">
													글래드&nbsp;호텔&nbsp;중&nbsp;가장&nbsp;애정하는&nbsp;글래드&nbsp;마포!!<br>회사랑도&nbsp;가깝고&nbsp;공항철도와&nbsp;바로&nbsp;연결되어있어&nbsp;호캉스&nbsp;즐기러&nbsp;자주&nbsp;가는&nbsp;곳입니다ㅎㅎ<br>
													<br>제가&nbsp;이용한&nbsp;패키지는&nbsp;포토이즘&nbsp;촬영권&nbsp;제공하는&nbsp;글래드&nbsp;스튜디오&nbsp;패키지,&nbsp;농심&nbsp;과자&nbsp;제공하는&nbsp;서머&nbsp;쿨캉스&nbsp;패키지였는데요!!<br>
													<br>친구랑&nbsp;너~무&nbsp;예쁜&nbsp;사진도&nbsp;찰칵&nbsp;남기고&nbsp;잘&nbsp;쉬었습니다!&gt;.&lt;&nbsp;사진&nbsp;맛집&nbsp;글래드<br>다음에&nbsp;또&nbsp;호캉스&nbsp;하러&nbsp;방문할게요!!
												</p>
											</div>
											<div class="review-rating">

												<p class="rv-hotel">GLAD MAPO</p>

												<p class="rv-point point10">5.0</p>
												<!-- //클래스명 point0~10별점따라 이미지 변경됨 -->
											</div>
											<div class="review-imgbox" data-toggle="popup"
												data-target="#popup-review-detail2">

												<img
													src="/util/file/download.do?fileSn=915875&amp;subFileSn=915876&amp;sysCode=GLADHOTEL"
													alt="IMG_7723.jpeg"> <img
													src="/util/file/download.do?fileSn=915875&amp;subFileSn=915877&amp;sysCode=GLADHOTEL"
													alt="IMG_7724.jpeg">

											</div>
										</li>

										<li>
											<div class="review-item">

												<p class="rv-id">
													imal***********<span class="rv-date">2023.11.30</span>
												</p>
												<p class="rv-title">합리적&nbsp;가격!&nbsp;위치!</p>
												<p class="rv-cont">
													일요일&nbsp;싸이콘서트&nbsp;갔다가&nbsp;다음날&nbsp;출근을&nbsp;위해&nbsp;숙박한&nbsp;글래드&nbsp;마포!&nbsp;<br>공덕역에&nbsp;바로&nbsp;연결되어있어서&nbsp;투숙했는데&nbsp;깔끔하고&nbsp;다음날&nbsp;아침&nbsp;마키노차야에서&nbsp;먹은&nbsp;조식도&nbsp;가격대비&nbsp;맛있었습니다~<br>싸이&nbsp;콘서트에서&nbsp;물에&nbsp;흠뻑&nbsp;젖어서&nbsp;몸살기가&nbsp;있엇는데&nbsp;따뜻한&nbsp;물로&nbsp;샤워하고&nbsp;푹신한&nbsp;이불&nbsp;속에서&nbsp;자고&nbsp;일어나니까&nbsp;피곤함이&nbsp;사라졌어요ㅎㅎ<br>프론트&nbsp;직원분들도&nbsp;친절하셨고&nbsp;편의점&nbsp;사장님도&nbsp;잘&nbsp;안들어오는&nbsp;과자라며&nbsp;몰래&nbsp;뒤에서&nbsp;꺼내서&nbsp;주셨는데&nbsp;쏘스윗ㅎㅎ&nbsp;
												</p>
											</div>
											<div class="review-rating">

												<p class="rv-hotel">GLAD MAPO</p>

												<p class="rv-point point10">5.0</p>
												<!-- //클래스명 point0~10별점따라 이미지 변경됨 -->
											</div>
											<div class="review-imgbox" data-toggle="popup"
												data-target="#popup-review-detail3">

												<img
													src="/util/file/download.do?fileSn=915833&amp;subFileSn=915834&amp;sysCode=GLADHOTEL"
													alt="KakaoTalk_20231130_184844164_17.jpg"> <img
													src="/util/file/download.do?fileSn=915833&amp;subFileSn=915835&amp;sysCode=GLADHOTEL"
													alt="KakaoTalk_20231130_184844164_18.jpg"> <img
													src="/util/file/download.do?fileSn=915833&amp;subFileSn=915836&amp;sysCode=GLADHOTEL"
													alt="KakaoTalk_20231130_184844164_19.jpg"> <img
													src="/util/file/download.do?fileSn=915833&amp;subFileSn=915837&amp;sysCode=GLADHOTEL"
													alt="KakaoTalk_20231130_184844164_21.jpg">

											</div>
										</li>

										<li>
											<div class="review-item">

												<p class="rv-id">
													imal***********<span class="rv-date">2023.11.30</span>
												</p>
												<p class="rv-title">미친&nbsp;뷰와&nbsp;화장실!</p>
												<p class="rv-cont">
													친구들과&nbsp;연말&nbsp;파티를&nbsp;하려고&nbsp;찾다가&nbsp;가격,&nbsp;위치&nbsp;모두&nbsp;합리적인&nbsp;글래드&nbsp;마포를&nbsp;방문했는데&nbsp;기대이상으로&nbsp;너무&nbsp;좋았습니다!<br>방&nbsp;안에&nbsp;욕조,&nbsp;샤워부스가&nbsp;따로있는&nbsp;화장실&nbsp;1개와&nbsp;거실쪽&nbsp;손님용&nbsp;화장실로&nbsp;친구들끼리&nbsp;불편하지&nbsp;않게&nbsp;사용할&nbsp;수&nbsp;있었고&nbsp;겨울이지만&nbsp;경의선숲길&nbsp;뷰가&nbsp;정말&nbsp;너~~무&nbsp;예뻤습니다!<br>공덕역&nbsp;9번출에서&nbsp;바로&nbsp;이어져&nbsp;있어&nbsp;뚜벅이에게는&nbsp;100점!&nbsp;너무&nbsp;즐거운&nbsp;연말파티였습니다~
												</p>
											</div>
											<div class="review-rating">

												<p class="rv-hotel">GLAD MAPO</p>

												<p class="rv-point point10">5.0</p>
												<!-- //클래스명 point0~10별점따라 이미지 변경됨 -->
											</div>
											<div class="review-imgbox" data-toggle="popup"
												data-target="#popup-review-detail4">

												<img
													src="/util/file/download.do?fileSn=915813&amp;subFileSn=915814&amp;sysCode=GLADHOTEL"
													alt="KakaoTalk_20231130_184844164_15.jpg"> <img
													src="/util/file/download.do?fileSn=915813&amp;subFileSn=915815&amp;sysCode=GLADHOTEL"
													alt="KakaoTalk_20231130_184844164_13.jpg"> <img
													src="/util/file/download.do?fileSn=915813&amp;subFileSn=915816&amp;sysCode=GLADHOTEL"
													alt="KakaoTalk_20231130_184844164_16.jpg">

											</div>
										</li>

									</ul>
								</div>
							</div>

							<nav class="page-navigation">
								<ul class="pagination">




									<li class="page-item"><a class="page-link"><i
											class="icon-pagination-prev">Previous</i></a></li>


									<li class="page-item is-active"><a class="page-link"
										href="javascript:;"><span class="text">1</span></a></li>


									<li class="page-item"><a class="page-link"
										href="javascript:fncPage(2);"><span class="text">2</span></a></li>


									<li class="page-item"><a class="page-link"
										href="javascript:fncPage(3);"><span class="text">3</span></a></li>


									<li class="page-item"><a class="page-link"
										href="javascript:fncPage(4);"><span class="text">4</span></a></li>


									<li class="page-item"><a class="page-link"
										href="javascript:fncPage(5);"><span class="text">5</span></a></li>


									<li class="page-item"><a class="page-link"
										href="javascript:fncPage(6);"><span class="text">6</span></a></li>


									<li class="page-item"><a class="page-link"
										href="javascript:fncPage(7);"><span class="text">7</span></a></li>


									<li class="page-item"><a class="page-link"><i
											class="icon-pagination-next">Next</i></a></li>





								</ul>
							</nav>
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
	<!--(FOOTER 최종수정일 : 2023-10-23 11:39)-->
	<footer class="glad-footer">
		<div class="page-component">
			<div class="footer-row">
				<div class="footer-column">
					<div class="footer-logo">
						<a href="/hub/index.do" class="logo-link"> <span
							class="logo-glad"></span>
						</a>
					</div>
				</div>
				<div class="footer-column">
					<ul class="footer-property">
						<li class="property-item"><a href="/yeouido/index.do"
							class="property-link"> <span class="property-text">GLAD
									YEOUIDO</span>
						</a></li>
						<li class="property-item"><a href="/mapo/index.do"
							class="property-link"> <span class="property-text">GLAD
									MAPO</span>
						</a></li>
						<li class="property-item"><a href="/gangnamcoex/index.do"
							class="property-link"> <span class="property-text">GLAD
									GANGNAM COEX CENTER</span>
						</a></li>
						<li class="property-item"><a href="/maisongladjeju/index.do"
							class="property-link"> <span class="property-text">MAISON
									GLAD JEJU</span>
						</a></li>
					</ul>
				</div>
			</div>

			<div class="app-qrcode">
				<a class="qr-link qr-google" href="/hub/about/appdown.do">google
					play download</a> <a class="qr-link qr-ios"
					href="/hub/about/appdown.do">app store download</a>
			</div>

			<div class="footer-row">
				<div class="footer-column">
					<div class="footer-address">
						<span class="text">글래드 호텔앤리조트(주) | 주소: 제주특별자치도 제주시 노연로 80 |
							대표이사: 박명신 | 사업자등록번호: 616-81-01370 | 통신판매신고: 제주연동-0035 호</span>
						<button class="btn-arrow" data-toggle="footer">
							<i class="icon-arrow"></i>
						</button>
					</div>
					<div class="footer-address-detailed">
						<ul class="address-list">
							<li class="address-item">
								<p class="address-text">글래드 호텔앤리조트(주) 메종 글래드 제주 | 주소:
									제주특별자치도 제주시 노연로 80 | 대표이사: 박명신 | 사업자등록번호: 616-81-01370 |
									통신판매신고: 제주연동-0035 호 | 고객문의: 064.747.5000</p>
							</li>
							<li class="address-item">
								<p class="address-text">글래드 호텔앤리조트(주) 글래드호텔 여의도 | 주소: 서울특별시
									영등포구 의사당대로 16 | 대표이사: 박명신 | 사업자등록번호: 107-85-53993 | 통신판매신고:
									서울영등포-1085 호 | 고객문의 : 02.6222.5000</p>
							</li>
							<li class="address-item">
								<p class="address-text">글래드 호텔앤리조트(주) 글래드 강남 코엑스센터 | 주소:
									서울특별시 강남구 테헤란로 610 | 대표이사: 박명신 | 사업자등록번호: 546-85-01064 |
									통신판매신고: 서울강남-00400 호 | 고객문의: 02.6474.5000</p>
							</li>
							<li class="address-item">
								<p class="address-text">(주)대림 | 주소: 서울특별시 종로구 평동 222
									디타워(돈의문) | 대표이사: 배원복 | 사업자등록번호: 110-81-30979 | 통신판매신고:
									서울마포-0455 호 | 고객문의 : 02.2197.5000</p>
							</li>
						</ul>
					</div>
					<div class="footer-service">
						<ul class="service-list">
							<li class="service-item"><a href="/hub/etc/privacy.do"
								class="service-link"> <strong class="service-text">개인정보
										처리방침<!-- 개인정보처리방침 -->
								</strong>
							</a></li>

							<li class="service-item"><a href="/hub/etc/videoPolicy.do"
								class="service-link"> <span class="service-text ">영상정보처리기기
										운영·관리방침<!-- 영상정보처리기기 운영·관리방침 -->
								</span>
							</a></li>

							<li class="service-item"><a
								href="/hub/etc/termsOfService.do" class="service-link"> <span
									class="service-text">홈페이지 이용약관<!-- 홈페이지 이용약관 --></span>
							</a></li>
							<li class="service-item"><a
								href="/hub/etc/termsOfConditions.do" class="service-link"> <span
									class="service-text">숙박약관<!-- 숙박약관 --></span>
							</a></li>

							<li class="service-item" data-segment="segment"><a
								href="/hub/about/organization.do" class="service-link"> <span
									class="service-text">회사소개<!-- 회사소개 --></span>
							</a></li>
							<li class="service-item"><a href="/hub/about/brand.do"
								class="service-link"> <span class="service-text">호텔소개<!-- 호텔소개 --></span>
							</a></li>
							<li class="service-item"><a href="/hub/recruitment/human.do"
								class="service-link"> <span class="service-text">채용정보<!-- 채용정보 --></span>
							</a></li>
							<li class="service-item"><a href="/hub/about/contact.do"
								class="service-link"> <span class="service-text">고객문의<!-- 고객문의 --></span>
							</a></li>
							<li class="service-item"><a href="/hub/report/report.do"
								class="service-link"> <span class="service-text">사이버신문고<!-- 사이버신문고 --></span>
							</a></li>
							<li class="service-item"><a
								href="/hub/purchase/loginForm.do" target="_blank"
								class="service-link"> <span class="service-text">구매발주<!-- 구매발주 --></span>
							</a></li>

							<li class="service-item"><a href="/hub/about/location.do"
								class="service-link"> <span class="service-text">지점별
										연락처<!-- 지점별 연락처 -->
								</span>
							</a></li>
							<li class="service-item"><a href="/hub/about/appdown.do"
								class="service-link"> <span class="service-text">앱다운로드<!-- 앱다운로드 --></span>
							</a></li>



						</ul>
					</div>
					<div class="footer-copyright">
						<span class="text">© 2023 GLAD HOTELS &amp; RESORTS CO.,
							LTD All rights reserved.<!-- © 2021 GLAD HOTELS & RESORTS CO., LTD All rights reserved. -->
						</span>
					</div>
				</div>
				<div class="footer-column">
					<div class="form-select">
						<button class="form-select-btn">
							<span class="text">패밀리 사이트<!-- 패밀리 사이트 --></span> <i
								class="icon-arrow">옵션열기<!-- 옵션열기 --></i>
						</button>
						<div class="form-select-dropdown">
							<ul class="option-list">

								<li class="option-item">
									<div class="form-option">
										<input type="radio" name="chk_option" id="chk_option_01"
											class="form-option-input"
											onclick="window.open('https://www.mayhills.co.kr');">
										<label for="chk_option_01" class="form-option-label">
											<span class="form-option-text">메이힐스 리조트<!-- 메이힐스 리조트 --></span>
										</label>
									</div>
								</li>
								<li class="option-item">
									<div class="form-option">
										<input type="radio" name="chk_option" id="chk_option_02"
											class="form-option-input"
											onclick="window.open('http://www.daelimmuseum.org');">
										<label for="chk_option_02" class="form-option-label">
											<span class="form-option-text">대림미술관<!-- 대림미술관 --></span>
										</label>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>

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