<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="다이닝 메인"%>

<html lang="ko-kr" dir="ltr">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<jsp:include page="../include/header.jsp" />

<div
	class="JjjA-main JjjA-withDrawer JjjA-moved JjjA-new-nav-breakpoints"
	id="main">
	<main class="EoVr" style="height: 800px">
		
	</main>
</div>
<!-- footer -->
<jsp:include page="../include/footer.jsp" />
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
		loc : "ko_KR"
	};
	window.R9.globals.analytics = {
		"vertical" : "hotel",
		"pageId" : "frontdoor",
		"subPageId" : "stays",
		"vestigoPageId" : "frontdoor",
		"vestigoSubPageId" : "stays",
		"pageVertical" : "hotel",
		"loginState" : "loggedin",
		"vestigoViewId" : "HhA1701328796733",
		"vestigoDelayedPageTypes" : [ "results", "CleanHotelDetailsPage" ],
		"utoken" : "jIOrf-n_Tc_28Exn7bQY6j4x42s",
		"sessionId" : "R-5ugJHop9LltkR9pEKgWvl",
		"vestigo" : {
			"trackEvent" : "true",
			"trackPageView" : "true"
		},
		"vslog" : {
			"trackEvent" : "true",
			"trackPageView" : "true"
		}
	}
	function __initializeR9Log() {
		(function(w, k) {
			'use strict';
			w.R9Log = new window["@r9/logger"].Log();
			var l = w.R9Log;
			l
					&& l.init
					&& l
							.init({
								"product" : "REACT_STANDALONE",
								"windowOnError" : true,
								"windowPromise" : true,
								"ignore" : {
									"id" : [],
									"groupId" : [ 1241169913, 1270732347,
											-2051446593, -770510689,
											1127484857, -1347289951,
											-1037743948, 239690704,
											-1018399662, -1951596749,
											-469731040, 1729757880,
											-1196460411, -1633196275, 21889632,
											-1290482385, -880515781,
											-2045572525, -1376102086,
											-1988354498, -1479763697,
											-299501215, -693575313,
											-1112564762, -480425961, 669617571,
											904165038, -1042269652,
											-1271253002, -129105918,
											-878455058, -540815475, 1645968712,
											663150419, -608081257, -916234444,
											673595262, -101643608, -1489598996,
											180173665, -75339934, 2092691163,
											-58968290, -639980999, -468226190,
											-1134459000, 1263305889,
											-560029201, 939232393, 65769240,
											-103443037, 1296452400, -159617525,
											712487182, 182908824, -526845593 ],
									"minLevel" : "WARN",
									"stackRx" : [
											"extractNewForms[\\s\\S]*?extractForms[\\s\\S]*?global\\scode",
											"(?:hasPasswordField_[\\s\\S]*?)+findPasswordForms[\\s\\S]*?global\\scode",
											"getPasswordFormDataList[\\s\\S]*?(?:getPasswordFormDataList[\\s\\S]*?)+findPasswordForms[\\s\\S]*?global\\scode",
											"(?:yb_getAllDocumentObjectsFromFrames[\\s\\S]*?)+(?:yb_getAllDocumentObjects[\\s\\S]*?)+global\\scode",
											"(?:hasPasswordField_[\\s\\S]*?){3}findPasswordForms" ],
									"rx" : [ "(\\[unhandledrejection\\]\\s)?status:`[^`]*`\\scode:`(401|403|499|421)`\\surl:\\s`[^`]+`" ]
								},
								"platforms" : {
									"R9" : {
										"maxValueLength" : 1000,
										"parseStackTrace" : true,
										"url" : "\u002Flog\u002Fclient\u002Fmessages",
										"queueTime" : 1000,
										"stopDeliveries" : true,
										"deliveryLimit" : 10,
										"ignore" : {
											"id" : [],
											"groupId" : [],
											"minLevel" : "WARN",
											"stackRx" : [],
											"rx" : []
										},
										"enabled" : true
									},
									"CONSOLE" : {
										"printOnlyArguments" : true,
										"styles" : {
											"ERROR" : "color:#FF8080",
											"WARN" : "color:#FFC800"
										},
										"useGroups" : true,
										"enabled" : true,
										"stopDeliveries" : false,
										"deliveryLimit" : 0,
										"ignore" : {
											"id" : [],
											"groupId" : [],
											"minLevel" : "WARN",
											"stackRx" : [],
											"rx" : []
										}
									}
								},
								"enabled" : true
							});
			try {
				var e = document.getElementsByName(k);
				l.context.add(k, e.length > 0 ? e[0].getAttribute("content")
						: "");
				l.context.add('vertical', "hotel");
				l.context.add('pageId', "frontdoor");
			} catch (e) {
			}
		})(window, "r9-version");
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
		perf && perf.PerfDataLogger && perf.PerfDataLogger.init({
			doNavigationTimings : true,
			doSearchTimings : false,
			doAppTimings : false,
			vertical : 'hotel',
			pageId : 'frontdoor',
			pageTag : 'standalone',
			apiPrefix : '',
			doInteractionTimings : true,
			inpDurationThreshold : 200,
		});
	});
</script>
<script type="text/javascript">
	(function() {
		var image = new Image(1, 1);
		image.src = '/handlers/kayak/pageview?cb=' + (new Date()).getTime()
				* Math.floor(Math.random() * 1000);
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
								serverData : hydrateData.serverData,
								brand : [ "hotelscombined" ],
								mappings : hydrateData.mappings,
								locale : 'ko-kr',
								components : [ {
									component : "ui/hotels/frontdoor/HotelFrontDoorPage",
									"props" : {
										"originalUri" : "\u002Fhotels",
										"reqParams" : {
											"display" : "FD",
											"attributes" : {},
											"id" : "seohfd"
										},
										"momentLocale" : "ko",
										"locale" : "ko-kr",
										"brand" : [ "hotelscombined" ],
										"direction" : "ltr",
										"mappings" : {
											"ui\u002Fauthentication\u002FAuthenticationDialogGatedSignIn" : "__NoOp",
											"ui\u002Fiframe\u002FIFrameWrapper" : "__NoOp",
											"ui\u002Fseo\u002Fcars\u002Fplace\u002Fspwl\u002FCarClassesSection" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fguides\u002Fcommon\u002FAddToWishlistButton" : "__NoOp",
											"common\u002Fresults\u002Freact\u002FResponsiveControls" : "__NoOp",
											"ui\u002Fseo\u002Fcars\u002Fcommon\u002Fsearch\u002FSeoCarsCmp2SearchForm" : "__NoOp",
											"ui\u002Fseo\u002Fflights\u002Fcommon\u002Fbrands\u002Fmomondo\u002FFlightPriceAlertComponent" : "__NoOp",
											"ui\u002Fseo\u002Fflights\u002Fcommon\u002Fsearch\u002FSeoFlightCmp2SearchForm" : "__NoOp",
											"ui\u002Ffoundation\u002Fmcflysearch\u002FMultiSearchFormDialog" : "__NoOp",
											"ui\u002Ffoundation\u002Fheader\u002FHeaderPartnerBanner" : "__NoOp",
											"ui\u002Fseo\u002Fflights\u002Fcommon\u002Fsearch\u002Fwl\u002FSeoFlightsDefaultContentWrapper" : "__NoOp",
											"ui\u002Fseo\u002Fcommon\u002Flayout\u002FSeoSideNavControlWrapper" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fdetails\u002Fspwl\u002FMainHotelPhotos" : "__NoOp",
											"ui\u002Fseo\u002Fcommon\u002Frecentsearches\u002FRecentSearches" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fcommon\u002Fsearch\u002Fwl\u002FHotelsDefaultStandardBody" : "__NoOp",
											"ui\u002Fseo\u002Fflights\u002Fcommon\u002Fseoportfolio_wl\u002FAirlinesPageLink" : "__NoOp",
											"ui\u002Fseo\u002Fflights\u002Froutes\u002Ftrustseals\u002FFlightTrustSealsSection" : "__NoOp",
											"ui\u002Fcorporate\u002FMomondoCorporateInfo" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fcity\u002FCityHotelsTrustSeals" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fdetails\u002Fspwl\u002FPhotoSection" : "__NoOp",
											"ui\u002Fseo\u002Fcars\u002Fplace\u002Fspwl\u002FPlaceCarsPageContent" : "__NoOp",
											"ui\u002Fcompareto\u002FCompareToTimedOutModal" : "__NoOp",
											"ui\u002Fseo\u002Fcars\u002Fcommon\u002Fbrands\u002Fmomondo\u002FCarsPriceAlertComponent" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fguides\u002Fdeep\u002Fsubpage\u002Fcommon\u002FDeepCityGuidesBespokeContent" : "__NoOp",
											"ui\u002Fseo\u002Fcommon\u002Falerts\u002FEmergencyAlert" : "__NoOp",
											"ui\u002Fseo\u002Fcommon\u002Flayout\u002FHalfPagePhotoCover" : "__NoOp",
											"ui\u002Fsearchforms\u002Fflights\u002Finputs\u002FFlightDatePickerV2" : "__NoOp",
											"ui\u002Fcorporate\u002FCorporateEmailSubscription" : "__NoOp",
											"ui\u002Ffoundation\u002Fheader\u002FHeaderUnderLogo" : "__NoOp",
											"ui\u002Fseo\u002Fmarketing\u002Fsustainabilityindex\u002FHowToTravelBlogsSection" : "__NoOp",
											"ui\u002Finputs\u002Fcomponents\u002FDatePicker\u002FDatePickerSharedDemo" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fcity\u002Ftaghotels\u002FCityHotelsTagHotelsSection" : "__NoOp",
											"ui\u002Ffoundation\u002Fheader\u002FPageHeaderCustom" : "__NoOp",
											"ui\u002Fseo\u002Fcars\u002Fcommon\u002Fsearch\u002Fwl\u002FSeoCarsDefaultContentWrapper" : "__NoOp",
											"ui\u002Fseo\u002Fcars\u002Fplace\u002Fmomondo\u002FSeoCarsMcflyContentWrapper" : "__NoOp",
											"ui\u002Fseo\u002Fcommon\u002Fdisclaimers\u002FPricelineDisclaimer" : "__NoOp",
											"ui\u002Factivities\u002Fcommon\u002FActivitiesDataLayer" : "__NoOp",
											"ui\u002Fsearchforms\u002Fflights\u002Fcomponents\u002FFlightSearchSubmitButtonV2" : "__NoOp",
											"ui\u002Fseo\u002Fcars\u002Fcity\u002FCityCarsInsurance" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fcommon\u002Fbrands\u002Fmomondo\u002FHotelsPriceAlertComponent" : "__NoOp",
											"ui\u002Fcorporate\u002FCorporatePromo" : "__NoOp",
											"ui\u002Fseo\u002Fhotels\u002Fdestination\u002Fmomondo\u002Fbesthotels\u002FBestHotels" : "__NoOp",
											"ui\u002Fseo\u002Fflights\u002Froutes\u002Fkayak\u002Ftransportationmodes\u002FTransportationModes" : "__NoOp"
										}
									},
									"mountPointId" : "root"
								} ],
								images : hydrateData.images,
								strings : hydrateData.strings,
								properties : hydrateData.properties,
								resources : hydrateData.resources,
								stylejams : hydrateData.stylejams,
								seoPageData : hydrateData.seoPageData,
								serverFunctionCache : hydrateData.serverFunctionCache,
								devMode : false,
								standalone : true,
								styletronImportant : true,
								pathPrefix : ""
							});
				} catch (err) {
					var logger = R9 && typeof R9.logger === "function" ? new R9.logger(
							"reactboot")
							: window.console;
					if (logger) {
						if (!R9.react || !R9.react.boot) {
							logger.warn(err, "REACT_STANDALONE_BOOT_UNDEFINED");
						} else {
							logger.error(err, "REACT_STANDALONE_BOOT_ERROR",
									err.details ? err.details : {});
						}
					}
				}
			});
</script>
<script type="text/javascript">
	function runInitWrapper(event) {
		var initComplete = false;
		function runInit() {
			var deferred = document
					.querySelectorAll("link[data-rel='stylesheet']");
			if (deferred) {
				for (var i = 0; i < deferred.length; i++) {
					var def = deferred[i];
					def.setAttribute('rel', 'stylesheet');
					def.setAttribute('href', def.getAttribute('data-href'));
				}
			}
			if (R9 && R9.init) {
				for (var i = 0; i < R9.init.length; i++) {
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