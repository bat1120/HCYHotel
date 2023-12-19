<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<title>객실 예약</title>
<!-- <title>베니키아호텔 공식 예약사이트</title> -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="pragma" content="no-cache">
<meta name="description"
	content="국내, 해외 60여개 베니키아 체인호텔 예약, 최저가, 마일리지 적립, 쿠폰, 후기, 호텔스토리">
<meta name="keywords"
	content="호텔 베니키아, 베니키아 호텔 공식 예약사이트,호텔,비지니스 호텔,대한민국,KOREA HOTEL">
<meta name="viewport"
	content="user-scalable=yes, width=1200, target-densitydpi=medium-dpi">
<link rel="stylesheet" type="text/css" href="http://192.168.10.147/HCYHotel/common/user/css/common2.css">
<link rel="shortcut icon" href="/images/favicon.ico">
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
	<!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
<!--  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!--  -->
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-W864BBGRD6&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" src="/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="/js/jquery-ui-1.9.2.custom.min.js"></script>
<script type="text/javascript" src="/js/jquery.bxslider.js"></script>
<!-- <script type="text/javascript" src="/js/main_ui.js"></script> -->
 <script>
  $( function() {
	  $.datepicker.setDefaults($.datepicker.regional['ko']);
    $( "#datepicker11" ).datepicker({dateFormat: 'yy-mm-dd'});
    $( "#datepicker22" ).datepicker({dateFormat: 'yy-mm-dd'});

  } );
  </script>
<script type="text/javascript">
	$(document).ready(function() {
		//$("#language_id").selectbox();/* js select */

		/* visual silde */
		/* 	$(".main_slide_box").bxSlider({
		 captions: true,
		 auto: false,
		 pager: true,
		 speed: 500,
		 controls:true,
		 infiniteLoop: true,
		 nextSelector: $(".main_bx_btn_box").find(".bx_next"),
		 prevSelector: $(".main_bx_btn_box").find(".bx_prev")
		 });
		 $(".main_slide_box2").bxSlider({
		 captions: true,
		 auto: false,
		 pager: true,
		 speed: 500,
		 controls:true,
		 infiniteLoop: true,
		 nextSelector: $(".main_bx_btn_box2").find(".bx_next"),
		 prevSelector: $(".main_bx_btn_box2").find(".bx_prev")
		 }); */
	});
</script>
<script>
	$(function() {
		var pos = 0;
		var li_width = 195;
		var totalWidth = $(".scroll li").width() * $(".scroll li").length;
		$(".scroll ul").width(totalWidth)
		$(".r_right").click(function() {
			if (pos == totalWidth - 976) {
				return false;
			}
			pos += li_width;
			$(".scroll").animate({
				scrollLeft : pos
			}, 500);
		});
		$(".r_left").click(function() {
			if (pos == 0) {
				return false;
			}
			pos -= li_width;
			$(".scroll").animate({
				scrollLeft : pos
			}, 500);
		});
	});
</script>
</head>

<body cz-shortcut-listen="true">
	<!-- <div id="top_banner" >
    	<div class="tb_ins" >
			<img src="/images/main/top_banner.jpg" alt="" />
        </div>
    </div> -->
	<div id="wrap">











		<!-- <script type="text/javascript" src="/js/jquery.js"></script> -->
		<!-- <link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script> -->

		<script type="text/javascript" src="/js/selectbox-min.js"></script>
		<script type="text/javascript" src="/js/jquery.ui.datepicker.js"></script>
		<script type="text/javascript" src="/js/jquery.bxslider.js"></script>
		<script type="text/javascript" src="/js/jquery.simplemodal.js"></script>
		<script type="text/javascript" src="/js/const.js" charset="utf-8"></script>
		<script type="text/javascript" src="/js/netconnect.js" charset="utf-8"></script>
		<script type="text/javascript" src="/js/rsa/jsbn.js"></script>
		<script type="text/javascript" src="/js/rsa/rsa.js"></script>
		<script type="text/javascript" src="/js/rsa/prng4.js"></script>
		<script type="text/javascript" src="/js/rsa/rng.js"></script>
		<script type="text/javascript" src="/js/jquery.urldecoder.js"></script>
		<script type="text/javascript" src="/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="/js/common.format.js"></script>
		<script type="text/javascript" src="/js/jquery.cookie.js"></script>
		<script type="text/javascript" src="/js/jquery.bootpag.js"></script>
		<script type="text/javascript" src="/js/jquery.form.js"></script>
		<script type="text/javascript" src="/js/common.js"></script>
		<script type="text/javascript" src="/js/selectbox-min.js"></script>
		<script type="text/javascript" src="/js/jquery.slides.min.js"></script>
		<script type="text/javascript" src="/js/jquery.slide.banner.js"></script>
		<script type="text/javascript" src="/js/nav_ui.js"></script>

		<script type="text/javascript">
			$(document).ready(function() {

				//$("#language_id").selectbox();/* js select */

			});

			//Mobile여부를 구분하기 위함
			var uAgent = navigator.userAgent.toLowerCase();

			// 아래는 모바일 장치들의 모바일 페이지 접속을위한 스크립트
			var mobilePhones = new Array('iphone', 'ipod', 'ipad', 'android',
					'blackberry', 'windows ce', 'nokia', 'webos', 'opera mini',
					'sonyericsson', 'opera mobi', 'iemobile');
			for (var i = 0; i < mobilePhones.length; i++)
				if (uAgent.indexOf(mobilePhones[i]) != -1) {
					document.location = "https://m.benikea.com/main.do";
				}
		</script>














		<div id="wrap" lang="KOR">
			<!-- //header -->
			<jsp:include page="../../include/header.jsp"/>
		</div>
		<!-- //wrap  -->

		<!-- Global site tag (gtag.js) - Google Analytics -->
		<script async=""
			src="https://www.googletagmanager.com/gtag/js?id=UA-113287751-1"></script>
		<script>
			window.dataLayer = window.dataLayer || [];
			function gtag() {
				dataLayer.push(arguments);
			}
			gtag('js', new Date());

			gtag('config', 'UA-113287751-1');
		</script>

		<script>
			jQuery(document).ready(
					function() {
						var select = $("select#hotel_list");
						select.change(function() {
							var select_name = $(this).children(
									"option:selected").text();
							$(this).siblings("label").text(select_name);
						});
					});
			$(document).ready(function() {
				$("#btn-hsearch").click(function(event) {

					var keyword = $('#hotel_search').val();
					if (keyword == "") {
						alert("호텔명 또는 도시명을 입력하세요.");
						return;
					}

					var form = document.sform;
					form.submit();
				});

				getHotelList();
			});

			function chgLang(lang) {
				/* 
				if(lang != "KOR"){ 
				  alert("점검 중입니다.");  	  	  	  
				  lang = "KOR";	  
				} */
				var url = location.href;

				if (url.indexOf('?') > 0) {
					url = url + '&';
				} else {
					url = url + '?';
				}
				$("#lang").val(lang);
				location.href = '/main.do?' + 'lang=' + lang;
			}

			function getHotelList() {
				var param = "langCd=KOR&channelCd=0000000001";

				setTimeout(
						function() {
							var getJsonObject = $.getServerConnect(param,
									mainHotelListC);

							if (getJsonObject.code == "000") {

								//호텔 웹사이트
								html = "";
								var totalCount = getJsonObject.data.webSite.length;

								//var pg = parseInt(totalCount / 6, 10) + ((totalCount % 6 != 0) ? 1 : 0); 
								html += '<option value="" selected="selected">호텔바로가기</option>';

								$
										.each(
												getJsonObject.data.webSite,
												function(key) {
													var hotelNm = getJsonObject.data.webSite[key].hotelNm;
													var webSite = getJsonObject.data.webSite[key].web_site;

													if (webSite
															.indexOf("http://") == 0) {
														html += '<option value="' + webSite +'">'
																+ hotelNm
																+ '</option>';

													} else {
														html += '<option value="http://' + webSite + '">'
																+ hotelNm
																+ '</option>';
													}

												});
								$('#hotel_list').html(html); // Footer 호텔 바로가기

							}
						}, 100);
			}
		</script>


		<!-- // 언어/나라 설정-->



		<link rel="stylesheet"
			href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">


		<!-- container -->
		<div lang="KOR" id="container" class="mct" style="position: absolute; left: 480px; top: 0px;">
			<div class="mc_cont">
				<div class="insr_cont inc2" >
					<h3 class="insc_h3">
						<strong></strong>
					</h3>
					<form id="quicksearchHotel" name="quicksearchHotel" method="post">
						<input type="hidden" id="regionCd" name="regionCd" value="14">
						<div class="cfx mt30">
							<div class="chain_ht_search">
								<div class="quick_res">
									
									<div class="scd_select" style="height:180px">
										<p>투숙일정 및 투숙인원을 선택해주세요.</p>
										<div class="row_wrap">
											<dl class="row_left">
												<dt>
												</dt>
												<dd>
													체크인<input type="text" style="height:40px" id="datepicker11" placeholder="yyyy-mm-dd" name="searchCheckin">
													<div class="date_box">
														
													</div>
												</dd>
											</dl>
											<dl class="row_right">
												<dt>
												</dt>
												<dd>
													체크아웃 <input type="text" style="height:40px" id="datepicker22" placeholder="yyyy-mm-dd" name="searchCheckout" value="">
													<div class="date_box">
													</div>
												</dd>
											</dl>
										</div>
										<div class="row_wrap">
											<dl class="row_left mt10">
												<dt>
													<label for="room_num">객실</label>
												</dt>
												<dd>
													<select name="room_num" id="room_num" class="cht_sel3"><option
															value="1" selected="">1</option>
														<option value="2">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option></select>
												</dd>
											</dl>
											<dl class="row_right mt10">
												<dt>
													<label for="room_person">인원</label>
												</dt>
												<dd>
													<select name="room_person" id="room_person"
														class="cht_sel3"><option value="1">1</option>
														<option value="2" selected="">2</option>
														<option value="3">3</option>
														<option value="4">4</option>
														<option value="5">5</option>
														<option value="6">6</option>
														<option value="7">7</option>
														<option value="8">8</option>
														<option value="9">9</option>
														<option value="10">10</option></select>
												</dd>
											</dl>
										</div>
										<button type="button" style="width:200px;height:50px" id="btn-search"
											class="btn btn_db btn_check">조회</button>
									</div>
								</div>
								<input type="hidden" id="stype" name="stype" value="1">
								<input type="hidden" id="sort" name="sort" value="1"> <input
									type="hidden" id="pagenum" name="pagenum" value="1"> <input
									type="hidden" id="tab" name="tab" value="1">
							</div>
						</div>
					</form>
					

					<div class="hts_ins_t">
						<div class="hts_tab">
							<ul class="ctab">
								<li><a href="javascript:search(1);" class="on">호텔</a></li>

							</ul>
						</div>
						<span id="list_orer2" class="low_high2" style="display: none">
							<a href="javascript:sort(1);" class="selected">이름순</a><span
							class="lh_line">|</span> <a href="javascript:sort(2);">낮은 가격순</a><span
							class="lh_line">|</span> <a href="javascript:sort(3);">높은 가격순</a>
						</span>
					</div>

					<div id="tab1" style="display: block;">
						<div class="sch_list hts_ins_t">
							<div id="nodata" class="hts_tab"></div>
							<ul>
								<li><div class="chh_thum" style="width:1000px;">
										<div class="chh_img" onclick="infoHotel(1083)">
											<img style="width: 280px;"
												src="http://192.168.10.147/HCYHotel/common/business/img/H000048_1.jpg"
												alt="베니키아 스위스로젠 호텔">
										</div>
										<div class="chh_txt" onclick="infoHotel(1083)">
											<strong>골든 호텔</strong>
											<div
												style="width: 470px; word-break: break-all; word-wrap: break-word;">
												서울 강남구 가로수길 5</div>
											<ul class="chh_ul">
												<li>등급<strong>5성</strong></li>
												<li>기본 인원<strong>2</strong></li>
												<li>최대 인원<strong>6</strong></li>
												<li>후기<strong>16</strong></li>
											</ul>
										</div>
										<div class="chh_price">
										<a href="http://192.168.10.147/HCYHotel/user/hotel/room/user_roombooking.do"><button type="button">결제하기</button></a>
											<span class="pr_txt">가격 </span><strong class="pr_red">₩120,000</strong>
											<span class="btn_reser_s"> 
											<button type="button" class="btn btn-danger">예약하기</button>
											</span>
										</div>
									</div></li>
							</ul>
						</div>

						<div id="paging" class="paging">
							<ul class="pagination bootpag">
								<li data-lp="1" class="prev disabled"><a
									href="javascript:void(0);">이전</a></li>
								<li data-lp="1" class="active"><a
									href="javascript:void(0);">1</a></li>
								<li data-lp="2" class="next"><a href="javascript:void(0);">다음</a></li>
							</ul>
						</div>
					</div>
					<!-- // tab1 -->

					<div id="tab2" style="display: none;">
						<div class="sch_list hts_ins_t">
							<div id="nodata" class="hts_tab"></div>
							<ul>
							</ul>

						</div>

						<div id="paging" class="paging"></div>
					</div>
					<!-- // tab2 -->

				</div>
				<!-- //고객추천 -->

			</div>
		</div>
		<!-- //container -->


		<script type="text/javascript">
			var hotel_sort = 1; // 1:이름순, 2:낮은 가격순, 3:높은 가격순, 4:후기 많은순
			var room_sort = 1; // 1:이름순, 2:낮은 가격순, 3:높은 가격순

			var region = "";
			var hotelNo = "";

			$(document).ready(function() {

				getRegions();

				var html = "<option value='A'>전체</option>";
				$('#hotelNo').html(html);

				hotelAllList();

				if (region != "") {
					$("#area_select").trigger("change");
				}

				/* $("#checkin").datepicker({
					dateFormat : 'yy-mm-dd',
					minDate : 0
				});

				$("#checkout").datepicker({
					dateFormat : 'yy-mm-dd',
					minDate : 0
				}); */

				var html1 = "", html2 = "";
				for (var i = 1; i <= 10; i++) {
					html1 += "<option value=\"" + i + "\" ";
					if ("1" == i)
						html1 += "selected";
					html1 += ">" + i + "</option>";

					html2 += "<option value=\"" + i + "\" ";
					if ("2" == i)
						html2 += "selected";
					html2 += ">" + i + "</option>";
				}

				$("#room_num").html(html1);
				$("#room_person").html(html2);

				var stype = $("#stype").val();
				var sort = $("#sort").val();
				var pagenum = $("#pagenum").val();
				$('.ctab li a').each(function(index) {
					if (index == (stype - 1))
						$(this).addClass('on');
					else
						$(this).removeClass('on');
				});

				if (stype == "1") {
					hotel_sort = sort;

					$("#tab1").css('display', 'block');
					$("#tab2").css('display', 'none');

					$("#list_orer1").css('display', 'block');
					$("#list_orer2").css('display', 'none');

					$('#list_orer1 li a').each(function(index) {
						if (index == (sort - 1))
							$(this).addClass('selected');
						else
							$(this).removeClass('selected');
					});

					getSearchHotel(pagenum);
				}
				if (stype == "2") {
					room_sort = sort;

					$("#tab1").css('display', 'none');
					$("#tab2").css('display', 'block');

					$("#list_orer1").css('display', 'none');
					$("#list_orer2").css('display', 'block');

					$('#list_orer2 li a').each(function(index) {
						if (index == (sort - 1))
							$(this).addClass('selected');
						else
							$(this).removeClass('selected');
					});

					getSearchRoom(pagenum);

				}
			});
			function hotelAllList() {
				var param = "langCd=KOR&channelCd=0000000001&regionCd=" + "";
				var getJsonObject = $.getServerConnect(param, getHotelNamesC);
				var html = "<option value='A'>전체</option>";

				if (getJsonObject.code == "000") {
					$
							.each(
									getJsonObject.data.hotelList,
									function(key) {
										var hotelNo = getJsonObject.data.hotelList[key].code;
										var hotelNm = "";

										if (isNullSpace(getJsonObject.data.hotelList[key].codeNm) == "") {
											hotelNm = "";
										} else {
											hotelNm = getJsonObject.data.hotelList[key].codeNm;
										}

										html += "<option value=\"" + hotelNo + "\" >"
												+ hotelNm + "</option>";
									});
					html += "</select>";
				}
				$('#hotelNo').html(html);
			}

			//지역정보 조회
			function getRegions() {

				var param = "langCd=KOR&channelCd=0000000001";
				var getJsonObject = $.getServerConnect(param, getRegionsC);
				var html = "<option value='A'>전체</option>";

				if (getJsonObject.code == "000") {
					$.each(getJsonObject.data.regionList, function(key) {
						var code = getJsonObject.data.regionList[key].code;
						var codeNm = getJsonObject.data.regionList[key].codeNm;

						html += "<option value=\"" + code + "\" "
						if (region == code)
							html += "selected";
						html += ">" + codeNm + "</option>";
					});
					html += "</select>";
				}

				$('#area_select').html(html);

				if (region == "A") {
					$("#area_select").val("A").attr("selected", "selected");
				}
			}

			// 호텔리스트
			$("#area_select")
					.change(
							function() {

								var regionCd = $("#area_select").val();
								if (regionCd == 'A')
									regionCd = "";

								var param = "langCd=KOR&channelCd=0000000001&regionCd="
										+ regionCd;
								var getJsonObject = $.getServerConnect(param,
										getHotelNamesC);
								var html = "<option value='A'>전체</option>";

								if (getJsonObject.code == "000") {

									$
											.each(
													getJsonObject.data.hotelList,
													function(key) {
														var hotelCode = getJsonObject.data.hotelList[key].code;
														var hotelNm = "";

														if (isNullSpace(getJsonObject.data.hotelList[key].codeNm) == "") {
															hotelNm = "";
														} else {
															hotelNm = getJsonObject.data.hotelList[key].codeNm;
														}

														html += "<option value=\""
																+ hotelCode
																+ "\" ";
														if (hotelNo == hotelCode)
															html += "selected";
														html += ">" + hotelNm
																+ "</option>";
													});
									html += "</select>";
								}

								$('#hotelNo').html(html);

							});

			$("#btn-search").click(function(event) {
				safePreventEvent(event);
				var regionCd = $("#area_select").val();
				if (regionCd == 'A')
					regionCd = "";

				var hotelNo = $('#hotelNo').val();
				if (hotelNo == 'A')
					hotelNo = "";

				var form = document.quicksearchHotel;
				form.action = "/hotelReservation/searchHotelList.do";
				form.stype.value = "1";
				form.sort.value = "1";
				form.pagenum.value = "1";

				form.submit();
			});

			function getSearchHotel(page) {
				var startIdx = parseInt(((page - 1) * 10) + 1);
				var endIdx = parseInt(page * 10);

				var checkin = $("#checkin").val();
				var checkout = $("#checkout").val();
				var room_num = $("#room_num").val();
				var room_person = $("#room_person").val();

				var regionCd = "", hotelNo = "";

				regionCd = $("#area_select").val();
				if (regionCd == 'A')
					regionCd = "";

				hotelNo = $('#hotelNo').val();
				if (hotelNo == 'A')
					hotelNo = "";

				/* if ((regionCd == null && hotelNo == null) || (regionCd == "" && hotelNo == null)) {
				    return;
				} */

				if (regionCd == null)
					regionCd = "";
				if (hotelNo == null)
					hotelNo = "";

				checkin = checkin.replace(/\-/g, '');
				checkout = checkout.replace(/\-/g, '');
				var param = "langCd=KOR&channelCd=0000000001"
						+ "&searchKeyword=BENIKEAQUICKSEARCH" + "&regionCd="
						+ regionCd + "&hotelNo=" + hotelNo + "&roomCnt="
						+ room_num + "&maxNopCnt=" + room_person + "&saleDate="
						+ checkin + "&edate=" + checkout + "&sort="
						+ hotel_sort + "&startIdx=" + startIdx + "&endIdx="
						+ endIdx;

				var getJsonObject = $.getServerConnect(param, searchHotelC);

				if (getJsonObject.code == "000") {

					// 검색된 호텔리스트가 한개면 예약 페이지로 자동 이동 javascript:goReserve(1077, '베니키아 KCP호텔',  07);
					if (getJsonObject.data.totalCount == 1) {
						goReserve(getJsonObject.data.hotelList[0].hotelNo,
								getJsonObject.data.hotelList[0].hotelNm,
								getJsonObject.data.hotelList[0].regionCd);
						return;
					}

					var rsvnTypeNm;
					if ('KOR' == "KOR")
						rsvnTypeNm = "예약마감";
					if ('KOR' == "ENG")
						rsvnTypeNm = "Book Comp";
					if ('KOR' == "JPN")
						rsvnTypeNm = "予約終了";
					if ('KOR' == "CHN")
						rsvnTypeNm = "预约结束";
					if ('KOR' == "BUN")
						rsvnTypeNm = "預約結束";

					if (hotelNo == "")
						$(".sch_result strong").text(
								$("#area_select option:selected").text() + " ("
										+ getJsonObject.data.totalCount + ")");
					else
						$(".sch_result strong").text(
								$("#hotelNo option:selected").text() + " ("
										+ getJsonObject.data.totalCount + ")");

					var html = "";

					$
							.each(
									getJsonObject.data.hotelList,
									function(key) {
										var hotelNo = getJsonObject.data.hotelList[key].hotelNo;
										var hotelNm = "";

										if (isNullSpace(getJsonObject.data.hotelList[key].hotelNm) == "") {
											hotelNm = "";
										} else {
											hotelNm = getJsonObject.data.hotelList[key].hotelNm;
										}

										var imgUrl = "/ezstock/"
												+ getJsonObject.data.hotelList[key].imgUrl;
										var imgToolTip = $
												.trim(getJsonObject.data.hotelList[key].toolTipText);
										if (imgToolTip == "")
											imgToolTip = hotelNm;
										var addrName = getJsonObject.data.hotelList[key].addrName;
										var gradeName = getJsonObject.data.hotelList[key].gradeName;
										var adComt = getJsonObject.data.hotelList[key].adComt;
										if (adComt == "")
											adComt = "&nbsp;";
										var minRoomRate = getJsonObject.data.hotelList[key].minRoomRate;
										var regionCd = getJsonObject.data.hotelList[key].regionCd;

										if (hotelNo == '1155')
											return;
										else {
											html += '<li>'
													+ '<div class="chh_thum" ><div class="chh_img" onclick="infoHotel('
													+ hotelNo
													+ ')"><img style="width:280px;" src="' + imgUrl + '" alt="' + imgToolTip + '" /></div>'
													+ ' <div class="chh_txt" onclick="infoHotel('
													+ hotelNo
													+ ')"><strong>'
													+ hotelNm
													+ '</strong>'
													+ '      <div style="width:470px;word-break:break-all;word-wrap:break-word;">'
													+ addrName
													+ '</div>'
													+ ' <ul class="chh_ul">'
													+ ' <li>등급<strong>'
													+ gradeName
													+ '</strong></li><li>객실수<strong>'
													+ getJsonObject.data.hotelList[key].roomCnt
													+ '</strong></li>'
													+ ' <li>추천<strong>'
													+ getJsonObject.data.hotelList[key].recommandCnt
													+ '</strong></li>'
													+ ' <li>평점<strong>'
													+ getJsonObject.data.hotelList[key].averagePoint
													+ '</strong></li>'
													+ ' <li>후기<strong>'
													+ getJsonObject.data.hotelList[key].afterCnt
													+ '</strong></li>'
													+ ' </ul></div>'
													+ ' <div class="chh_price">'
													+ ' <span class="pr_txt">최저가 </span>';

											if (minRoomRate == 0
													|| minRoomRate == null
													|| minRoomRate == "") {
												html += '<strong class="pr_red">'
														+ rsvnTypeNm
														+ '</strong>';
											} else {
												html += '<strong class="pr_red">₩'
														+ comma(minRoomRate)
														+ '</strong>';
											}

											html += ' <span class="btn_reser_s">'
													+ ' <a href="javascript:goReserve('
													+ hotelNo
													+ ', \''
													+ hotelNm
													+ '\',  '
													+ regionCd
													+ ');"><img src="../images/contents/btn_reser_s.jpg" alt="예약하기" /></a>'
													+ ' <a href="javascript:interest('
													+ hotelNo
													+ ');"><img src="../images/contents/btn_about_hotel.jpg" alt="관심호텔추가" /></a>'
													+ ' </span>'
													+ ' </div></div>' + '</li>';
										}

										$("#regionCd").val(regionCd);
									});
					$('#tab1 ul').html(html);

					displayPage(1, page, getJsonObject.data.totalCount);
				} else /*if (getJsonObject.code == "111")*/{
					if (hotelNo == "")
						$(".sch_result strong").text(
								$("#area_select option:selected").text()
										+ " (0)");
					else
						$(".sch_result strong").text(
								$("#hotelNo option:selected").text() + " (0)");

					$('#tab1 #nodata').html("<h4>검색결과가 없습니다.!</h4>");
					$('#tab1 #nodata').css('display', 'block');
				}

			}

			function getSearchRoom(page) {
				var startIdx = parseInt(((page - 1) * 10) + 1);
				var endIdx = parseInt(page * 10);

				var regionCd = $("#area_select").val();
				if (regionCd == 'A')
					regionCd = "";

				var hotelNo = $('#hotelNo').val();

				var checkin = $("#checkin").val();
				var checkout = $("#checkout").val();
				var room_num = $("#room_num").val();
				var room_person = $("#room_person").val();

				if ((regionCd == null && hotelNo == null)
						|| (regionCd == "" && hotelNo == null)) {
					return;
				}

				if (regionCd == null)
					regionCd = "";
				if (hotelNo == null)
					hotelNo = "";

				checkin = checkin.replace(/\-/g, '');
				checkout = checkout.replace(/\-/g, '');

				var param = "langCd=KOR&channelCd=0000000001" + "&regionCd="
						+ regionCd + "&hotelNo=" + hotelNo + "&roomCnt="
						+ room_num + "&maxNopCnt=" + room_person + "&saleDate="
						+ checkin + "&edate=" + checkout + "&sort=" + room_sort
						+ "&startIdx=" + startIdx + "&endIdx=" + endIdx;

				setTimeout(
						function() {
							var getJsonObject = $.getServerConnect(param,
									searchRoomC);

							if (getJsonObject.code == "000") {
								if (hotelNo == "")
									$(".sch_result strong")
											.text(
													$(
															"#area_select option:selected")
															.text()
															+ " ("
															+ getJsonObject.data.totalCount
															+ ")");
								else
									$(".sch_result strong")
											.text(
													$(
															"#hotelNo option:selected")
															.text()
															+ " ("
															+ getJsonObject.data.totalCount
															+ ")");

								var html = "";

								$
										.each(
												getJsonObject.data.roomList,
												function(key) {
													var hotelNo = getJsonObject.data.roomList[key].hotelNo;
													var hotelNm = getJsonObject.data.roomList[key].hotelNm;
													var addrName = getJsonObject.data.roomList[key].addrName;
													var roomType = getJsonObject.data.roomList[key].roomType;
													var rtypeNm = getJsonObject.data.roomList[key].rtypeNm;

													var imgUrl = "/ezstock/"
															+ getJsonObject.data.roomList[key].imgUrl;
													var imgToolTip = $
															.trim(getJsonObject.data.roomList[key].toolTipText);
													if (imgToolTip == "")
														imgToolTip = rtypeNm;

													html += '<li>'
															+ '<div class="chh_thum" style="cursor:pointer;" onclick="infoHotel('
															+ hotelNo
															+ ')" ><div class="chh_img"><img style="width:280px;" src="' + imgUrl + '" alt="' + imgToolTip + '" /></div>'
															+ ' <div class="chh_txt"><strong>'
															+ hotelNm
															+ '</strong>'
															//+ '    <p>' + addrName + '</p>'
															+ '    <span>'
															+ addrName
															+ '</span>'
															+ ' <ul class="chh_ul"">'
															+ '     <li>기준인원 <strong>'
															+ getJsonObject.data.roomList[key].stdNopCnt
															+ '</strong></li>'
															+ '     <li>최대인원 <strong>'
															+ getJsonObject.data.roomList[key].maxNopCnt
															+ '</strong></li>'
													if (getJsonObject.data.roomList[key].breakIncYn == "Y") {
														html += '           <li>조식포함 <strong>'
																+ getJsonObject.data.roomList[key].breakfastDesc
																+ '</strong></li>'
													} else {
														html += '           <li>불포함 </li>'
													}
													html += '   </ul></div>'
															+ ' <div class="chh_price">'
															+ ' <span class="pr_txt">최저가 </span><strong class="pr_red">₩'
															+ comma(getJsonObject.data.roomList[key].roomRate)
															+ '</strong>'
															+ ' <span class="btn_reser_s">'
															+ ' <a onclick="infoHotel('
															+ hotelNo
															+ ');"><img src="../images/contents/btn_reser_s.jpg" alt="예약하기" /></a>'
															+ ' </span>'
															+ ' </div></div>'
															+ '</li>'

												});

								$('#tab2 ul').html(html);

								displayPage(2, page,
										getJsonObject.data.totalCount);
							} else if (getJsonObject.code == "111") {
								if (hotelNo == "")
									$(".sch_result strong").text(
											$("#area_select option:selected")
													.text()
													+ " (0)");
								else
									$(".sch_result strong").text(
											$("#hotelNo option:selected")
													.text()
													+ " (0)");

								$('#tab2 #nodata').html(
										"<h4>선택하신 조건으로 예약 가능한 객실이 없습니다.</h4>");
								$('#tab2 #nodata').css('display', 'block');
							}
						}, 100);
			}

			function displayPage(tab, page, total) {
				var cur_page = page;
				var total_count = total;
				var page_per_count = 10;
				var total_page = parseInt(total_count / page_per_count);
				if (total_count % page_per_count > 0)
					total_page++;

				var parent;
				if (tab == 1)
					parent = $('#tab1');
				if (tab == 2)
					parent = $('#tab2');

				parent.find('#paging').bootpag({
					total : total_page,
					page : cur_page,
					maxVisible : 10,
					prev : '이전',
					next : '다음',
				}).on('page', function(event, num) {
					parent.find('#paging').empty();
					parent.find('#paging').unbind('page');

					goPage(tab, num);
				});
			}

			function goPage(tab, page) {
				var form = document.quicksearchHotel;
				form.stype.value = tab;
				form.pagenum.value = page;
				form.action = "/hotelReservation/searchHotelList.do";
				form.submit();
			}

			function sort(sort) {
				var regionCd = $("#area_select").val();
				var hotelNo = $('#hotelNo').val();

				if ((regionCd == null && hotelNo == null)
						|| (regionCd == "" && hotelNo == null)) {
					return;
				}

				var form = document.quicksearchHotel;
				form.sort.value = sort;
				form.pagenum.value = "1";
				form.action = "/hotelReservation/searchHotelList.do";
				form.submit();
			}

			function search(tab) {
				var regionCd = $("#area_select").val();
				var hotelNo = $('#hotelNo').val();

				if ((regionCd == null && hotelNo == null)
						|| (regionCd == "" && hotelNo == null)) {
					return;
				}

				var form = document.quicksearchHotel;
				form.stype.value = tab;
				form.sort.value = "1";
				form.pagenum.value = "1";
				form.action = "/hotelReservation/searchHotelList.do";
				form.submit();
			}

			function interest(hotelNo) {
				if ("" == "N") {
					alert("회원만 이용 가능합니다.");
					return;
				}
				if ("" == "") {
					alert("로그인 후 이용 가능합니다.");
					return;
				}

				var param = "langCd=KOR&channelCd=0000000001" + "&hotelNo="
						+ hotelNo + "&memberId="
						+ "&firstRegUserIp=211.63.89.134";

				setTimeout(
						function() {
							var getJsonObject = $.getServerConnect(param,
									insInterestC);

							if (getJsonObject.code == "000") {
								alert("관심 호텔로 등록되었습니다.\n해당 호텔의 이벤트 및 기타 프로모션 정보는\n마이페이지에서 확인가능합니다.");
							} else if (getJsonObject.code == "H01") {
								alert("관심 호텔에 등록되어 있는 호텔입니다.");
							} else if (getJsonObject.code == "H02") {
								alert("관심 호텔은 최대 6개 까지만\n등록 가능합니다.");
							} else {
								var msg = "";
								if ("KOR" == "ENG")
									msg = "에 실패하였습니다. 관심호텔추가.";
								else
									msg = "관심호텔추가에 실패하였습니다.";

								if (typeof (getJsonObject.code) != "undefined")
									msg += " (" + getJsonObject.code + ")";
								alert(msg);
							}
						}, 100);
			}

		/* 	$('#checkin').change(
					function() {
						var selectedDay = $('#checkin').datepicker('getDate');
						var oneDay = new Date(selectedDay.getTime()
								+ (86400000 * 1));
						$('#checkout').val(
								$.datepicker.formatDate('yy-mm-dd', oneDay));
					}); */

			function infoHotel(hotelNo) {

				var form = document.quicksearchHotel;
				form.hotelNo.value = hotelNo;
				form.action = "/hotel/infoHotel.do";

				form.submit();
			}

			function goReserve(hotelNo, hotelNm, regionCd) {

				var form = document.quicksearchHotel;
				form.hotelNo.value = hotelNo;
				form.hotelNm.value = hotelNm;

				form.action = "/hotelReservation/quickReservation.do";

				form.submit();
			}
		</script>

		<div class="quick_wrap jbFixed">


























			<!-- quick menu -->



			<!-- //quick menu -->

			<script type="text/javascript">
				$(document).ready(function() {

					var jbOffset = $('.quick_wrap').offset();
					$(window).scroll(function() {
						if ($(document).scrollTop() > jbOffset.top) {
							$('.quick_wrap').addClass('jbFixed');
						} else {
							$('.quick_wrap').removeClass('jbFixed');
						}
					});

				});

				$(".rate").click(function() {
					$("#exc_rate").show();
				});
				$(".btn_layer_close").click(function() {
					$("#exc_rate").hide();
				});

				/* quickmenu view history */
				if ($('.vhslider').length) {
					var slider = $('.vhslider')
							.bxSlider(
									{
										auto : false,
										pager : false,
										speed : 500,
										controls : true,
										infiniteLoop : true,
										nextSelector : $(".qm_paging").find(
												".bx_next"),
										prevSelector : $(".qm_paging").find(
												".bx_prev"),
										onSliderLoad : function(currentIndex) {
											$('.current_index').text(
													currentIndex + 1);
										},
										onSlideBefore : function($slideElement,
												oldIndex, newIndex) {
											$('.current_index').text(
													newIndex + 1);
										}
									});
					$('.total_number').append(slider.getSlideCount());
					if (slider.getSlideCount() == 0) {
						$('.current_index').text("0");
					}
					if (slider.getSlideCount() <= 1) {
						$('.qm_mythum .bx-wrapper .bx-prev').css('display',
								'none');
						$('.qm_mythum .bx-wrapper .bx-next').css('display',
								'none');
					}

				}
			</script>
		</div>



























		<script type="text/javascript">
			/* email_reject */
			$(function() {
				$('#benefit_wrap').hide();
				$('.btn_email_refuse').click(function() {
					$('#benefit_wrap').show();
					return false;
					// var p = $(window).offset();
					$('#benefit_wrap').height(document.body.scrollHeight);
				});
				$('.btn_pop_close a').click(function() {
					$('#benefit_wrap').hide();
				});
			});
		</script>

		<!-- <img src="/ezstock/tinymce/upload/benikea_footer_1920_530.png" alt="evnet" style="width:100%" /> -->
		<!-- <img src="https://www.benikea.com/ezstock/tinymce/upload/홈페이지 하단.jpg" alt="evnet" style="width:100%" />  -->
		<!-- <img src="https://www.benikea.com/ezstock/tinymce/upload/겨울_홈페이지.jpg"  alt="evnet" style="width:100%"/> -->
	


		<!-- footer -->
		<jsp:include page="../../include/footer.jsp"/>

		<!-- 이메일무단수집거부 -->
		<div lang="KOR" id="benefit_wrap"
			style="position: absolute; top: 0; left: 0; width: 100%; height: 100%; display: none;">
			<div class="pop_email_wrap">
				<div class="pop_ins">

					<h2 class="pop_email_h2">이메일주소무단수집거부</h2>
					<span class="btn_pop_close"><a href="javascript:void(0);"><img
							src="../images/contents/btn_pop_close.jpg" alt="닫기"></a></span>
					<div class="inf_email">
						<!-- <p>본 웹사이트에 게시된 전자우편주소가 전자우편수집 프로그램이나 그 밖의 기술적 장치를 이용하여 무단으로 수집되는 것을 거부하며, 이를 위반시 정보통신망법에 의해 형사처벌됨을 유념하시기 바랍니다.
                </p>
                <p>이메일을 기술적 장치를 사용하여 무단으로 수집ㆍ판매ㆍ유통하거나 이를 이용한 자는「정보통신망이용촉진및정보보호등에관한법률」 제50조의2 규정에 의하여 1천만원 이하의 벌금형에 처해집니다.
                </p>
                <dl>
                	<dt>정보통신망법 제50조의2 (전자우편주소의 무단 수집행위 등 금지)</dt>
                    <dd>1. 누구든지 전자우편주소의 수집을 거부하는 의사가 명시된 인터넷 홈페이지에서 자동으로 전자우편주소를 수집하는 프로그램 그 밖의 기술적 장치를 이용하여 전자우편주소를 수집하여서는 아니된다.</dd>
                    <dd>2. 누구든지 제1항의 규정을 위반하여 수집된 전자우편주소를 판매ㆍ유통하여서는 아니된다.
                    </dd>
                    <dd>3. 누구든지 제1항 및 제2항의 규정에 의하여 수집ㆍ판매 및 유통이 금지된 전자우편주소임을 알고 이를 정보전송에 이용하여서는 아니된다.
                    </dd>
                </dl> -->
						<p>허가 또는 동의 없이 본 웹사이트에 게시된 전자우편주소(이메일)를 전자우편수집 프로그램이나 그 밖의 기술적
							장치를 이용, 수집하여 판매, 유통하는 것을 거부하며, 이를 위반할 경우 관련 법률에 따라 처벌받을 수 있음을
							유념하시기 바랍니다.</p>
						<p>위의 사항 위반 시 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제 50조(영리목적의 광고성 정보 전송
							제한)와 개인정보 보호법 제 17조(개인정보의 제공), 제18조(개인정보의 목적 외 이용•제공 제한)의 규정에 의하여
							5년 이하의 징역 또는 5천만원 이하의 벌금형에 처해집니다</p>
					</div>


				</div>
			</div>
		</div>
		<!-- //이메일무단수집거부 -->



	</div>


	<div id="ui-datepicker-div"
		class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all"
		style="position: absolute; top: 559px; left: 871.5px; z-index: 2; display: none;">
		<div
			class="ui-datepicker-header ui-widget-header ui-helper-clearfix ui-corner-all">
			<a class="ui-datepicker-prev ui-corner-all ui-state-disabled"
				title="Prev"><span class="ui-icon ui-icon-circle-triangle-w">Prev</span></a><a
				class="ui-datepicker-next ui-corner-all" data-handler="next"
				data-event="click" title="Next"><span
				class="ui-icon ui-icon-circle-triangle-e">Next</span></a>
			<div class="ui-datepicker-title">
				<span class="ui-datepicker-month">December</span>&nbsp;<span
					class="ui-datepicker-year">2023</span>
			</div>
		</div>
		<table class="ui-datepicker-calendar">
			<thead>
				<tr>
					<th class="ui-datepicker-week-end"><span title="Sunday">Su</span></th>
					<th><span title="Monday">Mo</span></th>
					<th><span title="Tuesday">Tu</span></th>
					<th><span title="Wednesday">We</span></th>
					<th><span title="Thursday">Th</span></th>
					<th><span title="Friday">Fr</span></th>
					<th class="ui-datepicker-week-end"><span title="Saturday">Sa</span></th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">1</span></td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">2</span></td>
				</tr>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">3</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">4</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">5</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">6</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">7</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">8</span></td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">9</span></td>
				</tr>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">10</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">11</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">12</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">13</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">14</span></td>
					<td class=" ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">15</span></td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">16</span></td>
				</tr>
				<tr>
					<td
						class=" ui-datepicker-week-end ui-datepicker-unselectable ui-state-disabled "><span
						class="ui-state-default">17</span></td>
					<td
						class=" ui-datepicker-days-cell-over  ui-datepicker-current-day ui-datepicker-today"
						data-handler="selectDay" data-event="click" data-month="11"
						data-year="2023"><a
						class="ui-state-default ui-state-highlight ui-state-active"
						href="#">18</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">19</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">20</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">21</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">22</a></td>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="11" data-year="2023"><a
						class="ui-state-default" href="#">23</a></td>
				</tr>
				<tr>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="11" data-year="2023"><a
						class="ui-state-default" href="#">24</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">25</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">26</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">27</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">28</a></td>
					<td class=" " data-handler="selectDay" data-event="click"
						data-month="11" data-year="2023"><a class="ui-state-default"
						href="#">29</a></td>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="11" data-year="2023"><a
						class="ui-state-default" href="#">30</a></td>
				</tr>
				<tr>
					<td class=" ui-datepicker-week-end " data-handler="selectDay"
						data-event="click" data-month="11" data-year="2023"><a
						class="ui-state-default" href="#">31</a></td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
					<td
						class=" ui-datepicker-week-end ui-datepicker-other-month ui-datepicker-unselectable ui-state-disabled">&nbsp;</td>
				</tr>
			</tbody>
		</table>
		<p class="select_info">
			<span class="today"><em></em> Today</span><span class="select"><em></em>
				Seleted day</span>
		</p>
	</div>
</body>
</html>