<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="다이닝 메인"%>

<html lang="ko-kr" dir="ltr">

<!-- bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<jsp:include page="../include/header.jsp"/>

<script type="text/javascript">
$(function(){
	$("#btn_booking").click(function(){
		location.href="dining_booking.do"
	});//click
	
	
});//ready



</script>
			<div
				class="JjjA-main JjjA-withDrawer JjjA-moved JjjA-new-nav-breakpoints"
				id="main">
				<main class="EoVr">
<input type="button" class="btn btn-dark" value="다이닝 예약" id="btn_booking" style="margin-left: 1300px; margin-top:30px;"/>
					<div class="Seuf">
						<section class="bDbo bDbo-spacing-bottom"
							data-section-type="API_NEARBY_HOTELS" aria-label="추천 다이닝"
							role="group">
							<div class="kml-layout edges-s snap">
								<header class="KzeV">
									<div class="KzeV-header">
										<div class="KzeV-info">
											<div class="KzeV-title">추천 다이닝</div>
										</div>
									</div>
								</header>
								<div>
									<div role="region" tabindex="0" aria-label="부여 인근 숙소 이미지 슬라이드"
										class="c-5pd c-5pd-mod-sizing-quarter-wide c-5pd-mod-spacing-xsmall">
										<div class="c-5pd-list">
											<div class="c-5pd-inner">
												<div role="group" aria-label="8개 중 1번째 항목">
 <img src="http://localhost/HCYHotel/WEB-INF/views/user/dining/img/dining_sevensquare.jpg/>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">세븐스퀘어</h5>
														</div></a>
												</div>
												<div role="group" aria-label="8개 중 2번째 항목">
													<a
														href="https://www.hotelscombined.co.kr/hotels/%EB%B6%80%EC%97%AC%2C%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD-c72568-h7231684/2023-12-07/2023-12-14/2adults"
														class="FNY6 FNY6-pres-quarter FNY6-mod-variant-default FNY6-mod-fluid-stretch FNY6-mod-center FNY6-mod-shape-round FNY6-mod-transition-none">
														<div
															role="figure" class="FNY6-image-container">
															<div
																class="ATNn FNY6-image FNY6-mod-image-position-center"
																aria-label="프린스모텔" style=""></div>
															<div class="FNY6-label-container">
																<div></div>
															</div>
														</div>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">도원</h5>
															<div class="esgW"></div>
														</div></a>
												</div>
												<div role="group" aria-label="8개 중 3번째 항목">
													<a
														href="https://www.hotelscombined.co.kr/hotels/%EB%B6%80%EC%97%AC%2C%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD-c72568-h1070225084/2023-12-07/2023-12-14/2adults"
														class="FNY6 FNY6-pres-quarter FNY6-mod-variant-default FNY6-mod-fluid-stretch FNY6-mod-center FNY6-mod-shape-round FNY6-mod-transition-none"><div
															role="figure" class="FNY6-image-container">
															<div
																class="ATNn FNY6-image FNY6-mod-image-position-center"
																aria-label="부여 파크아트빌라스" style=""></div>
															<div class="FNY6-label-container"></div>
														</div>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">주옥</h5>
														</div></a>
												</div>
												<div role="group" aria-label="8개 중 4번째 항목">
													<a
														href="https://www.hotelscombined.co.kr/hotels/%EB%B6%80%EC%97%AC%2C%EB%8C%80%ED%95%9C%EB%AF%BC%EA%B5%AD-c72568-h4744259/2023-12-07/2023-12-14/2adults"
														class="FNY6 FNY6-pres-quarter FNY6-mod-variant-default FNY6-mod-fluid-stretch FNY6-mod-center FNY6-mod-shape-round FNY6-mod-transition-none"><div
															role="figure" class="FNY6-image-container">
															<div
																class="ATNn FNY6-image FNY6-mod-image-position-center"
																aria-label="마운틴모텔" style=""></div>
														</div>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">오이스터 배 by 배식당</h5>
															<div class="esgW"></div>
														</div></a>
												</div>
											</div>
										</div>
									
									</div>
								</div>
							</div>
						</section>
						<section class="bDbo bDbo-spacing-bottom"
							data-section-type="CMS_T2704_R2" aria-label="요즘 뜨는 다이닝"
							role="group">
							<div class="kml-layout edges-s snap">
								<header class="KzeV">
									<div class="KzeV-header">
										<div class="KzeV-info">
											<div class="KzeV-title">요즘 뜨는 다이닝</div>
										</div>
									</div>
								</header>
								<div>
									<div role="region" tabindex="0" aria-label="요즘 뜨는 다이닝 이미지 슬라이드"
										class="c-5pd c-5pd-mod-sizing-quarter-wide c-5pd-mod-spacing-xsmall">
										<div role="button" tabindex="-1" aria-disabled="true"
											class="JRE_ JRE_-mod-direction-back JRE_-mod-size-large JRE_-mod-shape-square JRE_-mod-position-default JRE_-mod-disabled"
											aria-label="뒤로" style="top: 135px;">
											<svg viewBox="0 0 200 200" width="1.25em" height="1.25em"
												xmlns="http://www.w3.org/2000/svg" class="JRE_-arrow-svg"
												role="img">
												<path
													d="M120.002 160a4.987 4.987 0 0 1-3.702-1.637l-50-55a5 5 0 0 1 0-6.727l50-55a5 5 0 0 1 7.4 6.727L76.757 100l46.943 51.637a5 5 0 0 1-3.698 8.363z"></path></svg>
										</div>
										<div class="c-5pd-list">
											<div class="c-5pd-inner">
												<div role="group" aria-label="4개 중 1번째 항목">
													<a href="https://www.hotelscombined.co.kr/c/inspire2023/"
														class="FNY6 FNY6-pres-quarter FNY6-mod-variant-default FNY6-mod-fluid-stretch FNY6-mod-center FNY6-mod-shape-round FNY6-mod-transition-none"><div
															role="figure" class="FNY6-image-container">
															<div
																class="ATNn FNY6-image FNY6-mod-image-position-center"
																aria-label="라연" style=""></div>
														</div>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">라연</h5>
														</div></a>
												</div>
												<div role="group" aria-label="4개 중 2번째 항목">
													<a href="https://www.hotelscombined.co.kr/c/2023december/"
														class="FNY6 FNY6-pres-quarter FNY6-mod-variant-default FNY6-mod-fluid-stretch FNY6-mod-center FNY6-mod-shape-round FNY6-mod-transition-none"><div
															role="figure" class="FNY6-image-container">
															<div
																class="ATNn FNY6-image FNY6-mod-image-position-center"
																aria-label="국내 일본 동남아" style=""></div>
														</div>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">아리아께</h5>
														</div></a>
												</div>
												<div role="group" aria-label="4개 중 3번째 항목">
													<a
														href="https://www.hotelscombined.co.kr/c/kensingtonhotel/"
														class="FNY6 FNY6-pres-quarter FNY6-mod-variant-default FNY6-mod-fluid-stretch FNY6-mod-center FNY6-mod-shape-round FNY6-mod-transition-none"><div
															role="figure" class="FNY6-image-container">
															<div
																class="ATNn FNY6-image FNY6-mod-image-position-center"
																aria-label="더 파크뷰" style=""></div>
														</div>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">콘티넨탈</h5>
														</div></a>
												</div>
												<div role="group" aria-label="4개 중 4번째 항목">
													<a href="https://www.hotelscombined.co.kr/c/guamfall/"
														class="FNY6 FNY6-pres-quarter FNY6-mod-variant-default FNY6-mod-fluid-stretch FNY6-mod-center FNY6-mod-shape-round FNY6-mod-transition-none"><div
															role="figure" class="FNY6-image-container">
															<div
																class="ATNn FNY6-image FNY6-mod-image-position-center"
																aria-label="호컴 단독 괌 호텔 세일" style=""></div>
														</div>
														<div
															class="FNY6-content FNY6-mod-content-background-default">
															<h5 class="FNY6-title">팔선</h5>
														</div></a>
												</div>
											</div>
										</div>
										<div role="button" tabindex="-1" aria-disabled="true"
											class="JRE_ JRE_-mod-direction-forward JRE_-mod-size-large JRE_-mod-shape-square JRE_-mod-position-default JRE_-mod-disabled"
											aria-label="전송" style="top: 135px;">
											<svg viewBox="0 0 200 200" width="1.25em" height="1.25em"
												xmlns="http://www.w3.org/2000/svg" class="JRE_-arrow-svg"
												role="img">
												<path
													d="M79.999 160a5 5 0 0 1-3.698-8.363L123.243 100L76.3 48.363a5 5 0 0 1 7.399-6.727l50 55a5.002 5.002 0 0 1 0 6.727l-50 55a4.986 4.986 0 0 1-3.7 1.637z"></path></svg>
										</div>
									</div>
								</div>
							</div>
						</section>
						<div class="kml-layout edges-s snap">
							<div class="c3OuA-links">
								<div class="vJFP-container">
									<h2 class="vJFP-title vJFP-mod-variant-text"  style="margin-bottom: 20px;">인기 다이닝을 살펴보세요</h2>
									<div
										class="vJFP-links-wrapper vJFP-mod-columns-3 vJFP-mod-variant-text" >
										<div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																<!-- a태그되어잇엇음 class="P_Ok-main-link"-->세븐스퀘어
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																라연
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																더 파크뷰
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																팔선
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																아리아께
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
										</div>
										<div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																콘티넨탈
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																온달
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																금룡
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																더 파빌리온
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																르 파사쥬
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
										</div>
										<div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																델리시픽
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																차오란
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
														
															<h3 class="P_Ok-title">
																더 라운지 서울
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																라세느
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
											<div>
												<div class="P_Ok-wrapper">
													<div class="P_Ok-header">
														<div class="P_Ok-container">
															<h3 class="P_Ok-title">
																드림
															</h3>
														</div>
														<div class="P_Ok-header-links"></div>
														<div class="P_Ok-container-padding"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="EoVr-search-form-dialog-wrapper">
						<div aria-hidden="true"
							class="YSUE YSUE-mod-animate YSUE-mod-layer-default YSUE-mod-position-fixed">
							<div class="YSUE-background YSUE-mod-variant-default"></div>
							<div role="button" class="dDYU-off-screen" tabindex="0"></div>
							<div role="dialog" aria-modal="true"
								class="dDYU dDYU-mod-theme-default dDYU-mod-variant-header-search-form-v3 dDYU-mod-padding-none dDYU-mod-position-top dDYU-mod-direction-none dDYU-mod-animate a11y-focus-outlines dDYU-mod-shadow-elevation-one">
								<div class="dDYU-viewport">
									<div class="dDYU-content">
										<div class="dDYU-body">
											<div
												class="c1r2d c1r2d-mod-vertical-hotels c1r2d-pres-animated c1r2d-mod-starting-position c1r2d-mod-primary-colors"
												id="searchFormDialog" tabindex="-1">
												<section class="c1r2d-form-section"></section>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div role="button" class="dDYU-off-screen" tabindex="0"></div>
						</div>
					</div>
				</main>
			</div>
		<!-- footer -->
		<jsp:include page="../include/footer.jsp"/>
		</div>
	</div>
	<link rel="stylesheet" type="text/css"
		href="https://content.r9cdn.net/res/combined.css?v=5f13d1a23f67c3c1e65d620402b9ce4212e9d413-14pre-flipped&amp;cluster=5&amp;tag=ui/personalization/ContextualFrontDoorContent">
	<link rel="stylesheet" type="text/css"
		href="https://content.r9cdn.net/res/combined.css?v=ce9869ab07cc317af2baa86e8d814d041cf15374-14pre-flipped&amp;cluster=5&amp;tag=ui/trips-packages/drawer/shared">
	<script async=""
		src="https://content.r9cdn.net/res/combined.js?v=ac5c35b453232f3b5904d8f0d3081c8c3ef3feae-14pre-flipped&amp;cluster=5&amp;tag=ui/trips-packages/drawer/shared"></script>
	<script async=""
		src="https://content.r9cdn.net/res/combined.js?v=6b186515cbfa8576d6387ff3453feba2ec88c2d6-14pre-flipped&amp;cluster=5&amp;tag=ui/personalization/ContextualFrontDoorContent"></script>
	<script type="text/javascript">
window.R9 = window.R9 || {};
window.R9.globals = window.R9.globals || {};
window.R9.globals.lc = "ko";
window.R9.globals.lc_cc = "KR";
window.R9.globals.locale = {
loc: "ko_KR"
};
window.R9.globals.analytics = {"vertical":"hotel","pageId":"frontdoor","subPageId":"stays","vestigoPageId":"frontdoor","vestigoSubPageId":"stays","pageVertical":"hotel","loginState":"loggedin","vestigoViewId":"HhA1701328796733","vestigoDelayedPageTypes":["results","CleanHotelDetailsPage"],"utoken":"jIOrf-n_Tc_28Exn7bQY6j4x42s","sessionId":"R-5ugJHop9LltkR9pEKgWvl","vestigo":{"trackEvent":"true","trackPageView":"true"},"vslog":{"trackEvent":"true","trackPageView":"true"}}
function __initializeR9Log() {
(function(w, k){'use strict';
w.R9Log = new window["@r9/logger"].Log();
var l=w.R9Log;l&&l.init&&l.init({"product":"REACT_STANDALONE","windowOnError":true,"windowPromise":true,"ignore":{"id":[],"groupId":[1241169913,1270732347,-2051446593,-770510689,1127484857,-1347289951,-1037743948,239690704,-1018399662,-1951596749,-469731040,1729757880,-1196460411,-1633196275,21889632,-1290482385,-880515781,-2045572525,-1376102086,-1988354498,-1479763697,-299501215,-693575313,-1112564762,-480425961,669617571,904165038,-1042269652,-1271253002,-129105918,-878455058,-540815475,1645968712,663150419,-608081257,-916234444,673595262,-101643608,-1489598996,180173665,-75339934,2092691163,-58968290,-639980999,-468226190,-1134459000,1263305889,-560029201,939232393,65769240,-103443037,1296452400,-159617525,712487182,182908824,-526845593],"minLevel":"WARN","stackRx":["extractNewForms[\\s\\S]*?extractForms[\\s\\S]*?global\\scode","(?:hasPasswordField_[\\s\\S]*?)+findPasswordForms[\\s\\S]*?global\\scode","getPasswordFormDataList[\\s\\S]*?(?:getPasswordFormDataList[\\s\\S]*?)+findPasswordForms[\\s\\S]*?global\\scode","(?:yb_getAllDocumentObjectsFromFrames[\\s\\S]*?)+(?:yb_getAllDocumentObjects[\\s\\S]*?)+global\\scode","(?:hasPasswordField_[\\s\\S]*?){3}findPasswordForms"],"rx":["(\\[unhandledrejection\\]\\s)?status:`[^`]*`\\scode:`(401|403|499|421)`\\surl:\\s`[^`]+`"]},"platforms":{"R9":{"maxValueLength":1000,"parseStackTrace":true,"url":"\u002Flog\u002Fclient\u002Fmessages","queueTime":1000,"stopDeliveries":true,"deliveryLimit":10,"ignore":{"id":[],"groupId":[],"minLevel":"WARN","stackRx":[],"rx":[]},"enabled":true},"CONSOLE":{"printOnlyArguments":true,"styles":{"ERROR":"color:#FF8080","WARN":"color:#FFC800"},"useGroups":true,"enabled":true,"stopDeliveries":false,"deliveryLimit":0,"ignore":{"id":[],"groupId":[],"minLevel":"WARN","stackRx":[],"rx":[]}}},"enabled":true});
try {
var e=document.getElementsByName(k);
l.context.add(k, e.length > 0 ? e[0].getAttribute("content") : "");
l.context.add('vertical', "hotel");
l.context.add('pageId', "frontdoor");
} catch (e) {}
})(window,"r9-version");
}
</script>
	<script
		src="https://content.r9cdn.net/res/combined.js?v=a5d85204c6d8fbc9c81ed463ff34c7f7eece6153-14pre-flipped&amp;cluster=5"
		type="text/javascript" defer=""></script>
	<script
		src="https://content.r9cdn.net/res/combined.js?v=762eaee90130ea5bc4f9319200094278b30e8ace-14pre-flipped&amp;cluster=5&amp;tag=ui/hotels/frontdoor/HotelFrontDoorPage"
		type="text/javascript" defer=""></script>
	<script type="text/javascript">
window.R9.init = window.R9.init || [];
window.R9.init.push(function() {
var perf = window['@r9/perf'];
perf &&
perf.PerfDataLogger &&
perf.PerfDataLogger.init({
doNavigationTimings: true,
doSearchTimings: false,
doAppTimings: false,
vertical: 'hotel',
pageId: 'frontdoor',
pageTag: 'standalone',
apiPrefix: '',
doInteractionTimings: true,
inpDurationThreshold: 200,
});
});
</script>
	<script type="text/javascript">
(function() {
var image = new Image(1, 1);
image.src = '/handlers/kayak/pageview?cb=' + (new Date()).getTime() * Math.floor(Math.random()*1000);
})();
(function() {
var parts = document.cookie.split('visitor');
if (parts.length > 1) {
var cookie = parts[1].split(';')[0];
if (cookie.lastIndexOf('&tracked=true') > -1) {
return;
}
}
if (typeof XMLHttpRequest !== 'undefined') {
var url = '/Handlers/Visitor';
var http = new XMLHttpRequest();
http.open('POST', url, true);
http.send('');
}
})();
</script>
	<script type="text/javascript">
window.R9.init = window.R9.init || [];
window.R9.formToken = 'dvqxcq6O3Y3Jabns6pzZe1RSXd4xCXOuZJEWJVYxOHo-D7rqQ5d6itJ$GATbf9$9U_wH09vWuO326BawxGAYThE';
window.R9.init.push(function() {
try {
var hydrateData = JSON.parse(document.getElementById('__R9_HYDRATE_DATA__').innerHTML); 
R9.react.boot({
serverData: hydrateData.serverData,
brand: ["hotelscombined"],
mappings: hydrateData.mappings,
locale: 'ko-kr',
components: [{component:"ui/hotels/frontdoor/HotelFrontDoorPage","props":{"originalUri":"\u002Fhotels","reqParams":{"display":"FD","attributes":{},"id":"seohfd"},"momentLocale":"ko","locale":"ko-kr","brand":["hotelscombined"],"direction":"ltr","mappings":{"ui\u002Fauthentication\u002FAuthenticationDialogGatedSignIn":"__NoOp","ui\u002Fiframe\u002FIFrameWrapper":"__NoOp","ui\u002Fseo\u002Fcars\u002Fplace\u002Fspwl\u002FCarClassesSection":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fguides\u002Fcommon\u002FAddToWishlistButton":"__NoOp","common\u002Fresults\u002Freact\u002FResponsiveControls":"__NoOp","ui\u002Fseo\u002Fcars\u002Fcommon\u002Fsearch\u002FSeoCarsCmp2SearchForm":"__NoOp","ui\u002Fseo\u002Fflights\u002Fcommon\u002Fbrands\u002Fmomondo\u002FFlightPriceAlertComponent":"__NoOp","ui\u002Fseo\u002Fflights\u002Fcommon\u002Fsearch\u002FSeoFlightCmp2SearchForm":"__NoOp","ui\u002Ffoundation\u002Fmcflysearch\u002FMultiSearchFormDialog":"__NoOp","ui\u002Ffoundation\u002Fheader\u002FHeaderPartnerBanner":"__NoOp","ui\u002Fseo\u002Fflights\u002Fcommon\u002Fsearch\u002Fwl\u002FSeoFlightsDefaultContentWrapper":"__NoOp","ui\u002Fseo\u002Fcommon\u002Flayout\u002FSeoSideNavControlWrapper":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fdetails\u002Fspwl\u002FMainHotelPhotos":"__NoOp","ui\u002Fseo\u002Fcommon\u002Frecentsearches\u002FRecentSearches":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fcommon\u002Fsearch\u002Fwl\u002FHotelsDefaultStandardBody":"__NoOp","ui\u002Fseo\u002Fflights\u002Fcommon\u002Fseoportfolio_wl\u002FAirlinesPageLink":"__NoOp","ui\u002Fseo\u002Fflights\u002Froutes\u002Ftrustseals\u002FFlightTrustSealsSection":"__NoOp","ui\u002Fcorporate\u002FMomondoCorporateInfo":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fcity\u002FCityHotelsTrustSeals":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fdetails\u002Fspwl\u002FPhotoSection":"__NoOp","ui\u002Fseo\u002Fcars\u002Fplace\u002Fspwl\u002FPlaceCarsPageContent":"__NoOp","ui\u002Fcompareto\u002FCompareToTimedOutModal":"__NoOp","ui\u002Fseo\u002Fcars\u002Fcommon\u002Fbrands\u002Fmomondo\u002FCarsPriceAlertComponent":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fguides\u002Fdeep\u002Fsubpage\u002Fcommon\u002FDeepCityGuidesBespokeContent":"__NoOp","ui\u002Fseo\u002Fcommon\u002Falerts\u002FEmergencyAlert":"__NoOp","ui\u002Fseo\u002Fcommon\u002Flayout\u002FHalfPagePhotoCover":"__NoOp","ui\u002Fsearchforms\u002Fflights\u002Finputs\u002FFlightDatePickerV2":"__NoOp","ui\u002Fcorporate\u002FCorporateEmailSubscription":"__NoOp","ui\u002Ffoundation\u002Fheader\u002FHeaderUnderLogo":"__NoOp","ui\u002Fseo\u002Fmarketing\u002Fsustainabilityindex\u002FHowToTravelBlogsSection":"__NoOp","ui\u002Finputs\u002Fcomponents\u002FDatePicker\u002FDatePickerSharedDemo":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fcity\u002Ftaghotels\u002FCityHotelsTagHotelsSection":"__NoOp","ui\u002Ffoundation\u002Fheader\u002FPageHeaderCustom":"__NoOp","ui\u002Fseo\u002Fcars\u002Fcommon\u002Fsearch\u002Fwl\u002FSeoCarsDefaultContentWrapper":"__NoOp","ui\u002Fseo\u002Fcars\u002Fplace\u002Fmomondo\u002FSeoCarsMcflyContentWrapper":"__NoOp","ui\u002Fseo\u002Fcommon\u002Fdisclaimers\u002FPricelineDisclaimer":"__NoOp","ui\u002Factivities\u002Fcommon\u002FActivitiesDataLayer":"__NoOp","ui\u002Fsearchforms\u002Fflights\u002Fcomponents\u002FFlightSearchSubmitButtonV2":"__NoOp","ui\u002Fseo\u002Fcars\u002Fcity\u002FCityCarsInsurance":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fcommon\u002Fbrands\u002Fmomondo\u002FHotelsPriceAlertComponent":"__NoOp","ui\u002Fcorporate\u002FCorporatePromo":"__NoOp","ui\u002Fseo\u002Fhotels\u002Fdestination\u002Fmomondo\u002Fbesthotels\u002FBestHotels":"__NoOp","ui\u002Fseo\u002Fflights\u002Froutes\u002Fkayak\u002Ftransportationmodes\u002FTransportationModes":"__NoOp"}},"mountPointId":"root"}],
images: hydrateData.images,
strings: hydrateData.strings,
properties: hydrateData.properties,
resources: hydrateData.resources, 
stylejams: hydrateData.stylejams,
seoPageData: hydrateData.seoPageData,
serverFunctionCache: hydrateData.serverFunctionCache,
devMode: false,
standalone: true,
styletronImportant: true,
pathPrefix: ""
});
} catch (err) {
var logger = R9 && typeof R9.logger === "function" ? new R9.logger("reactboot") : window.console;
if (logger) {
if (!R9.react || !R9.react.boot) {
logger.warn(err, "REACT_STANDALONE_BOOT_UNDEFINED");
} else {
logger.error(err, "REACT_STANDALONE_BOOT_ERROR", err.details ? err.details : {});
}
}
}
}); 
</script>
	<script type="text/javascript">
function runInitWrapper(event) {
var initComplete = false;
function runInit() {
var deferred = document.querySelectorAll("link[data-rel='stylesheet']");
if (deferred) {
for (var i = 0; i < deferred.length; i++) {
var def = deferred[i];
def.setAttribute('rel','stylesheet');
def.setAttribute('href', def.getAttribute('data-href'));
}
}
if (R9 && R9.init) {
for(var i = 0; i < R9.init.length; i++) {
R9.init[i].call();
}
}
initComplete = true; 
}
runInit();
}
document.addEventListener("DOMContentLoaded", runInitWrapper);
</script>
	<div id="react-root-dialog"></div>
	<iframe aria-hidden="true" title="gtm" id="r9GTMFrame-main"
		class="ui-tracking-GtmFrame r9GTMFrame r9GTMFrame–unified"
		src="/ugtm/hotels"></iframe>
	<div class="usabilla_live_button_container"
		id="usabilla_live_button_container_183534925" role="button"
		tabindex="0" aria-label="Usabilla Feedback Button"
		style="display: none;">
		<style type="text/css" nonce="">
div.usabilla_live_button_container#usabilla_live_button_container_183534925[role="button"]
	{
	top: 50%;
	margin-top: -57.5px;
	width: 40px;
	height: 115px;
	position: fixed;
	z-index: 999;
	right: 0
}
</style>
		<iframe src="" frameborder="0" marginwidth="0" marginheight="0"
			scrolling="no" data-tags="right" title="Usabilla Feedback Button"
			class="usabilla-live-button"
			id="usabilla_live_button_container_iframe205666431"></iframe>
	</div>
</body>
</html>