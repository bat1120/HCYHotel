<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="다이닝 예약"%>

<html xml:lang="ko" lang="ko" class="webkit chrome win  js portrait pc"><head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="format-detection" content="telephone=no">
<title>다이닝예약 | HCYCombined</title>
<!-- <meta name="keywords" content="" /> -->
<meta name="og:title" content="예약 | 다이닝예약 | The Shilla Hotels &amp; Resorts">
<!-- 검색엔진용 추가 180524 -->
<meta name="keywords" content="신라스테이,신라호텔,서울신라호텔,제주신라호텔,호텔신라,럭셔리호텔,신라리워즈">
<meta name="description" content="국내 최고 럭셔리 호텔인 호텔신라는 신라호텔과 신라스테이 브랜드를 보유하고 있습니다.">
<meta name="subject" content="신라스테이 소개,신라 리워즈 안내,브랜드 및 호텔 소개,객실 패키지 안내,온라인 최저가 예약,">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-30Y6N61ES4&amp;l=dataLayer&amp;cx=c"></script><script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script><script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-MVMT1LF00G&amp;l=dataLayer&amp;cx=c"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-T3LBJ26"></script><script type="text/javascript">

document.write("<div id='popCalendarDiv' class='popCalendar' style='display:none' ></div>");


function getDaysInMonth(year, month) {
  return [31,((!(year % 4 ) && ( (year % 100 ) || !( year % 400 ) ))?29:28),31,30,31,30,31,31,30,31,30,31][month-1];
}

function getDayOfWeek(year, month, day) {
  var date = new Date(year,month-1,day);
  return date.getDay();
}

this.clearDate = clearDate;
function clearDate() {
  dateField.value = '';
  hide();
}

 function getCurrentYear() {
  var year = new Date().getFullYear();
  if(year < 1900) year += 1900;
  return year;
}

function getCurrentMonth() {
  return new Date().getMonth() + 1;
} 

function getCurrentDay() {
  return new Date().getDate();
}

var thisYear = getCurrentYear();
var thisMonth = getCurrentMonth();
var thisDay = getCurrentDay();


var selectedYear = thisYear;
var selectedMonth = thisMonth;
var selectedDay = "";


function calendarDrawTable( calenderDivId , currentYear , currentMonth , currentDay ) {

	if(currentMonth == 0){
		currentYear = currentYear - 1;
		currentMonth = 12;
	}

	var lastMonth =  currentMonth;

	if(currentMonth == 12){
		lastMonth = 1; 
	}else{
		lastMonth = lastMonth + 1;
	}

	var dayOfMonth = 1;
	var validDay = 0;
	var startDayOfWeek = getDayOfWeek(currentYear, currentMonth, dayOfMonth);
	var daysInMonth = getDaysInMonth(currentYear, currentMonth);
	
	var months = [];
	months.push(messages["javascript.calendar.january"]);
	months.push(messages["javascript.calendar.february"]);
	months.push(messages["javascript.calendar.march"]);
	months.push(messages["javascript.calendar.april"]);
	months.push(messages["javascript.calendar.may"]);
	months.push(messages["javascript.calendar.june"]);
	months.push(messages["javascript.calendar.july"]);
	months.push(messages["javascript.calendar.august"]);
	months.push(messages["javascript.calendar.september"]);
	months.push(messages["javascript.calendar.october"]);
	months.push(messages["javascript.calendar.november"]);
	months.push(messages["javascript.calendar.december"]);

    var table = "	<div class='dateCtl'>";

	table = table + "	<div class='datePrev'><a class='btnPrev' href='javascript:calenderView(0,-1);' title='" + messages["javascript.calendar.pre.month.title"] + "'>&lt;</a></div>";
	table = table + "	<div class='dateNow'>"+currentYear+"."+months[currentMonth-1]+"</div>";
	table = table + "	<div class='dateNext'><a class='btnNext' href='javascript:calenderView(0,1);' title='" + messages["javascript.calendar.next.month.title"] + "'>"+" &gt;</a></div>";
	table = table + "	</div>";

    table = table + "	<table summary='" + messages["javascript.calendar.next.month.title"] + "'>";
    table = table + "	<caption>" + messages["javascript.calendar.table.caption"].replaceMsg([months[currentMonth-1]]) + "</caption>";
    table = table + "	<thead>";
    table = table + "		<tr>";
    table = table + "		<th scope='col' class='sun'><span>" + messages["javascript.calendar.table.col.sun"] + "</span></th>	";
    table = table + "		<th scope='col' class='mon'><span>" + messages["javascript.calendar.table.col.mon"] + "</span></th>";
    table = table + "		<th scope='col' class='tue'><span>" + messages["javascript.calendar.table.col.tue"] + "</span></th>";
    table = table + "		<th scope='col' class='wed'><span>" + messages["javascript.calendar.table.col.wed"] + "</span></th>";
    table = table + "		<th scope='col' class='thu'><span>" + messages["javascript.calendar.table.col.thu"] + "</span></th>";
    table = table + "		<th scope='col' class='fri'><span>" + messages["javascript.calendar.table.col.fri"] + "</span></th>";
    table = table + "		<th scope='col' class='sat'><span>" + messages["javascript.calendar.table.col.sat"] + "</span></th>";
    table = table + "	</tr>	";
    table = table + "	</thead>	";
    table = table + "	<tbody>	";
    
    for(var week=0; week < 6; week++) {
      table = table + "<tr>";
      for(var dayOfWeek=0; dayOfWeek < 7; dayOfWeek++) {
        if(week == 0 && startDayOfWeek == dayOfWeek) {
          validDay = 1;
        } else if (validDay == 1 && dayOfMonth > daysInMonth) {
          validDay = 0;
        }

        if(validDay) {
          

		  var viewMonth = currentMonth;
		  var viewDay = dayOfMonth;
		  
		  if(currentMonth < 10 && viewMonth.length == 1 ){
			viewMonth = "0"+currentMonth;
		  }
		  if(dayOfMonth < 10 && viewDay.length == 1 ){
			viewDay = "0"+dayOfMonth;
		  }

		  
		  if(thisYear == currentYear && thisMonth == viewMonth && thisDay == viewDay ){
	          table = table + "<td><span class='today' >";
		  }else{
	          table = table + "<td><span  >";
		  }
		  table = table + "<div id='count_"+currentYear+viewMonth+viewDay+"'></div>";
		  table = table + "<div id='"+currentYear+viewMonth+viewDay+"'>";
		  table = table + "<a href=\"#none\" title='" + currentYear + messages["javascript.calendar.year.title"] + viewMonth + messages["javascript.calendar.month.title"] + viewDay + messages["javascript.calendar.day.title"]+"' onclick='javascript:setCalendarControlDate("+currentYear+","+viewMonth+","+viewDay+");'  >"+viewDay+"</a>";
		  table = table + "</div>";
		  table = table + "</span></td>";
          dayOfMonth++;
        } else {
          table = table + "<td><span>&nbsp;</span></td>";
        }
      }
      table = table + "</tr>";
    }
    table = table + "</tbody>";


    table = table + "</table>";
    
    $("#"+calenderDivId).html(table);

  }
  

function calenderView( yearMovieNum , monthMovieNum ){
	
	if (yearMovieNum == 0 && monthMovieNum == 0) {
		selectedYear = thisYear;
		selectedMonth = thisMonth;
		selectedDay = thisDay;
	}else{
		selectedYear = new Date(selectedYear+yearMovieNum,selectedMonth+monthMovieNum,1).getFullYear();
		selectedMonth = new Date(selectedYear+yearMovieNum,selectedMonth+monthMovieNum,1).getMonth();
		selectedDay = new Date(selectedYear+yearMovieNum,selectedMonth+monthMovieNum,1).getDate();
	}
	calendarDrawTable( "popCalendarDiv" , selectedYear,selectedMonth,1);
	
}
//Ã¬Â¡Â°Ã­ÂÂ Ã¬ÂÂÃ¬ÂÂÃªÂ¸Â°ÃªÂ°ÂÃªÂ³Â¼ Ã¬Â¢ÂÃ«Â£ÂÃªÂ¸Â°ÃªÂ°ÂÃ¬ÂÂ´ Ã¬ÂÂÃ¬ÂÂÃ«ÂÂ Ã¬Â¢ÂÃ«Â£ÂÃªÂ¸Â°ÃªÂ°ÂÃ¬ÂÂ Ã¬ÂÂÃ«ÂÂ Ã­ÂÂ¨Ã¬ÂÂÃ«Â¥Â¼ Ã¬ÂÂ¬Ã¬ÂÂ©Ã­ÂÂ´Ã¬ÂÂ Ã«ÂÂ¬Ã«Â Â¥ Ã«ÂÂ¸Ã¬Â¶Â
function calenderEndView( yearMovieNum , monthMovieNum ){
	
	selectedYear = new Date(selectedYear,selectedMonth,1).getFullYear();
	selectedMonth = new Date(selectedYear,selectedMonth,1).getMonth();
	selectedDay = new Date(selectedYear,selectedMonth,1).getDate();
	
	calendarDrawTable( "popCalendarDiv" , selectedYear,selectedMonth,1);
	
}

var DATE_ID = "";
function popCalendarLayer(dateId , today){
	DATE_ID = dateId;
	if(today != '2023-12-18'){
		today = today.split("-");
		var originToday = "2023-12-18".split("-");
		
		var date1 = new Date(today[0],today[1],today[2]);
		var date2 = new Date(originToday[0],originToday[1],originToday[2]);
		
		var diff = date2 - date1;
		var currDay = 24 * 60 * 60 * 1000;// Ã¬ÂÂ * Ã«Â¶Â * Ã¬Â´Â * Ã«Â°ÂÃ«Â¦Â¬Ã¬ÂÂ¸Ã¬Â»Â¨
	    var currMonth = currDay * 30;// Ã¬ÂÂ Ã«Â§ÂÃ«ÂÂ¬
	    var currYear = currMonth * 12; // Ã«ÂÂ Ã«Â§ÂÃ«ÂÂ¬
	    
	    var year = parseInt(diff/currYear);
	    var month = parseInt(diff/currMonth);

		calenderEndView(  year , month);
	}else{
		
		calenderView(  "0" , "0");
		
	}
	var p = $("#"+dateId);
	var offset = p.offset();
	$("#popCalendarDiv").attr("style","z-Index:99999;display:;left:"+offset.left+"px; top:"+(offset.top+25)+"px;");
}
function setCalendarControlDate(yyyy,mm,dd){
	  if(mm < 10){
		  mm = "0"+mm;
	  }
	  if(dd < 10){
		  dd = "0"+dd;
	  }
	  $("#"+DATE_ID).val(yyyy+"-"+mm+"-"+dd);
	  
	  $("#popCalendarDiv").attr("style","z-Index:99999;display:none;");
}

function popCalendarLayerHide(){
	$("#popCalendarDiv").attr("style","z-Index:99999;display:none;");
}
</script></head><body class="subBody joinBody" cz-shortcut-listen="true"><div id="popCalendarDiv" class="popCalendar" style="display:none"></div><link href="http://localhost/HCYHotel/common/user/css/shilla/mainImages.css" rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/shilla/title_ko.css" rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/shilla/print.css" rel="stylesheet" type="text/css" media="print">
<link href="http://localhost/HCYHotel/common/user/css/shilla/mainImages.css" rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/shilla/reserve_new.css" rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/shilla/lang-ko_N.css" rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/shilla/btn.css" rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/shilla/swiper.min.css" rel="stylesheet" type="text/css">

<script src="/js/json2.js" charset="UTF-8"></script>
<script src="/js/jquery-1.8.3.js" charset="UTF-8"></script>
<script src="/js/jquery/jquery-ui-1.10.3.min.js" charset="UTF-8"></script>
<script src="/js/mbl/dining_new2020/panzoom.min.js"></script>
<script src="/js/uniform.js" charset="UTF-8"></script>
<script src="/js/browser.js" charset="UTF-8"></script>
<script src="/js/style.hub.js" charset="UTF-8"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/style.advance.js" charset="UTF-8"></script><!-- 개선 : js 추가 -->
<script src="/js/resv/advResvCalendarFb.js" charset="UTF-8"></script> <!-- [2019_모션추가]3 달력 고도화 -->
<script src="/index.do/secu/messageJs.do" charset="UTF-8"></script>
	<script src="/js/common.js" charset="UTF-8"></script>
<script src="/js/commonEx.js" charset="UTF-8"></script>
<script src="/js/jquery.slides.js" charset="UTF-8"></script>
<script src="/js/mbr/popLogin.js" charset="UTF-8"></script><div id="popLoginDiv" class="popLogin" style="display:none"></div>
<script src="/js/mbr/forIdPwd.js" charset="UTF-8"></script><div id="popForIdPwDiv" style="display:none">0</div>
<script src="/js/mbr/mbshPointRead.js" charset="UTF-8"></script><div id="mbshPotinRead" style="display:none"></div>
<script src="/js/resv/resvCalendar.js" charset="UTF-8"></script><script src="/js/resv/resvPromotionCalendar.js" charset="UTF-8"></script><script src="/js/resv/resv.js?dt=20231218" charset="UTF-8"></script><script src="/js/resv/din.js" charset="UTF-8"></script><script src="/js/ask/ask.js" charset="UTF-8"></script><script src="/js/mbr/zipno.js" charset="UTF-8"></script><div id="zipNoLayerDiv" class="popLogin" style="display:none"></div><script src="/js/offers/makeAPlan.js" charset="UTF-8"></script><div id="makeAPlanLayerDiv" class="popLogin" style="display:none"></div><script src="/js/mbr/mbr_join.js" charset="UTF-8"></script><script src="/js/jquery.cookie.js" charset="UTF-8"></script>
<script src="/js/placeholders.js" charset="UTF-8"></script>
<script src="/js/dining_new2020.js" charset="UTF-8"></script>
<script src="/js/moment.min.js" charset="UTF-8"></script>
<script src="/js/es6-promise.min.js" charset="UTF-8"></script>
<script src="/js/es6-promise.auto.min.js" charset="UTF-8"></script>
<script src="/js/axios.js" charset="UTF-8"></script>

<!--[if IE 6]><script src="/js/png24.js"></script><![endif]-->

<!-- 개별 step1 start-->
	<script src="/js/jquery.flexslider-min.js" charset="UTF-8"></script><!-- 2017추가 -->
	<script src="/js/jquery.jsSelect.js" charset="UTF-8"></script><!-- 2017추가 -->
<!-- 개별 step1 end-->

<script type="text/javascript">

	</script>

<script>
jQuery(document).ready(function () {

	$(".findBtn a").click(function () {
		$(".findBox").slideToggle("fast");
	});

});

function ssoLogout() {
	location.href = "/index.do/login/SSOLogout.do";

}
$("#benefitBtn").click(function () {
	$("#showCardbox").show("slow");
	$("#hiddencardbox").hide("slow");
});
</script>

<script>
	document.oncontextmenu = function () { // 컨텍스트 메뉴금지
		return false;
	};
</script>

<!-- 운영인 경우만 Google Analytics 호출 -->
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-T3LBJ26');</script>
<!-- End Google Tag Manager -->

<!-- Global site tag (gtag.js) - Google Analytics -->

<script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-119797985-1"></script>

<script>

  window.dataLayer = window.dataLayer || [];

  function gtag(){dataLayer.push(arguments);}

  gtag('js', new Date());



  gtag('config', 'UA-119797985-1');

</script>
<style>
.custumCal{
	display:none;
}
.opacity{background-color:#000000; display: block; height: 400%; left: 0; margin: 0; opacity: 0.5; position: absolute; top: 0; width: 100%; z-index: 1100; !important;}
.opacity{-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=50)"; /* IE 8 */ filter: progid:DXImageTransform.Microsoft.Alpha(Opacity=50); /* IE 7 and olders */   opacity: .5; !important;}
</style>


<dl class="skipNavi">
	<dt>THE SHILLA 바로가기 메뉴</dt><dd><a class="goContents" href="#contents">본문으로 바로가기</a></dd><dd><a class="goGnbMenu" href="#gnbMenu">메인메뉴 바로가기</a></dd></dl>
<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-T3LBJ26"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<script>
var resvType;
var serachDateTf = false;
var isLogin;
var timmer;
var blockTimmer;
var historyUrl = "";
</script>
<!--자바스크립트 인크루드  -->
<script>
	///공통---------------------------------------------------------------------------------START
	var min4ck = true;
	var min8ck = true;
	var min12ck = true;
	var min16ck = true;
	$(document).ready(function(){
		
		blockageTimeCheck();
	});

	//
	function fncChangeForLabel(objId, targetLabel){
		$("#"+targetLabel).text($("#"+objId+" option:selected").text());
	}

	//셀렉트 박스 선택시 값세팅
	function selSet(my,objId){
		$("#"+objId).val($(my).val());
	}

	//+버튼 클릭시 값세팅
	function addCnt(objId){
		var cnt =  parseInt($("#"+objId).val());
		if(isNaN(cnt)){ cnt = 0; };
		$("#"+objId).val(cnt+1);
	}

	//-버튼 클릭시 값세팅
	function remCnt(objId){
		var cnt =  parseInt($("#"+objId).val());
		if(isNaN(cnt)){ cnt = 0; };
		if(0 < cnt ){
			$("#"+objId).val(cnt-1);
		}
	}

	//사용자 입력값 중간저장
	function setSessionStorage(){
		$(".saveField").each(function(index, item){
			var key = $(item).attr("name");
			var value = $(item).val();
			sessionStorage.setItem(key,value);
		})
	}

	//사용자 입력값 불러오기
	function getSessionStorage(){
		$(".saveField").each(function(index, item){
			var key = $(item).attr("name");
			var value = sessionStorage.getItem(key);
			$(item).val(value);
		})

	}

	//사용자 입력값 삭제
	function removeSessionStorage(){
		sessionStorage.clear();
	}

	function backStep(index){
		$("#submitForm").attr("action","/fbresv/web/memDiningStep"+index+".do");
		$("#submitForm").submit();
	}

	function backStepPb(index){
		$("#submitForm").attr("action","/fbresv/web/memDiningStep"+index+"Pb.do");
		$("#submitForm").submit();
	}

	//유의사항 체크박스
	function policyCk(objId,targetId,btnId){
		if($(objId).prop("checked")){
			$(targetId).val("Y");
			$(btnId).removeClass("disable");
		}else{
			$(targetId).val("");
			$(btnId).addClass("disable");
		}
	}

	//비회원중복예약체크
	function checkOverlapNonMem(){
		$.ajax({
			url: '/fbresv/mbl/selectOverlapNonMember.do',
			type: "post",
			dataType:"json",
			data : {
				shopId : shopId,
			},
			async : false,
			error: function(request,status,error){

			},
			success: function( data ){
				pc.layerPopup.openPop("#popDbCheckInfo");
				return false;
			}
		});
	}

	
	function blockageTimeCheck(){
		var blockageId = $("#blockageId").val();
		if(blockageId != ""){
			blockTimmer = setInterval(blocktimeCk,5000);
		}
	}

	
	function blocktimeCk(){
		var fmt = "YYYYMMDDHHmm";
	    var d = new Date();
	    var now = moment(d).format(fmt);
		var ntime = parseInt(now);
		var dtime = parseInt($("#blockDelTime").val());

		//4분마다 블록케이지 업데이트 해서 블록케이지 id수명연장
		var cntTime = dtime-ntime;
		switch(cntTime){
		case 4:
			if(min4ck){
				upBlockageNotLoading();
				min4ck = false;
			};
			break;
		case 8:
			if(min8ck){
				upBlockageNotLoading();
				min8ck = false;
			};
			break;
		case 12:
			if(min12ck){
				upBlockageNotLoading();
				min12ck = false;
			};
			break;
		case 16:
			if(min16ck){
				upBlockageNotLoading();
				min16ck = false;
			};
			break;
		}

		
		if(dtime <= ntime){
			$(".layerPopup").css("display,","none");
			delBlockage();
			//기존 타이머 삭제
			clearInterval(blockTimmer);
			pc.layerPopup.openPop("#popRsvOverInfo");
		}
	}

	
	function upBlockage(){
		var visitAdlt = isNaN(parseInt($("#visitAdlt").val())) ? 0 : parseInt($("#visitAdlt").val());
		var visitChld = isNaN(parseInt($("#visitChld").val())) ? 0 : parseInt($("#visitChld").val());
		var visitInnt = isNaN(parseInt($("#visitInnt").val())) ? 0 : parseInt($("#visitInnt").val());

		var allCnt = visitAdlt+visitChld+visitInnt;
		var re = false;

		if(isPreResv()){
			re = true;
			return re;
		}

		$.ajax({
			url: '/fbresv/mbl/upBlockage.do',
			type: "post",
			dataType:"json",
			data: {
				blockageId : $("#blockageId").val(),
				resvSeatType  : $("#resvSeatType").val(),
				visitAdlt : $("#visitAdlt").val(),
				visitChld : $("#visitChld").val(),
				visitInnt : $("#visitInnt").val(),
				visitDate  : $("#visitDate").val(),
				visitTime  : $("#visitTime").val(),
				roomPerson : $("#roomPerson").val(),
			},
			async : false,
			error: function(request,status,error){

			},
			success: function( data ){
				if(data.model.result == "true"){
					//기존 타이머 삭제
					clearInterval(blockTimmer);
					//블록케이지 시간체크 4분뒤 블록케이지 삭제
					blockageTimeCheck();
					re = true;
					loadPopOff();
					tbNotCkPolicy();
				}else if(data.model.result == "false"){
					apiErrPop(data.model.errCd);
					re = false;
				}
			},
			beforeSend:function(){
				//로딩창
				loadPopOn();
			},
		});

		return re;
	}

	//블록케이지 업데이트 로딩창x
	function upBlockageNotLoading(){
		var visitAdlt = isNaN(parseInt($("#visitAdlt").val())) ? 0 : parseInt($("#visitAdlt").val());
		var visitChld = isNaN(parseInt($("#visitChld").val())) ? 0 : parseInt($("#visitChld").val());
		var visitInnt = isNaN(parseInt($("#visitInnt").val())) ? 0 : parseInt($("#visitInnt").val());

		var allCnt = visitAdlt+visitChld+visitInnt;
		var re = false;

		if(isPreResv()){
			re = true;
			return re;
		}

		$.ajax({
			url: '/fbresv/mbl/upBlockage.do',
			type: "post",
			dataType:"json",
			data: {
				blockageId : $("#blockageId").val(),
				resvSeatType  : $("#resvSeatType").val(),
				visitAdlt : $("#visitAdlt").val(),
				visitChld : $("#visitChld").val(),
				visitInnt : $("#visitInnt").val(),
				visitDate  : $("#visitDate").val(),
				visitTime  : $("#visitTime").val(),
				roomPerson : $("#roomPerson").val(),
			},
			async : false,
			error: function(request,status,error){

			},
			success: function( data ){
				if(data.model.result == "true"){
					//기존 타이머 삭제
					clearInterval(blockTimmer);
					//블록케이지 시간체크 4분뒤 블록케이지 삭제
					blockageTimeCheck();
					re = true;
					//mob.layerPopup.closePop('#viewLoading');
					tbNotCkPolicy();
				}else if(data.model.result == "false"){
					apiErrPop(data.model.errCd);
					re = false;
				}
			},
		});

		return re;
	}

	//블록케이지 삭제 비동기
	function delBlockage(){
		if($("#blockageId").val() == ""){return true;}

		$.ajax({
			url: '/fbresv/mbl/delBlockage.do',
			type: "post",
			dataType:"json",
			data: {
				blockageId : $("#blockageId").val()
			},
			async : false,
			error: function(request,status,error){

			},
			success: function( data ){
				$("#blockageId").val("");
				$("#blockDelTime").val("");
				$("#blockCreTime").val("");
				clearInterval(blockTimmer);
			}
		});
	}

	//블록케이지 삭제 동기
	function delBlockageAsync(){

		if($("#blockageId").val() == ""){return true;}

		$.ajax({
			url: '/fbresv/mbl/delBlockage.do',
			type: "post",
			dataType:"json",
			data: {
				blockageId : $("#blockageId").val()
			},
			error: function(request,status,error){

			},
			success: function( data ){
				$("#blockageId").val("");
				$("#blockDelTime").val("");
				$("#blockCreTime").val("");
				clearInterval(blockTimmer);
			}
		});
	}

	//자동 탭넘기기
	function autoTab(tabno, invalue, next) {
		if (invalue.length == tabno.maxLength) {
			$(".cardInput").eq(next).focus();
		}
	}

	//선호구역 초기화
	function initArea(){
		$('#randAreaYn').val('Y');
		$('#prefAreaCd').val('');
		$('#prefAreaText').val('');
		pc.layerPopup.closePop('#popAreaInfo');
		pc.layerPopup.openPop("#comparePop2");
	}

	//예약초기화
	function resetResv(){
		var blockageId = $("#blockageId").val();
		if(blockageId != ""){
			delBlockage();
		}
		var newForm = document.createElement('form');
		// set attribute (form)
		newForm.name = 'newForm';
		newForm.method = 'post';
		newForm.action = '/fbresv/web/memDiningStep0.do';
		document.body.appendChild(newForm);
		newForm.submit();
	}

	//요금팝업 내용셋팅
	function pricePopSet(shopId){
		$.ajax({
			url: '/fbresv/web/pricePop.do',
			type: "post",
			dataType:"json",
			data : {
				shopId : shopId,
			},
			async : false,
			error: function(request,status,error){

			},
			success: function( data ){
				$("#priceContents").html(data.model.priceContents);
			}
		});
	}

	//api 상태체크
	function apiHealthCk(){
		$.ajax({
			url: '/fbresv/mbl/apiHealthCk.do',
			type: "post",
			dataType:"json",
			error: function(request,status,error){

			},
			success: function( data ){
				if(data.model.result == "fail"){
					pc.layerPopup.openPop("#popSysErr");
				}
			}
		});
	}

	function apiErrPop(errCd){
		loadPopOff();
		if(errCd == "TABLECHECK_BLOCKAGE_FAIL"){//블록케이지 업뎃 시 해당 시간 마감
			pc.layerPopup.openPop("#popReplayInfo");
		}else if(errCd == "TABLECHECK_BLOCKAGE_EXPIRED"){//블록케이지 id 시간 끝남
			pc.layerPopup.openPop("#popRsvOverInfo");
		}else if(errCd == "TABLECHECK_ERROR"){// 테이블 체크 오류 응답
			pc.layerPopup.openPop("#popSysErr");
		}else if(errCd == "TABLECHECK_UNHEALTHY"){// 테이블체크 헬스체크 실패
			pc.layerPopup.openPop("#popSysErr");
		}else if(errCd == "FBR_MAINTENANCE"){ // 다이	닝 예약 점검 관리자 설정
			pc.layerPopup.openPop("#popSysErr");
		}else{//기타에러
			pc.layerPopup.openPop("#popSysErr");
		}
	}

	//입력글자수 제한
	function InputLength(my,length){
		$(my).val($(my).val().substr(0,length));
	}

	//keyup정규식
	function keyUpRexp(my,type,targetId){
		if(type == "num"){
			$(my).val($(my).val().replace(/[^\d\-]/g, ''));
		}else{

		}
		if(targetId != ""){
			if($(my).val() == ""){
				$(targetId).prop("disabled",true);
			}else{
				$(targetId).prop("disabled",false);
			}
		}
		//this.value=this.value.replace(/[^\d\- ]/g, '');
	}

	//회원 && 테이블인 경우 유의사항 체크 안하고 다음버튼 활성화
	function tbNotCkPolicy(){

	}

	//로딩팝업 온
	function loadPopOn(){
		$('.opacity').show();
		pc.layerPopup.lockScroll();
		$('.re-loader').show();
	}

	//로딩 팝업 오프
	function loadPopOff(){
		$('.opacity').hide();
		pc.layerPopup.unLockScroll();
		$('.re-loader').hide();
	}

	//예약 가능 시간 초과 안내 팝업 확인 클릭시 스텝2로이동
	function timeOverBlockage(){

		var newForm = document.createElement('form');
		// set attribute (form)
		newForm.name = 'newForm';
		newForm.method = 'post';
		newForm.action = '/fbresv/web/memDiningStep0.do';
		// create element (input)
		var input1 = document.createElement('input');
		var input2 = document.createElement('input');
		// set attribute (input)
		input1.setAttribute("type", "hidden");
		input1.setAttribute("name", "hotlId");
		input1.setAttribute("value", $("#hotlId").val());
		input2.setAttribute("type", "hidden");
		input2.setAttribute("name", "shopId");
		input2.setAttribute("value", $("#shopId").val());
		// append input (to form)
		newForm.appendChild(input1);
		newForm.appendChild(input2);
		// append form (to body)
		document.body.appendChild(newForm);
		// submit form
		newForm.submit();

	}

	//시스템 에러 팝업 확인시 동작
	function sysErrMove(){

		if(historyUrl == "Y"){
			if($("#netFunnelIsOn").val()=="on"){
				history.go(-2);
			}else{
				history.go(-1);
			}
		}else{
			location.href = "/index.do"
		}

	}

	//예약 변경 시 기존 예약 방문일 시 같은지 체크
	function isPreResv(){
		var re = false;

		if(($("#visitDate").val() == $("#preUpdateDate").val()) && ($("diniCho").val() == $("preUpdateDiniCho").val()) && ($("#visitDate").val() == $("#preUpdateDate").val()) ){
			re = true;
			return re;
		}
		return re;
	}

	///공통---------------------------------------------------------------------------------END
</script>



<!--레이어 팝업 인크루드 // -->
<!-- 공통팝업 start ------------------------------------------------------------------------->
	<!-- 로딩팝업 -->
	<div id="viewLoading" class="re-loader" style="z-index:99999; margin-left:-101.5px; margin-top:-84px; position: fixed; top: 50%;left: 50%; display:none;">
				 <img src="/images/ko/common/loadingAnimation.gif" alt="">
			</div>
			<div class="opacity" style="display: none;"></div>
		<!-- <div id="viewLoading" class="re-loader">
      	<img src="/images/ko/common/loadingAnimation.gif" alt="" />
    </div>
    <div class="opacity"></div> -->


	<!-- STEP 0 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->
	<!-- STEP 0 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->


	<!-- STEP 1 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->
	<!-- 예약 인원 입력 안내 레이어 팝업 -->
	<div id="popPeopleChInfo" class="usepop" style="display:none">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="0" style="width: 430px; position: fixed; top: 50%; left: 50%; margin-left: -215px; margin-top: -106px;" aria-hidden="false">
			<div class="popHead">
				<h2 class="tit">예약 인원 입력 안내</h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPeopleChInfo'); return false;"><span>닫기</span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
					<p class="checkTxt mgb15"><span>예약인원 입력 후, 날짜를 검색해주시기 바랍니다.</span></p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popPeopleChInfo'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPeopleChInfo'); return false;"><span>닫기</span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>

	<!-- 예약 인원 설정 안내 레이어 팝업 -->
	<div id="popPersonInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">예약인원 안내<!-- 예약 인원 설정 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPersonInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div id="popPersonInfoHidden" style="display: none;">
				<p class="checkTxt mgb15"><span>$좌석$은(는) 최소 $최소$명부터 최대 $최대$명까지 이용 가능합니다.</span></p> 
<ul class="notiList2"> 
<li class="first last">※ 추가 문의 사항은 전화 문의해주시기 바랍니다.</li> 
</ul><!--  -->
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<div id="popPersonInfoText">
				</div>
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popPersonInfo'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPersonInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 예약 인원 설정 안내 레이어 팝업 -->

	<!-- 재검색 안내 레이어 팝업 -->
	<div id="popPeopleChInfo2" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">재검색 안내<!-- 재검색 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPeopleChInfo2'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p>예약 인원 입력 후, 날짜를 재검색 해주시기 바랍니다.</p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popPeopleChInfo2'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPeopleChInfo2'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 재검색 안내 레이어 팝업 -->

	<!-- 예약 재시도 안내  -->
	<div id="popReplayInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">예약 재시도 안내<!-- 예약 재시도 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popReplayInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<ul class="notiList2"> 
<li class="first last">선택하신 시간 혹은 날짜의 예약이 마감되었습니다. </li> 
</ul> 
<p class="checkTxt"><span>다시 선택해주시기 바랍니다.</span></p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popReplayInfo'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popReplayInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 예약 재시도 안내  -->

	<!-- 좌석유형 초기화 안내  -->
	<div id="popSetInit" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">예약 초기화 안내<!-- 예약 초기화 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popSetInit'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div style="display: none" id="popSetInitHidden">
				<p class="checkTxt"><span>$변수$ 변경 시 검색결과가 초기화 됩니다.</span></p><!--  -->
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<div id="popSetInitText">

				</div>
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popSetInit'); return false;"><img src="../../images/ko/mem/new_2020/resv_cancel.jpg" alt="취소"></a>
					<a href="#" onclick="" id="setInitEvent"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popSetInit'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 날짜 검색 초기화 안내 -->

	<!-- STEP 1 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->


	<!-- STEP 2 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->
	<!-- STEP 2 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->


	<!-- STEP 3 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->
	<!-- STEP 3 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->

	<!-- 등록된 카드 정보 레이어팝업 (step3 + step4)-->
	<div id="popCardInfo" style="display:none">
		<div class="popLayer popLayerRegistCard new_popLayer" tabindex="-1">
			<div class="popHead">
				<h2 class="tit">등록된 카드 정보<!-- 등록된 카드 정보 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popCardInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox">
				 <h3 class="cardInfoTit"><span id="mbrRegDt"></span>&nbsp;등록하신 카드정보<!-- 등록하신 카드정보 --></h3>
				 <table class="tableType2">
					<caption><!-- 카드 번호, 카드 종류, 유효기간 으로 구성된 등록된 카드 정보 --></caption>
					<colgroup>
						<col style="width:135px" class="col1">
						<col style="width:auto" class="col2">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row">카드번호<!-- 카드 번호 --></th>
							<td id="cardNum"></td>
						</tr>
						<tr>
							<th scope="row">카드종류<!-- 카드 종류 --></th>
							<td id="cardNm"></td>
						</tr>
						<tr>
							<th scope="row">유효기간<!-- 유효기간 --></th>
							<td id="cardExp"></td>
						</tr>
					</tbody>
				</table>
				<ul class="notiList1">
					<li class="first">신용카드 정보는 고객님의 당일 취소 또는 노쇼(No- Show)에 의한 개런티 외에는 어떤 목적으로도 사용되지 않으며, 체크카드 및 일부 신용 카드의 경우 사용이 제한 될 수 있습니다.<!-- 신용카드 정보는 고객님의 당일 취소 또는 노쇼(No- Show)에 의한 개런티 외에는 어떤 목적으로도 사용되지 않으며, 체크카드 및 일부 신용 카드의 경우 사용이 제한 될 수 있습니다.  --></li>
					<li class="last"><span class="fontRed">온라인 예약 시 직접 결제가 이루어지지 않으며,</span> 최종 결제는 레스토랑에서 해주시기 바랍니다.<!-- <em class="pointColor1">온라인 예약 시 직접 결제가 이루어지지 않으며,</em> 최종 결제는 레스토랑에서 해주시기 바랍니다. --></li>
					<!-- 2020-11-19 내용 삭제 -->
				</ul>
				<p class="checkTxt"><span>등록하신 카드정보로 예약하시겠습니까?<!-- 등록하신 카드정보로 예약하시겠습니까? --></span></p>
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popCardInfo'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_cancel.gif" alt="취소"></a>
					<a href="#" onclick="confirmCardInfo();"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popCardInfo'); return false;"><span>닫기<!-- 닫기 --></span></a></div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- //등록된 카드 정보 레이어팝업 -->

	<!-- 신용카드 정보 및 개인정보 수집, 이용에 동의 레이어팝업 (step3 + step4)-->
	<div id="popPolicy1" style="display:none">
		<div class="popLayer popLayerCCInfo new_popLayer" tabindex="-1">
			<div class="popHead">
				<h2 class="tit">신용카드 정보 수집 약관<!-- 신용카드 정보 및 개인정보 수집, 이용에 동의 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPolicy1'); return false;"><span>닫기<!-- 닫기 --></span></a></div>
			</div>
			<div class="popCtn new_rsvBox">
				<div class="termsWrap">
					<div class="termsCon">
						<div class="inner">
							<p>신라호텔 다이닝 예약과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</p>
<dl class="mt15">
<dt class="tit1">&lt;개인정보의 수집 · 이용에 관한 사항&gt;</dt>
<dd class="termsList1 bold">
	<ol class="termsList1 bold">
		  <li>① <span class="txtBline">수집 이용 항목 | 카드정보(카드종류, 카드번호, 유효기간)</span></li>
		  <li>② <span class="txtBline">수집 이용 목적 | 호텔 다이닝 예약 시 저장하신 결제정보 활용</span>
		    <p class="fNormal">* 신용카드 정보 수집으로 직접 결제가 이루어지는 것은 아니며, 다음 호텔 다이닝 예약 이용 시 카드정보를 다시 입력하지 않아도 되는 편의 제공 목적입니다.</p>
		  </li>
		  <li>③ <span class="txtBline">보유 이용 기간 | 예약일 후 1년</span></li>
  </ol>
</dd>
<p class="mt15">※ 위 사항에 대한 동의를 거부할 수 있으나, 이에 대한 동의가 없을 경우 다음 호텔 다이닝 예약 시, 다시 해당 결제 정보를 입력해야 함을 알려드립니다.</p>
</dl></div>
					</div>
				</div>
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popPolicy1'); return false;">
						<img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인">
					</a>
				</div>
			</div>
			<div class="btnAcc"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPolicy1'); return false;"><span>닫기<!-- 닫기 --></span></a></div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- //신용카드 정보 및 개인정보 수집, 이용에 동의 레이어팝업 -->

	<!-- 선호구역 예약마감 안내 레이어 팝업 (step3 + step4)-->
	<div id="popAreaInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">선호구역 마감 안내<!-- 선호구역 예약마감 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAreaInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>이용에 불편을 드려 죄송합니다</span></p> 
<ul class="notiList2"> 
<li class="first">선택하신 선호 구역이 모두 마감되어</li> 
<li class="last">방문 당일 순차적으로 임의 배정됩니다.</li> 
</ul> 
<ul class="notiList1"> 
<li class="first">선호 구역은 온라인에서만 제공되는 서비스로 일부에 한 해 예약 가능하며, 예약완료 순으로 마감됩니다.</li> 
<li class="last">전화문의로 구역 선택 및 변경, 취소는 불가합니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<a href="#" onclick="backStep(2)"><img src="../../images/ko/mem/new_2020/resv_zone.jpg" alt="구역 재선택"></a>
					<a href="#" onclick="initArea();"><img src="../../images/ko/mem/new_2020/resv_progress.jpg" alt="예약 진행"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAreaInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 선호구역 예약마감 안내 레이어 팝업 -->

	<!-- 인증번호 재 입력 안내 레이어 팝업 -->
	<div id="popAutNumMiss" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">인증번호 재 입력 안내<!-- 인증번호 재 입력 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAutNumMiss'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>인증번호가 일치하지 않습니다.</span></p> 
<ul class="notiList2"> 
<li class="first last">확인 후 다시 입력해주시기 바랍니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popAutNumMiss'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAutNumMiss'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 인증번호 재 입력 안내 레이어 팝업 -->

	<!-- 인증번호 전송 횟수 초과 안내 -->
	<div id="popNumOverInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">인증번호 전송 횟수 초과 안내<!-- 인증번호 전송 횟수 초과 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popNumOverInfo'); return false;"><span>닫기</span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>인증번호 전송 횟수가 초과되었습니다.</span></p> 
<ul class="notiList2"> 
<li class="first last">추가 예약 문의는 전화해주시기 바랍니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popNumOverInfo'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popNumOverInfo'); return false;"><span>닫기</span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 인증번호 전송 횟수 초과 안내 -->

	<!--인증번호 입력시간 초과 안내 레이어 팝업 -->
	<div id="popAutNumTimeOver" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">입력시간 초과 안내<!-- 입력시간 초과 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAutNumTimeOver'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>인증번호 입력 시간을 초과했습니다.</span></p> 
<ul class="notiList2"> 
<li class="first last">인증번호를 재 요청해주시기 바랍니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popAutNumTimeOver'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAutNumTimeOver'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 입력시간 초과 안내 레이어 팝업 -->

	<!-- 카드정보 저장 약관 동의 알림 레이어 팝업 -->
	<div id="popCardSave" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1">
			<div class="popHead">
				<h2 class="tit">카드정보 저장 약관 동의 알림<!-- 카드정보 저장 약관 동의 알림 --></h2>
				<div class="btn"><a class="btnClose" href="javascript:void(0);" onclick="fncCardSaveYn('N');"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop">
				<ul class="notiList2 mgb15"> 
<li class="first last">선택한 카드 정보 저장을 위해 약관 동의가 필요합니다.</li> 
</ul> 
<p class="checkTxt"><span>동의하시겠습니까?</span></p><!--  -->
				<div class="btnBox">
					<a href="javascript:void(0);" onclick="fncCardSaveYn('N');"><img src="../../images/ko/mem/new_2019/btn_disagree.gif" alt="미동의"></a>
					<a href="javascript:void(0);" onclick="fncCardSaveYn('Y');"><img src="../../images/ko/mem/new_2019/btn_agree.gif" alt="동의"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="javascript:void(0);" onclick="pc.layerPopup.closePop('#popCardSave'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 카드정보 저장 약관 동의 알림 레이어 팝업 -->

	<!-- 인증 완료 안내 레이어 팝업 -->
	<div id="popAutNumConfirm" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">인증 완료 안내<!-- 인증 완료 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAutNumConfirm'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>인증번호가 정상적으로 확인되었습니다.</span></p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popAutNumConfirm'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAutNumConfirm'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 인증 완료 안내 레이어 팝업 -->

	<!-- 온라인 예약 가능 가능 안내 레이어 팝업 -->
	<div id="popOverlapResvComfirm" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">온라인 예약 가능 안내<!-- 예약진행 가능 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapResvComfirm'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>온라인 예약이 가능합니다.</span></p> 
<ul class="notiList2 mgb5"> 
<li class="first last">※ 동일 날짜의 동일 시간대에 온라인과 유선으로 예약한 내역이 중복으로 확인될 경우 단 건으로 처리될 수 있습니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popOverlapResvComfirm'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapResvComfirm'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 예약진행 가능 안내 레이어 팝업 -->

	<!-- 전화번호양식 확인 팝업 시작 -->
	<div id="popPhonNumConfirm" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">휴대전화 번호 확인 안내<!-- 핸드폰 번호 확인 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPhonNumConfirm'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>휴대전화 번호를 올바르게 입력하시기 바랍니다.</span></p> 
<ul class="notiList2"> 
<li class="first last">※ 온라인 예약 시, 올바른 예약 정보 확인을 위해 <br> 휴대전화로만 예약이 가능합니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popPhonNumConfirm'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPhonNumConfirm'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 예약진행 가능 안내 레이어 팝업 -->


	<!-- STEP 4 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->

	<!-- STEP 4 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->

	<!-- STEP 5 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->
	<!-- STEP 5 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->


	<!-- STEP 공통 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->


	<!-- 운영시간 안내 레이어 팝업 (step1 + step2)-->
	<div id="popPriceInfo" style="display:none">
		<div class="popLayer new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">운영시간 안내<!-- 운영시간 및 요금 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPriceInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox">
				<div id="priceContents"></div>
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popPriceInfo'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popPriceInfo'); return false;"><span>닫기<!-- 닫기 --></span></a></div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- //운영시간 안내 레이어 팝업-->

	<!-- 예약 초기화 레이어 팝업 (step2 + step3 + step4)-->
	<div id="popReset" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">예약 초기화 안내<!-- 예약 초기화 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popReset'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<ul class="notiList2"> 
<li class="first last">지금까지 입력하신 예약 정보는 모두 삭제됩니다.</li> 
</ul> 
<p class="checkTxt"><span>초기화 하시겠습니까?</span></p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popReset'); return false;"><img src="../../images/ko/mem/new_2020/resv_cancel.jpg" alt="취소"></a>
					<a href="javascript:void(0);" onclick="resetResv();"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#ResvResetPop'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 예약 초기화 레이어 팝업 -->

	<!-- 약관동의 안내 레이어 팝업 -->
	<div id="popNoticeInfoPo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">약관동의 안내<!-- 약관동의 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popNoticeInfoPo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>개인정보 수집 및 이용에 대한 약관에 <br> 동의해주시기 바랍니다.</span></p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popNoticeInfoPo'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popNoticeInfoPo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>

	<!-- 예약가능 시간 안내 레이어 팝업  (step3 + step4)-->
	<div id="popRsvOverInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;z-index: 999999;">
			<div class="popHead">
				<h2 class="tit">예약가능 시간 초과 안내<!-- 예약가능 시간초과 안내 --></h2>
				<div class="btn"><a class="btnClose" href="/index.do?lang=ko"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<ul class="notiList2"> 
<li class="first last">예약 가능 시간이 초과되어 예약이 취소되었습니다.</li> 
</ul> 
<p class="checkTxt"><span>다시 예약을 진행하시겠습니까?</span></p><!--  -->
				<div class="btnBox">
					<a href="/index.do?lang=ko"><img src="../../images/ko/common/mypage/btn_card_cancel.gif" alt="예약 취소"></a>
					<a href="javascript:void(0);" onclick="timeOverBlockage()"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popRsvOverInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 예약가능 시간초과 안내 레이어 팝업 -->

	<!-- 필수정보 입력 레이어 팝업-->
	<div id="popAlertInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">필수정보 입력 안내<!-- 필수정보 입력 안내--></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAlertInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div style="display: none" id="popAlertInfoHidden">
				<p class="checkTxt"><span>$변수$를(을) 확인해주시기 바랍니다.</span></p></div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<div id="popAlertInfoText">

				</div>
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popAlertInfo'); return false;"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAlertInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 필수정보 입력 레이어 팝업-->

	<!-- 중복예약 안내 레이어 팝업 -->
	<div id="popOverlapInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">중복예약 안내<!-- 중복예약 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>동일한 날짜와 시간대에<br>
 이미 레스토랑 예약이 있습니다.<br> 예약 날짜 또는 시간을 변경하시겠습니까?</span></p> 
<ul class="notiList2 mgb5"> 
<li class="first last">※ 온라인 예약은 동일 날짜/시간에 중복 예약이 불가합니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<a href="#" onclick="overlapClose();"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 중복예약 안내 레이어 팝업 -->

	<!-- 예약 가능 횟수 초과 안내 레이어 팝업 -->
	<div id="popOverlapCntInfo" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">온라인 예약 가능 횟수 초과 안내<!-- 예약 가능 횟수 초과 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapCntInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>해당 레스토랑의 온라인 예약 가능 횟수가 초과되었습니다.</span></p> 
<ul class="notiList2"> 
<li class="first last">추가 예약 문의는 전화해주시기 바랍니다.</li> 
</ul><div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popOverlapCntInfo'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapCntInfo'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 예약 가능 횟수 초과 안내 레이어 팝업 -->

	<!-- 유의사항 확인 안내 레이어 팝업 -->
	<div id="popAlertInfo3" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">유의사항 확인안내<!-- 유의사항 확인 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAlertInfo3'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt mgb15"><span>유의사항을 모두 읽고 확인해 주시기 바랍니다.</span></p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popAlertInfo3'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAlertInfo3'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 유의사항 확인 안내 레이어 팝업 -->


	<!-- 시스템 점검 안내  -->
	<div id="popSysErr" class="usepop" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;z-index: 9999999;">
			<div class="popHead">
				<h2 class="tit">예약 문의 안내</h2>
				<div class="btn"><a class="btnClose" href="/index.do"><span>닫기</span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>이용에 불편을 드려 죄송합니다.</span></p> 
<ul class="notiList2"> 
<li class="first">현재 접속 고객이 많아 서비스 이용이 원활하지 않습니다.</li> <!--<li>현재 시스템 점검으로 인하여 서비스 이용이 원활하지 않습니다.</li>  --> 
<li class="last">고객 여러분의 양해 부탁드리며, <br> 예약 및 문의는 전화해주시기 바랍니다.</li> 
</ul><!--  -->
				<div class="btnBox">
					<!-- <a href="#" onclick="pc.layerPopup.closePop('#ResvResetPop'); return false;"><img src="../../images/ko/mem/new_2020/resv_cancel.jpg" alt="취소"></a> -->
					<a href="javascript:void(0);" onclick="sysErrMove();"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="/index.do"><span>닫기</span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 시스템 점검 안내  -->

	<!-- 매월1,15일 팝업 -->
	<div id="popNoReady" class="usepop" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;z-index: 9999;">
			<div class="popHead">
				<h2 class="tit"></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popAlertInfo3'); return false;"><span>닫기</span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				잠시 후 예약이 오픈됩니다.<br>원활한 예약 진행을 위해 잠시만 기다려주시기 바랍니다.<br><br>* 매월 1일 7:30~8:00, 15일 08:30~09:00는 오픈을 위한 대기시간입니다.<br>* 각 레스토랑에 따라 예약 오픈일이 상이합니다.<br>  [매월 1일]<br>  - 오전 8시 : 서울신라호텔 '더 파크뷰'<br>    - 오전 9시 : 제주신라호텔 '더 파크뷰'<br>  [매월 15일]<br> - 오전 9시 : 서울신라호텔 '팔선', '아리아께', '콘티넨탈', '라연'<br><div class="btnBox">
					<!-- <a href="#" onclick="pc.layerPopup.closePop('#ResvResetPop'); return false;"><img src="../../images/ko/mem/new_2020/resv_cancel.jpg" alt="취소"></a> -->
					<a href="javascript:void(0);" onclick="pc.layerPopup.closePop('#popNoReady'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="/index.do"><span>닫기</span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 매월1,15일 팝업 -->

	<!-- STEP 공통 - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -- - - - - -->



<!-- ViewRpmResv popup start ------------------------------------------------------------->
	<!-- 예약취소 레이어팝업 -->
	<div id="popRsvCancel" style="display:none">
		<div class="popLayer popLayerRsvCancel new_popLayer diningPop" tabindex="-1" style="width: 380px;">
			<div class="popHead">
				<h2 class="tit">예약 취소 안내<!-- 예약취소 안내 --></h2>
				<div class="btn">
					<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popRsvCancel'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox">
				<ul class="notiList2"> 
<li class="first last">예약취소 시 기존 예약으로 복구가 불가합니다.</li> 
</ul> 
<div class="checkTxt mgt10"><span>예약을 취소하시겠습니까?</span></div><!--  -->
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popRsvCancel'); return false;"><img src="../../images/ko/common/mypage/btn_card_cancel.gif" alt="취소"></a>
					<a href="#" onclick="cancelResv();"><img src="../../images/ko/common/mypage/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popRsvCancel'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- //예약취소 레이어팝업 -->

	<!-- 도면보기 레이어팝업 -->
	<div id="popShowArea" style="display:none">
		<div class="popLayer new_popLayer diningPop" tabindex="-1" style="width: 604px;">
			<div class="popHead">
				<h2 class="tit">도면보기 안내<!-- 도면보기 안내 --></h2>
				<div class="btn">
					<a class="btnClose" href="javascript:void(0);" onclick="pc.layerPopup.closePop('#popShowArea');"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox">
				<div class="diningImg">
					<img src="" alt="선호구역이미지" id="zoomImg">
				</div>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- //도면보기 레이어팝업 -->

<!-- ViewRpmResv popup end --------------------------------------------------------------->


<!-- 고정 step 3  -->

	<!-- 예약정보 레이어팝업 (step3 + step4)-->
	<div id="comparePop2" style="display:none;">
		<div class="popLayer popLayerCompare new_popLayer" tabindex="-1" style="z-index: 9990;">
			<div class="popHead">
				<h2 class="tit">예약정보<!-- 예약정보 --></h2>
				<div class="btn">
					<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#comparePop2'); return false;"><span>닫기<!-- 닫기 --></span>
					</a>
				</div>
			</div>
			<div class="popCtn pop_rsvInfo_wrap new_rsvBox">
				<div class="pop_rsvInfo diningPop">
					<!-- 레스토랑 정보 -->
					<div class="fLeft">
						<h3>레스토랑 정보<!-- 레스토랑 정보 --></h3>
						<dl class="r_list1">
							<dt>
								<img src="" alt="더 파크뷰" id="popShopImg">
							</dt>
							<dd>
								<strong><span class="popInfo"></span></strong>
								<ul>
									<li class="txt first"><span class="popInfo"></span></li>
									<li class="txt"><span class="popInfo"></span></li>
									<li class="txt last"><span class="popInfo"></span></li>
								</ul>
							</dd>
						</dl>
					</div>
					<!-- //레스토랑 정보 -->

					<!-- 예약 상세 정보 -->
					<div class="fCenter fRight">
						<div class="r_list2">
							<dl>
								<dt>
									<strong class="tit">예약 상세 정보<!-- 예약 상세 정보 --></strong>
								</dt>
								<dd>
									<dl class="con">
										<dt>예약일<!-- 예약일 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
									<dl class="con" style="display:none;">
										<dt>예약인원<!-- 예약인원 --></dt>
										<dd>성인<!-- 성인 --><span class="popInfo"></span>, 어린이<!-- 어린이 --> <span class="popInfo"></span>, 유아<!-- 유아  --><span class="popInfo"></span></dd>
									</dl>
									<dl class="con">
										<dt>예약인원<!-- 예약인원 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
									<dl class="con">
										<dt>선호구역<!-- 선호구역 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
									<dl class="con">
										<dt>알레르기<!-- 알레르기 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
									<dl class="con">
										<dt>유아/어린이용 의자<!-- 유아/어린이용 의자 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
									<dl class="con">
										<dt>추가 요청사항<!-- 추가 요청사항 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
								</dd>
							</dl>
						</div>
					</div>
					<!-- //예약 상세 정보 -->

					<!-- 고객 정보 -->
					<div class="fRight">
						<div class="r_list2">
							<dl>
								<dt>
									<strong class="tit">고객 정보<!-- 고객 정보 --></strong>
								</dt>
								<dd>
									<dl class="con">
										<dt>예약자명<!-- 예약자명 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
									<dl class="con dispKo">
										<dt>연락처<!-- 연락처 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
									<dl class="con">
										<dt>이메일<!-- 이메일 --></dt>
										<dd><span class="popInfo"></span></dd>
									</dl>
								</dd>
							</dl>
						</div>
					</div>
					<!-- //고객 정보 -->
				</div>
				<div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#comparePop2'); return false;"><img src="../../images/ko/mem/new_2019/btn_cancel.gif" alt="취소"></a>
					<a href="javascript:void(0);" onclick="backStep('2')"><img src="../../images/ko/mem/new_2019/btn_rsv_modify.gif" alt="수정"></a>
					<!-- 수정 2019-10-10 -->
					<a href="javascript:void(0);" onclick="regResv();"><img src="../../images/ko/mem/new_2019/btn_rsv_complete.gif" alt="예약완료"></a>
				</div>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- //예약정보 레이어팝업 -->

	<!--민감정보 미동의 시 안내 팝업-->
	 <div id="popFoodAll" style="display:none;">
	  <div class="popLayer popLayerFoodAllSave new_popLayer diningPop" tabindex="0" aria-hidden="false">
	   <div class="popHead">
	    <h2 class="tit">민감정보 저장 약관 동의 알림</h2>
	    <div class="btn"><a class="btnClose" href="javascript:void(0);" onclick="pc.layerPopup.closePop('#popFoodAll'); return false;"><span>닫기</span></a>
	    </div>
	   </div>
	    <div class="popCtn new_rsvBox diningPop">
	    <ul class="notiList2 mgb15">
	     <li class="first last">알레르기 정보 수집을 위해 동의가 필요합니다. <br> 미동의 시 선택한 정보는 삭제됩니다.<br>
	</li></ul>
	    <p class="checkTxt"><span>동의하시겠습니까?</span></p><div class="btnBox">
	     <a href="javascript:void(0);" onclick="fncFoodAllYn('N');return false;"><img src="../../images/ko/mem/new_2019/btn_disagree.gif" alt="미동의"></a>
	     <a href="javascript:void(0);" onclick="fncFoodAllYn('Y');return false;"><img src="../../images/ko/mem/new_2019/btn_agree.gif" alt="동의"></a>
	    </div>
	   </div>
	   <div class="btnAcc">
	    <a class="btnClose" href="javascript:void(0);" onclick="pc.layerPopup.closePop('#popFoodAll'); return false;"><span>닫기</span></a>
	   </div>
	  </div>
	  <div class="mdScreen" style="display: block; height: 1048px;"></div>
	 </div>
	<!--민감정보 미동의 시 안내 팝업 끝-->


	<!-- 중복예약 안내 레이어 팝업 -->
	<div id="popOverlapInfoPb" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">중복예약 안내<!-- 중복예약 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapInfoPb'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>당일 온라인 예약 가능 횟수가 초과되었습니다.</span></p><!--  -->
				<div class="btnBox">
					<a href="#" onclick="overlapClose();"><img src="../../images/ko/mem/new_2020/resv_confirm.jpg" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapInfoPb'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- // 중복예약 안내 레이어 팝업 -->

	<!-- 예약 가능 횟수 초과 안내 레이어 팝업 -->
	<div id="popOverlapCntInfoPb" style="display:none;">
		<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
			<div class="popHead">
				<h2 class="tit">온라인 예약 가능 횟수 초과 안내<!-- 예약 가능 횟수 초과 안내 --></h2>
				<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapCntInfoPb'); return false;"><span>닫기<!-- 닫기 --></span></a>
				</div>
			</div>
			<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
				<p class="checkTxt"><span>해당 월 온라인 예약 가능 횟수가 초과되었습니다.<br> ※ 추가 예약 문의는 패스트리 부티크로 전화 주시기 바랍니다. </span></p><div class="btnBox">
					<a href="#" onclick="pc.layerPopup.closePop('#popOverlapCntInfoPb'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
				</div>
			</div>
			<div class="btnAcc">
				<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popOverlapCntInfoPb'); return false;"><span>닫기<!-- 닫기 --></span></a>
			</div>
		</div>
		<div class="mdScreen" style="display: block; height: 1048px;"></div>
	</div>
	<!-- 예약 가능 횟수 초과 안내 레이어 팝업 -->

<div class="subWrap subWrapHub">
		<div class="head headHub">
			<script type="text/javascript">
	$(document).ready(function(){
		$(".findBtn a").click(function(){
		 	$(".findBox").slideToggle("fast");
		});
	});
	function ssoLogout() {
		location.href = "/fbresv/login/SSOLogout.do";

	}
	$( "#benefitBtn" ).click(function() {
		  $( "#showCardbox" ).show( "slow" );
		  $( "#hiddencardbox" ).hide( "slow" );
	});
</script>

<script>
	document.oncontextmenu = function(){ // 컨텍스트 메뉴금지
		return false;
	};
</script>

<div class="header">
  <h1 class="logo"><a href="/index.do">THE SHILLA HOTELS &amp; RESORTS</a></h1>
  <!-- 로그인 -->
  <span class="loginArea">
	<a href="/membership/mbr/login/memLogin.do">로그인</a>
    <a href="/mem/mbr/join/memViewBrowsewrap.do">신라리워즈 가입</a>
    </span>
  <!-- 예약확인 추가 -->
  <div class="resvConfirm">
		  <div class="resvConBox">
			  <a class="btn" href="#">예약확인<!-- 예약확인 --></a>
			  <ul class="list">
				  <li class="dn1 first last">
					  <ul class="listSt">
						  <li class="st first st1">
							  <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=R"><span>객실<!-- 객실 --></span></a>
						  </li>
						  <li class="st last st2">
						  	  <a href="/membership/mbr/login/memLogin.do?resvYn=Y&amp;resvType=D"><span>다이닝<!-- 다이닝 --></span></a>
						  </li>
					  </ul>
				  </li>
			  </ul>
		  </div>
	  </div>
  <!-- 예약확인 추가 -->
  <!-- 한국어 영어 일어 시작  -->
    <div class="language">
		<div class="globalBox">
			<a class="btn" href="#">한국어</a><ul class="list">
				<li class="dn1 first last">
					<ul class="listSt">
						<li class="st first st3"><a href="/hub/cmm/setLang.do?lang=en"><span>English</span></a></li><li class="st st4"><a href="/hub/cmm/setLang.do?lang=ja"><span>日本語</span></a></li><li class="st last st5"><a href="/hub/cmm/setLang.do?lang=zh"><span>简体中文</span></a></li></ul>
				</li>
			</ul>
		</div>
    </div>
    <script type="text/javascript">
        jQuery(function() {
            jQuery('.dn1 > ul > li').each(function(idx) {
                jQuery(this).addClass('st'+(idx+1));
            });
        });
    </script>

	<!-- Find a hotel 시작 -->
	<div class="hotelBox_wrap"><!-- 개선 : class="hotelBox_wrap"변경 -->
		<a class="btn" href="javascript:void(0);">호텔찾기 콤보상자</a>

		<!-- 개선 : 호텔찾기 -->
		<div class="hotelBox_N">
			<div class="hHead">
				<ul class="htTab">
   					<li class="tab2 on first"><a href="#"><span>권역별</span></a></li>
					<li class="tab1  last"><a href="#"><span>브랜드별</span></a></li><!-- a 선택시 li class on 추가 -->
				</ul>
			</div>

			<!-- 권역별 -->
			<div class="hCon" style="display:block;">
				<div class="list2">
					<dl>
						<dt><a href="#"><img src="/images/ko/mem/new_2019/main_tab2_tit1.gif" alt="국내"></a></dt>
						<dd>
							<strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit1.gif" alt="서울 강북"></strong>
							<ul>
								<li class="first"><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
													<li><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
														<li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
														<li class="last"><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
														</ul>
						</dd>
						<dd>
							<strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit2.gif" alt="서울 강남"></strong>
							<ul>
								<li class="first"><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
														<li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
														<li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
														<li class="last"><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
														</ul>
						</dd>
						<dd>
							<strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit3.gif" alt="전국"></strong>
							<ul>
								<li class="first"><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
													<li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
														<li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
														<li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
														<li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
														<li><a href="https://www.shillastay.com/seobusan/index.do?lang=ko">신라스테이 서부산</a></li>
														<li><a href="https://www.shillastay.com/yeosu/index.do?lang=ko">신라스테이 여수</a></li>
														<li class="last"><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
													</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="#"><img src="/images/ko/mem/new_2019/main_tab2_tit2.gif" alt="해외"></a></dt>
						<dd>
							<strong class="tit"><img src="/images/ko/mem/new_2019/main_tab2_stit4.gif" alt="베트남"></strong>
							<ul>
								<li class="first last"><a href="https://www.shillamonogram.com/dnmg/index.do?lang=ko">신라모노그램 다낭</a></li>
												</ul>
						</dd>
					</dl>
				</div>
			</div>
			<!-- //권역별 -->


			<!-- 브랜드별 -->
			<div class="hCon" style="display:none;">
				<div class="list1">
					<dl>
						<dt><a href="/index.do"><img src="/images/ko/mem/new_2019/main_tab1_tit1.gif" alt="THE SHILLA"></a></dt>
						<dd>
							<ul>
							<li class="first"><a href="https://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
														<li class="last"><a href="https://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
														</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko"><img src="/images/ko/mem/new_2019/main_tab1_tit2.gif" alt="SHILLA MONOGRAM"></a></dt>
						<dd>
							<ul>
								<li class="first last"><a href="https://www.shillamonogram.com/dnmg/index.do?lang=ko">신라모노그램 다낭</a></li>
												</ul>
						</dd>
					</dl>
					<dl>
						<dt><a href="https://www.shillastay.com/"><img src="/images/ko/mem/new_2019/main_tab1_tit3.gif" alt="SHILLA STAY"></a></dt>
						<dd>
							<ul>
								<li class="first"><a href="https://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
													<li><a href="https://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
													<li><a href="https://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
													<li><a href="https://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
													<li><a href="https://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
													<li><a href="https://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
													<li><a href="https://www.shillastay.com/samsung/index.do?lang=ko">신라스테이 삼성</a></li>
													<li><a href="https://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
													<li><a href="https://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
													<li><a href="https://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
													<li><a href="https://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
													<li><a href="https://www.shillastay.com/seobusan/index.do?lang=ko">신라스테이 서부산</a></li>
													<li><a href="https://www.shillastay.com/yeosu/index.do?lang=ko">신라스테이 여수</a></li>
													<li class="last"><a href="https://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
												</ul>
						</dd>
					</dl>
				</div>
			</div>
			<!-- //브랜드별 -->

			<a href="#" class="btnClose">닫기</a>
		</div>
		<!-- //개선 : 호텔찾기 -->

		<div class="list" style="display:none"><!-- 20180307 호텔찾기 가로형 변경 -->
		    <div class="hotel">
		        <h3><a href="/index.do" class="tit">The Shilla</a></h3>
		        <ul class="hotelListBox">
					<li class="first"><a href="http://www.shilla.net/seoul/index.do?lang=ko">서울신라호텔</a></li>
					<li class="last"><a href="http://www.shilla.net/jeju/index.do?lang=ko">제주신라호텔</a></li>
				</ul>
		    </div>
		    <div class="stay">
		        <h3><a href="http://www.shillastay.com/stayhub/index.do" class="tit">Shilla Stay</a></h3>
		        <ul class="stayListBox">
		            <li class="first">
		                <span class="tit">서울 강북<!-- 서울 강북 --></span>
		                <ul>
							<li class="first"><a href="http://www.shillastay.com/gwanghwamun/index.do?lang=ko">신라스테이 광화문</a></li>
							<li><a href="http://www.shillastay.com/mapo/index.do?lang=ko">신라스테이 마포</a></li>
							<li class="last"><a href="http://www.shillastay.com/seodaemun/index.do?lang=ko">신라스테이 서대문</a></li>
						</ul>
		                <span class="tit">서울 강남<!-- 서울 강남 --></span>
		                <ul>
							<li class="first"><a href="http://www.shillastay.com/yeoksam/index.do?lang=ko">신라스테이 역삼</a></li>
							<li><a href="http://www.shillastay.com/seocho/index.do?lang=ko">신라스테이 서초</a></li>
							<li class="last"><a href="http://www.shillastay.com/guro/index.do?lang=ko">신라스테이 구로</a></li>
						</ul>
		            </li>
		            <li class="last">
		                <span class="tit">전국<!-- 전국 --></span>
		                <ul>
							<li class="first"><a href="http://www.shillastay.com/dongtan/index.do?lang=ko">신라스테이 동탄</a></li>
							<li><a href="http://www.shillastay.com/cheonan/index.do?lang=ko">신라스테이 천안</a></li>
							<li><a href="http://www.shillastay.com/ulsan/index.do?lang=ko">신라스테이 울산</a></li>
							<li><a href="http://www.shillastay.com/haeundae/index.do?lang=ko">신라스테이 해운대</a></li>
							<li class="last"><a href="http://www.shillastay.com/jeju/index.do?lang=ko">신라스테이 제주</a></li>
						</ul>
		            </li>
		        </ul>
		    </div>
		</div><!-- 20180307 호텔찾기 가로형 변경 -->
	</div>

	<!-- 예약 팝업 추가 -->
	<div class="rsvBox_wrap rsvBtn">
		<a class="btn" href="#none">예약<!-- 예약 --></a>
		<div class="newDim"></div>
		<div class="rsvBox_N">
			<div class="hHead">
				<ul class="htTab">
					<li class="tab1 first last"><a href="#"><span>예약<!-- 예약 --></span></a></li>
				</ul>
			</div>
			<div class="hCon">
				<div class="list1">
					<ul>
						<li class="rsvHotelGo first"><a href="/seoul/resv/rpm/memSetStep1.do">객실 예약<!-- 객실 예약 --></a></li>
						<li class="rsvDiningGo last"><a href="/fbresv/web/memDiningStepWait.do">다이닝 예약<!-- 다이닝 예약 --></a></li>
					</ul>
				</div>
			</div>
			<a href="#" class="btnClose">닫기</a>
		</div>
	</div>
	<!-- // 예약 팝업 추가 -->
  <div class="hubMenu">
    <ul>
        <li class="first"><span class="hMenu1"><a href="/membership/inquires/aboutShilla/memOverView.do">호텔신라 소개</a></span></li>
        <li><span class="hMenu2"><a href="/membership/inquires/contactus/memIndex.do">고객문의</a></span></li>
        <li class="last"><span class="hMenu3">
		<a href="/membership/offers/pack/memListRewardsPack.do">신라리워즈</a>
			</span>
        </li>
    </ul>
  </div>
</div></div>
		<div class="contain">
			<div class="container">
			<div class="contents" id="contents">
					<style>
.dnBox {
    background: #faf7ed;
    padding: 20px 15px;
    margin-top: 50px;
}

.dnBox dl {
    overflow: hidden;
    margin-bottom: 15px;
    line-height: 100%;
}
h6.titCType {
    margin-top: 40px;
}
.roomPrice {
    margin-top: 20px;
}
.goodIntroduce {
    margin-top: 40px;
    overflow: hidden;
}
.snsList li a.Twitter {
    width: 23px;
    height: 23px;
    background-position: 0 0;
    overflow: hidden;
    display: block;
}
.snsList li a.Facebook {
    width: 23px;
    height: 23px;
    background-position: -29px 0;
    overflow: hidden;
    display: block;
}
.snsList li a {
    background: url(../../images/ko/common/bgSns.gif) 0 0 no-repeat;
    width: 23px;
    height: 23px;
    float: left;
}

</style>
<script src="/js/fbr/netfunnel1_r.js" charset="UTF-8"></script>
<link href="http://localhost/HCYHotel/common/user/css/shilla/net_common.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/fbr/fbrSkin.js" charset="UTF-8"></script>
<script type="text/javascript" src="/js/fbr/jquery.ad-gallery.js"></script>

<input type="hidden" value="" name="netFunnelIsOn" id="netFunnelIsOn" autocomplete="off">
<div id="accViewPop" style="display:none">
	<div class="popLayer new_popLayer diningPop">
		<div class="popHead">
			<h2 class="tit"></h2>
			<div class="btn"><a id="accViewPopCloseBtn" class="btnClose" href="#none" onclick="fncLayerClose('accViewPop', 'roomViewMd');"><span>닫기</span></a></div>
		</div>
		<div class="popCtn" style="height: 600px; overflow-y: scroll;" id="accView">
			<div class="slidePhotoBox" id="slidePhotoBox">
				<div id="gallery" class="ad-gallery">
					<div class="ad-image-wrapper"> </div>
					<div class="ad-controls"> </div>
					<div class="ad-nav">
						<div class="ad-thumbs">
							<ul class="ad-thumb-list" id="ad-thumb-list">

							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="conWrap mgt40">
				<div class="leftArea" id="leftArea">
				</div>
				<div class="rightArea" id="rightArea">
					<div class="dnBox" id="dnBox">
					</div>
				</div>
			</div>
		</div>
		<div class="btnAcc"><a class="btnClose" href="#none" onclick="fncLayerClose('accViewPop', 'roomViewMd');"><span>확인<!-- 확인 --></span></a></div>
	</div>

	<div class="mdScreen" style="display: block; height: 1048px;" id="roomViewMd"></div>
</div>


<!-- 2020-12-08 추가 -->
<!-- 호텔 및 다이닝 선택 안내 -->
<div id="popSelectInfo" style="display:none;">
	<div class="popLayer popLayerRegistCard new_popLayer diningPop" tabindex="-1" style="width: 430px;">
		<div class="popHead">
			<h2 class="tit"><!-- 호텔 및 다이닝 선택 안내 --></h2>
			<div class="btn"><a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popSelectInfo'); return false;"><span>닫기</span></a>
			</div>
		</div>
		<div class="popCtn new_rsvBox diningPop" style="width: 430px;">
			<p class="checkTxt mgb15"><span><span id="selectHD"></span>을 선택해주시기 바랍니다.<!-- 을 선택해주시기 바랍니다. --></span></p>
				<div class="btnBox">
				<a href="#" onclick="pc.layerPopup.closePop('#popSelectInfo'); return false;"><img src="../../images/ko/mem/new_2019/btn_card_complete.gif" alt="확인"></a>
			</div>
		</div>
		<div class="btnAcc">
			<a class="btnClose" href="#" onclick="pc.layerPopup.closePop('#popSelectInfo'); return false;"><span>닫기</span></a>
		</div>
	</div>
	<div class="mdScreen" style="display: block; height: 1048px;"></div>
</div>
<!-- //호텔 및 다이닝 선택 안내 -->


<!-- 내용 -->
<div class="new_rsvBox diningNew">
	<div class="rsvStepWrap">
		<div class="rsvStepList step0">
			<ul>
				<li class="step0 first last">
					<span>현재단계</span><img src="../../images/ko/mem/new_2020/diningRsv_step0_on.png" alt="Step0. 다이닝 예약">
				</li>
			</ul>
		</div>
	</div>
	<div class="rsvWrap diningHotelBox_N">
		<!-- 호텔 선택 -->
		<div class="rsvSchHotel">
			<div class="rsvSchCont">
				<dl>
					<dt>
						<img src="../../images/ko/mem/new_2020/diningTit_hotel.png" alt="호텔 선택">
					</dt>
					<dd class="diningChList">
						<ul class="hotelList2">
							<li class="first"><a href="javascript:void(0)" onclick="getDiningList(this);" hotlid="S" class="hotlIdClass ">서울신라호텔</a></li>
							<li><a href="javascript:void(0)" onclick="getDiningList(this);" hotlid="C" class="hotlIdClass ">제주신라호텔</a></li>
							<li class="last"><a href="javascript:void(0)" onclick="getDiningList(this);" hotlid="SS" class="hotlIdClass ">신라스테이</a></li>
							</ul>
					</dd>
				</dl>
			</div>
			<!-- //호텔 선택 -->
			<!-- 다이닝 선택 -->
			<div class="rsvSchCont clearfix">
				<dl>
					<dt>
						<img src="../../images/ko/mem/new_2020/diningTit_dining.png" alt="다이닝 선택">
					</dt>
					<dd class="optionList diningChList2">
						<div class="cus-select-wrap">
							<div class="selected">
								<div class="selected-value" id="diningSelText">다이닝 선택</div>
								<span class="select-arrow"></span>
							</div>
							<ul class="select-box" id="diningSel">
							</ul>
						</div>
						<div class="diningBtnSearch fr">
							<a href="javascript:void(0);" onclick="goStep2()"><img src="../../images/ko/mem/new_2020/btn_diningRsv.gif" alt="예약"></a>
						</div>
					</dd>
				</dl>
			</div>
		</div>
		<!-- //다이닝 선택 -->
		<!-- 신라스테이 click 시, 활성 -->
		<!-- 신라스테이 click 시, 활성 -->
<div class="diningStay_N diningPop" id="popStayLayerInfo">
	<!-- 2020-11-30 이미지 변경, 내용추가 -->
	<div class="hHead">
		<strong><img src="../../images/ko/mem/new_2020/shillaStayTit.png" alt="신라스테이 다이닝 예약"></strong>
	</div>
	<div class="hCon">
		<p class="spNoticeTxt">
			※ 신라스테이 다이닝 예약은 본 사이트에서는 예약 조회가 되지 않으며, 예약 후 받으신 이메일 또는 문자(알림톡)로 확인 가능합니다.<br>
			※ 레스토랑 Cafe에 한해 온라인 예약이 가능하며, 신라스테이 제주점은 전화 예약만 가능합니다.
		</p>
		<div class="list2">
			<!-- 2020-11-25 링크 변경 -->
			<dl>
				<dt>
					<a href="https://www.shillastay.com/">
						<img src="../../images/ko/mem/new_2019/main_tab2_tit1.gif" alt="국내">
					</a>
				</dt>
				<dd>
					<strong class="tit">
						<img src="../../images/ko/mem/new_2019/main_tab2_stit1.gif" alt="서울 강북">
					</strong>
					<ul>
						<li class="first"><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastaygwanghwamun">신라스테이 광화문</a></li>
						<li><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastaymapo">신라스테이 마포</a></li>
						<li class="last"><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayseodaemun">신라스테이 서대문</a></li>
					</ul>
				</dd>
				<dd>
					<strong class="tit"><img src="../../images/ko/mem/new_2019/main_tab2_stit2.gif" alt="서울 강남"></strong>
					<ul>
						<li class="first"><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayyeoksam">신라스테이 역삼</a></li>
						<li><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayseocho">신라스테이 서초</a></li>
						<li><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayguro">신라스테이 구로</a></li>
						<li class="last"><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastaysamsung">신라스테이 삼성</a></li>
					</ul>
				</dd>
				<dd>
					<strong class="tit"><img src="../../images/ko/mem/new_2019/main_tab2_stit3.gif" alt="전국"></strong>
					<ul>
						<li class="first"><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastaydongtan">신라스테이 동탄</a></li>
						<li><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastaycheonan">신라스테이 천안</a></li>
						<li><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayulsan">신라스테이 울산</a></li>
						<li><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayhaeundae">신라스테이 해운대</a></li>
						<li><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayseobusan">신라스테이 서부산</a></li>
						<li class="last"><a href="#" stayurl="https://app.catchtable.co.kr/ct/shop/shillastayyeosu">신라스테이 여수</a></li>
					</ul>
				</dd>
			</dl>
		</div>
		<div class="btnList">
			<input type="hidden" id="stayLink" autocomplete="off">
			<a href="javascript:void(0);" onclick="stayLinkMove()" id="stayResvBtn">
				<img id="keywordAreaBtn" src="../../images/ko/mem/new_2020/step0_confirm_deful.jpg" alt="예약확인" draggable="false">
			</a>
		</div>
	</div>
	<a href="javascript:void(0);" onclick="stayInitClose();" class="btnStayClose">닫기<!-- 닫기 --></a>
</div>
<div class="mdScreen" style="height: 1048px;"></div></div>
	<!-- 호텔, 다이닝 선택 전 기본 메세지 영역 -->
	<div class="rsvDescWrap beforeSearchDining" id="beforeSearchWrap">
		<div class="rsvDescDefault">
			예약을 원하시는 호텔, 다이닝을 선택해주세요.<!-- 예약을 원하시는 호텔, 다이닝을 선택해주세요. -->
		</div>
	</div>
	<!-- //호텔, 다이닝 선택 전 기본 메세지 영역 -->
	<!-- 호텔, 다이닝 선택 후 기본 메세지 영역 -->
	<div class="rsvResultWrap afterSearchDining" id="rsvResultWrap">
		<!-- 선택한 다이닝 -->
		<div class="rsvResultCon">
			<div class="rsvResultList rsvResultDiningList">
				<ul class="clearfix diningDetail">
					<li class="first">
						<!-- 선택한 레스토랑 이미지 영역 -->
						<img src="" alt="선택한 레스토랑 이미지" id="imgSrc">
					</li>
					<li class="last">
						<!-- 선택한 레스토랑 정보 영역 -->
						<div id="intro"></div>
						<p><!-- 선택된 레스토랑별 상세로 이동합니다. -->
							<a class="btnBenfitInfo" href="javascript:void(0);" id="linkPage" onclick="detailPop(this)">자세히 보기<!-- 자세히보기 --></a>
						</p>
						<div id="info" class="diningInfoBoxWrap"></div>
					</li>
				</ul>
			</div>
		</div>
		<!-- //선택한 다이닝 -->
	</div>
	<!-- //호텔, 다이닝 선택 후 기본 메세지 영역 -->
</div>
<!-- //내용 -->

<script>
//STEP1---------------------------------------------------------------------------------START
var domain = 'https://www.shilla.net/';
var shopinfo;
$(document).ready(function (){
	NetFunnel_Complete({},function(ev, ret){
	});

	historyUrl = 'N';

	$("select, input").not(".design-checkbox").uniform();

	var selHotl = '';
	var selShop = '';

	shopIsY = '';
	if(shopIsY == "N"){
		pc.layerPopup.openPop("#popSysErr");
	}

	//선택된 호텔이있을때
	if(selHotl != "" ){
		$("#hotlId").val(selHotl);
		getDiningList($(".hotlIdClass.on"));
	}
	if(selHotl != "" && selShop != ""){
		$("#hotlId").val(selHotl);
		getDiningList($(".hotlIdClass.on"));
		getDiningDetail(selShop);
		fncChangeForLabel('diningSel','seoulDiningLd');
	}

	
	apiHealthCk();

})

//step 2 페이지 불러오기
function goStep2(){

	if(!resvTimeCk()){
		pc.layerPopup.openPop("#popNoReady");
		return false;
	}

	if($("#hotlId").val() == ""){
		$("#selectHD").text('호텔');
		pc.layerPopup.openPop("#popSelectInfo");
		return false;
	}
	if($("#shopId").val() == ""){
		$("#selectHD").text('다이닝');
		pc.layerPopup.openPop("#popSelectInfo");
		return false;
	}
	//부띠끄 예외처리
	if(shopinfo.contIdRest != "PSBQ"){
		$("#submitForm").attr("action","/fbresv/web/memDiningStep1.do");
	}else{
		$("#submitForm").attr("action","/fbresv/web/memDiningStep1Pb.do");
	}
	var frm = document.submitForm;
	NetFunnel_Action({action_id:'SHILLANET2'},frm);
}


//호텔 선택시 레스토랑 불러오기
function getDiningList(my){
	var hotlId = $(my).attr("hotlId");
	$("#hotlId").val(hotlId);
	$("#shopId").val("")
	//다이닝 선택 초기화
	$.uniform.update($("#diningSel").val(""));
	contentview();
	$("#diningSelText").text('다이닝 선택');
	//신라스테이 일떄 팝업 On
	if(hotlId == "SS"){
		$('#popStayLayerInfo, .mdScreen').show();
        pc.layerPopup.lockScroll();
		$(".diningContainer").hide();
		$("#diningSel").val("");
		$("#hotlId").val("");
		return false;
	}

	$.ajax({
		url: '/fbresv/mbl/searchDiningList.do',
		type: "post",
		dataType:"json",
		data : {
			hotlId : hotlId
		},
		async : false,
		error: function(request,status,error){

		},
		success: function( data ){
			$("#diningSel").html("");

			var restHead = '';
			var bakeHead = '';
			var restHtml = "";
			var bakeHtml = "";
			var rest = false;
			var bake = false;
			$.each(data.model.shopList, function(index, item){
				if(item.category == "N" || item.category == ""){
					//레스토랑
					rest = true;
					restHead = '<li class="tit" id="rest">레스토랑</li>';
					restHtml += '<li class="option" onclick="getDiningDetail(\''+item.shopId+'\')">'+item.shopNm+'</li>';
				}else if(item.category == "P"){
					//베이커리
					bake = true;
					bakeHead = '<li class="tit" id="bake">베이커리</li>';
					bakeHtml += '<li class="option" onclick="getDiningDetail(\''+item.shopId+'\')">'+item.shopNm+'</li>';

				}else{

				}
			});
			$("#diningSel").html(restHead+bakeHead);
			if(rest){
				$("#rest").after(restHtml);
			}
			if(bake){
				$("#bake").after(bakeHtml);
			}
			fncChangeForLabel('diningSel','seoulDiningLd');
			$(".diningContainer").show();
			$(".diningSch").hide();
	        $("#tab1").fadeIn();
		}
	});

}

//레스토랑 정보 불로오기
function getDiningDetail(shopId){
	$("#shopId").val(shopId);
	contentview();

	if(shopId != ""){
		$.ajax({
				url: '/fbresv/mbl/searchDiningDetail.do',
				type: "post",
				dataType:"json",
				data : {
					shopId : shopId,
				},
				async : false,
				error: function(request,status,error){

				},
				success: function( data ){
					shopinfo = data.model.shopInfo;
					$("#diningSelText").text(data.model.shopCont.shopNm);
					$("#intro").html(data.model.shopCont.pcIntro);
					$("#info").html(data.model.shopCont.pcInfo);
					if(data.model.shopInfo.openHourYn == "Y"){
						$("#info").append('<p class="dinigmore"><a href="#popPriceInfo" class="txtLink">'+data.model.shopCont.pcOpenHour+'</a></p>');
						pricePopSet(shopId);
					}
					$("#info").append(data.model.shopCont.pcTel);
					$("#linkPage").attr("link",data.model.shopCont.pcRestUrl);
					$('.diningDetail').show();
					var src ='https://www.shilla.net/'+"images/contents"+data.model.shopCont.rescId;
					$("#imgSrc").attr("src",src);

				}
		});
	}

}

//다이닝 정보 온/오프
function contentview(){
	if($("#shopId").val() == ""){
		$("#beforeSearchWrap").show();
		$("#rsvResultWrap").hide();
	}else{
		$("#beforeSearchWrap").hide();
		$("#rsvResultWrap").show();
	}
}

//신라스테이 예약하기버튼
function stayLinkMove(){
	if($("#stayLink").val() == ""){
		return false;
	}
	window.open($("#stayLink").val());
}

//신라스테이 팝업창 닫기
function stayInitClose(){
	$(".list2 a").removeClass("on");
	$("#keywordAreaBtn").attr("src","../../images/ko/mem/new_2020/step0_confirm_deful.jpg");
	$("#stayLink").val("");
	$(".hotlIdClass").removeClass("on");
	$(".diningContainer").hide();
	pc.layerPopup.closePop('#popStayLayerInfo');
}

//신라스테이예약
$(document).on("click", ".list2 a", function(){
	$(".list2 a").removeClass("on");
	$(this).addClass("on");
	$("#keywordAreaBtn").attr("src","../../images/ko/mem/new_2020/step0_confirm.jpg");
	$("#stayLink").val($(this).attr("stayUrl"));
});


//예약 가능 확인 여부
function resvTimeCk(){

	var re = true;

	$.ajax({
		url: '/fbresv/mbl/resvTimeCk.do',
		type: "post",
		dataType:"json",
		async : false,
		error: function(request,status,error){

		},
		success: function( data ){

			if(data.model.result == 'N'){
				re = false;
			}
		}
	});

	return re;
}

//레스토랑 상세보기
function detailPop(my){

	//부띠끄 예외처리
	if(shopinfo.contIdRest != "PSBQ"){
		var imgHtml = "";
		imgHtml += "<div class=\"slidePhotoBox\">";
		imgHtml += "	<div id=\"gallery\" class=\"ad-gallery\">";
		imgHtml += "		<div class=\"ad-image-wrapper\"></div>";
		imgHtml += "		<div class=\"ad-controls\"></div>";
		imgHtml += "		<div class=\"ad-nav\">";
		imgHtml += "		<div class=\"ad-thumbs\">";
		imgHtml += "			<ul class=\"ad-thumb-list\" id=\"ad-thumb-list\">";
		imgHtml += "			</ul>";
		imgHtml += "		</div>";
		imgHtml += "		</div>";
		imgHtml += "	</div>";
		imgHtml += "</div>";
		imgHtml += '<div class="conWrap mgt40">';
		imgHtml += '	<div class="leftArea" id="leftArea">';
		imgHtml += '	</div>';
		imgHtml += '	<div class="rightArea" id="rightArea">';
		imgHtml += '		<div class="dnBox" id="dnBox">';
		imgHtml += '		</div>';
		imgHtml += '	</div>';
		imgHtml += '</div>';
		$("#accView").html(imgHtml);


		var link = $(my).attr("link");
		axios.get(link)
	    .then(function (response) {
	        var html = response.data;
	        var adthumblist = $(html).find(".ad-thumb-list").html();
	        var leftArea = $(html).find(".leftArea").html();
	        var rightArea = $(html).find(".rightArea").html();

			$("#ad-thumb-list").html(adthumblist);
			$("#leftArea").html(leftArea);
			$("#rightArea").html(rightArea);

			$(".btnSet").remove();

			$("#ad-thumb-list").find("img").each(function(index,item){
				var src = $(item).attr("src");
				$(item).attr("src",'https://www.shilla.net/'+src);
			});

			$("#leftArea").find("img").each(function(index,item){
				var src = $(item).attr("src");
				$(item).attr("src",'https://www.shilla.net/'+src);
			});

			$(".titAType").find("img").each(function(index,item){
				var src = $(item).attr("src");
				$(item).attr("src",'https://www.shilla.net/'+src);
			});

			$(".downMenu").find("img").each(function(index,item){
				var src = $(item).attr("src");
				$(item).attr("src",'https://www.shilla.net/'+src);
			});


			$(".titBType").hide();
			$(".dnSeasonSpecial").hide();


			

			var isloc = '';
			if(isloc != ""){
				$(".downMenu").find("li").find("a").each(function(index,item){
					var href = $(item).attr("href");
					$(item).attr("href",'https://www.shilla.net/'+href);
				});
			}

	        pc.layerPopup.openPop("#accViewPop");
			$(".ad-gallery").adGallery();
			$(".slidePhotoBox .btnFullScreen").remove();
			$(".slidePhotoBox .ad-back").remove();
			$(".slidePhotoBox .ad-forward").remove();

	    });
	}else{
		var imgHtml = "";
		imgHtml += "<div class=\"slidePhotoBox\">";
		imgHtml += "	<div id=\"gallery\" class=\"ad-gallery\">";
		imgHtml += "		<div class=\"ad-image-wrapper\"></div>";
		imgHtml += "		<div class=\"ad-controls\"></div>";
		imgHtml += "		<div class=\"ad-nav\">";
		imgHtml += "		<div class=\"ad-thumbs\">";
		imgHtml += "			<ul class=\"ad-thumb-list\" id=\"ad-thumb-list\">";
		imgHtml += "			</ul>";
		imgHtml += "		</div>";
		imgHtml += "		</div>";
		imgHtml += "	</div>";
		imgHtml += "</div>";
		imgHtml += '<div class="conWrap mgt40" id="innerArea">';
		imgHtml += '</div>';
		$("#accView").html(imgHtml);

		var link = $(my).attr("link");
		axios.get(link)
	    .then(function (response) {
	        var html = response.data;
	        var adthumblist = $(html).find(".ad-thumb-list").html();
	        var innerArea = $(html).find(".conWrapB").html();

			$("#ad-thumb-list").html(adthumblist);
			$("#innerArea").html(innerArea);
			$(".firsta").remove();

			$("#ad-thumb-list").find("img").each(function(index,item){
				var src = $(item).attr("src");
				$(item).attr("src",'https://www.shilla.net/'+src);
			});

			$("#innerArea").find("img").each(function(index,item){
				var src = $(item).attr("src");
				$(item).attr("src",'https://www.shilla.net/'+src);
			});

			

			var isloc = '';
			if(isloc != ""){
				$(".downMenu").find("li").find("a").each(function(index,item){
					var href = $(item).attr("href");
					$(item).attr("href",'https://www.shilla.net/'+href);
				});
			}

	        pc.layerPopup.openPop("#accViewPop");
			$(".ad-gallery").adGallery();
			$(".slidePhotoBox .btnFullScreen").remove();
			$(".slidePhotoBox .ad-back").remove();
			$(".slidePhotoBox .ad-forward").remove();

	    });
	}

}

//STEP1---------------------------------------------------------------------------------END

</script>
</div>
			</div>

			<div class="foot footHub">
				<script type="text/javascript">
	function openIdInfo() {
		var url = "http://www.ftc.go.kr/bizCommPop.do?wrkr_no=2038143363";
		window.open(url, "bizCommPop", "width=750, height=700, scrollbars=1");
	}
</script>
<div class="localBox">
	<div class="localBoxer">
		<div class="compInfo">
			<h2 class="logo">THE SHILLA SEOUL</h2>
		</div>
		<!-- 20191218 MG -->
		<div class="brandWrap">
			<div class="brand"><dl><dt><a href="/index.do">The Shilla</a></dt></dl></div>
			<div class="brandMono"><a href="https://www.shillamonogram.com/mghub/index.do?lang=ko">신라모노그램</a></div>
			<div class="brandStay"><a href="https://www.shillastay.com/stayhub/index.do">신라스테이</a></div>
		</div>
		<div class="linkInfo">
			<dl class="introduction">
				<dd class="d1"><a href="/membership/inquires/aboutShilla/memOverView.do"><span>호텔신라 소개</span></a></dd> 
				<dd class="d2"><a href="/membership/inquires/hotelDevelopment.do"><span>호텔 개발</span></a></dd>
					<dd class="d3"><a href="/membership/inquires/contactus/memIndex.do"><span>고객문의</span></a></dd>
					<dd class="d8"><a href="/membership/inquires/aboutShilla/memSiteMap.do"><span>사이트맵</span></a></dd>
				<dd class="d4"><a href="/membership/inquires/memChangeRewards.do"><span>신라리워즈 전환 안내</span></a></dd>
				<dd class="d5"><a href="https://www.theshilla.shop/" target="_blank"><span>The Shilla shop</span></a></dd>
					<dd class="d6"><a href="https://www.samsunggiftcard.net/common/sgc/index.html" target="_blank"><span>삼성상품권</span></a></dd>
					<dd class="d7"><a href="#" onclick="oldHopenO('oldHpopup'); return false;"><span>신라리워즈 전환 안내</span></a></dd>
				</dl>
			<dl class="inquiries">
				<dt class="dt">SNS</dt>
				    <dd class="insta"><a title="Instagram - popup" target="_blank" href="https://www.instagram.com/shillahotels/"><span>Instagram</span></a></dd>
				    <dd class="facebook"><a title="Facebook - popup" target="_blank" href="http://www.facebook.com/theshillahotels"><span>Facebook</span></a></dd>
				    <dd class="weibo"><a title="Weibo - popup" target="_blank" href="http://weibo.com/shillahotel"><span>Weibo</span></a></dd>
				    <dd class="youtube"><a title="Youtube - popup" target="_blank" href="https://www.youtube.com/@theshillahotelsresorts9834"><span>Youtube</span></a></dd>
			</dl>
			
			<dl class="ContactInfo">
				<dd class="d1"><span>서울신라호텔 02-2233-3131</span></dd> 
				<dd class="d2"><span>제주신라호텔 064-735-5114</span></dd>
				<dd class="d3"><span>신라스테이 02-2230-0700</span></dd>
				<dd class="d4"><span>신라리워즈 02-2230-5528</span></dd>
			</dl>
		</div>
	</div>
</div>
<div class="footer">
	<div class="linkBox">
		<ul>
			<li class="link1 first"><a href="/membership/memFooter/memAgreement.do">신라리워즈 약관</a></li>
			<li class="link2"><a href="/membership/memFooter/memIndividualPolicy.do">개인정보처리방침</a></li>
			<li class="link3"><a href="/membership/memFooter/pop/memEmailAdCollectPop.do" onclick="openCtrlPopup('/fbresv/memFooter/pop/memEmailAdCollectPop.do','emailAdCollectPop');  return false;">이메일무단수집금지</a></li>
			<li class="link4"><a href="https://www.shillaaudit.com/audit/inf_information.do" target="_blank">윤리경영</a></li>
			<li class="link5 last"><a href="/membership/memFooter/pop/memSafeMngPop.do" onclick="openCtrlPopup('/fbresv/memFooter/pop/memSafeMngPop.do','emailAdCollectPop');  return false;">건축/시설물 안전관리</a></li>  </ul>
	</div>
	<div class="selectLang">
		<ul>
			<li class="en first"><a href="/hub/cmm/setLang.do?lang=en">English</a></li>
					<li class="ja"><a href="/hub/cmm/setLang.do?lang=ja">日本語</a></li>
					<li class="zh last"><a href="/hub/cmm/setLang.do?lang=zh">简体中文</a></li>
					</ul>
	</div> 
	<div class="adressBox">
		<p>㈜호텔신라 서울특별시 중구 동호로 249 (우: 04605)  Tel: 02-2233-3131 Fax: 02-2230-3769 사업자등록번호: 203-81-43363 통신판매신고번호: 중구00272호 대표이사 이부진    호스팅서비스제공자 삼성SDS㈜    서울객실예약 shilla.reserve@samsung.com  제주객실예약 jejushilla@samsung.com</p>
		<a class="footLinkbtn" href="#" onclick="openIdInfo(); return false;">사업자 정보 확인</a>
		</div>
	<div class="copyright"><p>COPYRIGHT © HOTEL SHILLA CO., LTD. ALL RIGHTS RESERVED.</p></div>
</div>
				<!-- 17.03.28 popup 추가 -->
		            <div id="oldHpopup">
						<div class="oldHback" style="z-index:999;"></div>
						<div class="oldHwrap" style="z-index:999;">
						<div class="ctnTitle">
							<img alt="명품고택 소개" src="/images/ko/hub/main/oldHpoptit.gif">
						<div class="close"><a href="#" onclick="oldHopenC('oldHpopup'); return false;">
							<img src="/images/ko/mem/reservation/step1Infoclose.gif" alt="닫기"></a>
						</div>
						</div>
						<div class="ctnWrap">
							<img src="/images/ko/hub/main/oldHctn.jpg">
                            	<p>경북 명품고택</p>
                            	<p>호텔신라가 문화체육관광부에서 선정한 경상북도 명품 고택을 소개하여 드립니다.</p>
                            	<p>여행 테마에 따라 우리나라 전통문화와 선조들의 멋과 정신을 오롯이 체험하실 수 있습니다.</p>
                            	<p>* 호텔신라는 고택 예약 서비스를 직접 운영하지 않으며, 본 사이트는 고택 소개 정보만을 제공하고 있음을 알려드립니다.</p>
                            	<p>신라호텔 고객의 문의 및 의견과 관련하여 귀사가 아래와 같이 본인의 개인정보를 수집 및 이용하는데 동의합니다.</p>
						<div class="btnCtn">
							<a class="oldHbtn" href="http://gyeongbukgotaek.modoo.at" target="_blank">자세히 보기</a></div>
						</div>
						</div>
						</div>
						<script>
						function oldHopenO(IdName) {
							var pop = document.getElementById(IdName);
							pop.style.display = "block";
							$('html, body').animate({scrollTop: 0 }, 'fast');
							return false;
						}

						function oldHopenC(IdName) {
							var pop = document.getElementById(IdName);
							pop.style.display = "none";
							return false;
						}
						</script>
				<iframe id="hidden_frame" name="hidden_frame" style="display:none" title="빈 프레임"> </iframe></div>
		</div>
	</div>
	<form id="submitForm" method="post" name="submitForm">
		<input type="hidden" id="pageIndex" value="1" class="saveField" autocomplete="off">
		<input type="hidden" id="resvId" name="resvId" value="" class="saveField" autocomplete="off">													<input type="hidden" id="hotlId" name="hotlId" value="" class="saveField" autocomplete="off">													<input type="hidden" id="shopId" name="shopId" value="" class="saveField" autocomplete="off"> 												<input type="hidden" id="visitDate" name="visitDate" value="" alerttext="[날짜]" class="saveField" autocomplete="off">         				<input type="hidden" id="visitTime" name="visitTime" value="" alerttext="[방문예정시간]" class="saveField" autocomplete="off">        			<input type="hidden" id="visitAdlt" name="visitAdlt" value="" class="saveField" autocomplete="off">          								<input type="hidden" id="visitChld" name="visitChld" value="" class="saveField" autocomplete="off">          								<input type="hidden" id="visitInnt" name="visitInnt" value="" class="saveField" autocomplete="off">         								<input type="hidden" id="visitName" name="visitName" value="" alerttext="[성명]" class="saveField" autocomplete="off">       				<input type="hidden" id="visitNameFirst" name="visitNameFirst" value="" alerttext="[성명]첫번쨰" class="saveField" autocomplete="off">      	<input type="hidden" id="visitNameLast" name="visitNameLast" value="" alerttext="[성명]두번쨰" class="saveField" autocomplete="off">        	<input type="hidden" id="visitPhon" name="visitPhon" value="" alerttext="[연락처]" class="saveField" autocomplete="off">         			<input type="hidden" id="visitEmail" name="visitEmail" value="" alerttext="[이메일]" class="saveField" autocomplete="off">         			<input type="hidden" id="resvTypeCd" name="resvTypeCd" value="" class="saveField" autocomplete="off">        								<input type="hidden" id="resvLangCd" name="resvLangCd" value="" class="saveField" autocomplete="off">        								<input type="hidden" id="resvStateCd" name="resvStateCd" value="" class="saveField" autocomplete="off">      							<input type="hidden" id="allgyCd" name="allgyCd" value="" class="saveField" autocomplete="off">           									<input type="hidden" id="allgyEtcCd" name="allgyEtcCd" value="" class="saveField" autocomplete="off">        								<input type="hidden" id="chairText" name="chairText" value="" class="saveField" autocomplete="off">     	 								<input type="hidden" id="chairTextLang" name="chairTextLang" value="" class="saveField" autocomplete="off">         					<input type="hidden" id="addEtc" name="addEtc" value="" class="saveField" alerttext="[추가요청사항]" autocomplete="off">      	<input type="hidden" id="prefAreaCd" name="prefAreaCd" value="" alerttext="[선호 구역]" class="saveField" autocomplete="off">   				<input type="hidden" id="cardTypeCd" name="cardTypeCd" value="" alerttext="[카드 종류]" class="saveField" autocomplete="off">         		<input type="hidden" id="cardNo" name="cardNo" value="" alerttext="[유효한 카드번호]" class="saveField" autocomplete="off">	          				<input type="hidden" id="cardExprYm" name="cardExprYm" value="" alerttext="[카드유효기간]" class="saveField" autocomplete="off">		   			<input type="hidden" id="diniCho" name="diniCho" value="" alerttext="[시간]" class="saveField" autocomplete="off">		   						<input type="hidden" id="visitGender" name="visitGender" value="" alerttext="[성별]" class="saveField" autocomplete="off">    				<input type="hidden" id="step2NotiYn" name="step2NotiYn" value="" class="saveField" autocomplete="off">      													<input type="hidden" id="rewardNo" name="rewardNo" value="" class="saveField" autocomplete="off">      										<input type="hidden" id="smsCertYn" name="smsCertYn" alerttext="[휴대폰 인증]" value="" class="saveField" autocomplete="off">    				<input type="hidden" id="resvSeatType" name="resvSeatType" alerttext="[좌석유형]" value="" class="saveField" autocomplete="off">    			<input type="hidden" id="roomType" name="roomType" value="" alerttext="[룸]" autocomplete="off">	<input type="hidden" id="roomTypeText" name="roomTypeText" value="" autocomplete="off">																<input type="hidden" id="roomPerson" name="roomPerson" value="" autocomplete="off">														<input type="hidden" id="preUpdateDate" name="preUpdateDate" value="" autocomplete="off">												<input type="hidden" id="preUpdateDiniCho" name="preUpdateDiniCho" value="" autocomplete="off">										<input type="hidden" id="preUpdateTime" name="preUpdateTime" value="" autocomplete="off">										<input type="hidden" id="updateYn" name="updateYn" value="" autocomplete="off">

		<input type="hidden" id="allgyMemo" name="allgyMemo" value="" class="saveField" autocomplete="off">           								<input type="hidden" id="allgyText" name="allgyText" value="" class="saveField" autocomplete="off">           								<input type="hidden" id="allgyAgreeYN" name="allgyAgreeYN" value="" class="saveField" autocomplete="off">           								<input type="hidden" id="prefAreaText" name="prefAreaText" value="" class="saveField" autocomplete="off">           					<input type="hidden" id="blockageId" name="blockageId" value="" class="saveField" autocomplete="off">      								<input type="hidden" id="blockDelTime" name="blockDelTime" value="" class="saveField" autocomplete="off">      							<input type="hidden" id="blockCreTime" name="blockCreTime" value="" class="saveField" autocomplete="off">      							<input type="hidden" id="cardSaved" name="cardSaved" value="" class="saveField" autocomplete="off">      									<input type="hidden" id="memo" name="memo" value="" class="saveField" autocomplete="off">      													<input type="hidden" id="confirmNum" name="confirmNum" value="" class="saveField" autocomplete="off">      								<input type="hidden" id="searchDateSel" name="searchDateSel" value="" class="saveField" autocomplete="off">      						<input type="hidden" id="searchDateGubun" name="searchDateGubun" value="" class="saveField" autocomplete="off">      				<input type="hidden" id="searchDateType" name="searchDateType" value="" class="saveField" autocomplete="off">      					<input type="hidden" id="sDate" name="sDate" value="" class="saveField" autocomplete="off">      												<input type="hidden" id="eDate" name="eDate" value="" class="saveField" autocomplete="off">      												<input type="hidden" id="randAreaYn" name="randAreaYn" value="" autocomplete="off">     <!-- 비회원 중복예약체크 -->									<input type="hidden" id="natCd" name="natCd" value="" alerttext="[연락처]" autocomplete="off">	<input type="hidden" id="natCdIdx" name="natCdIdx" value="" autocomplete="off">	<input type="hidden" id="checkGift" name="checkGift" value="" autocomplete="off">	<input type="hidden" id="checkCake" name="checkCake" value="" autocomplete="off">	<input type="hidden" id="giftCnt" name="giftCnt" value="" autocomplete="off">	<input type="hidden" id="cakeCnt" name="cakeCnt" value="" autocomplete="off">	<input type="hidden" id="selectGiftSn" name="selectGiftSn" value="" autocomplete="off">	<input type="hidden" id="resvCategory" name="resvCategory" value="" autocomplete="off">	</form>

<script type="text/javascript" id="">document.all&&!document.addEventListener||window.proxied_alert||(window.proxied_alert=window.alert,window.alert=function(){var a=arguments[0]?arguments[0]:"null";dataLayer.push({event:"alert_showed",alert_message:a});return proxied_alert.apply(this,arguments)});</script><script type="text/javascript" id="">(function(){var b=document.querySelector("select#diningSel"),c=function(a){a=a.target.options[a.target.selectedIndex];window.dataLayer.push({event:"selectionMade",selectedElement:a})};b.addEventListener("change",c,!0);0<document.querySelector("#diningSel").selectedIndex&&window.dataLayer.push({event:"selectionMade",selectedElement:document.querySelector("#diningSel").selectedOptions[0]})})();</script><script type="text/javascript" id="">(function(){if(null==sessionStorage.getItem("_PageViewCounter")||void 0==sessionStorage.getItem("_PageViewCounter"))sessionStorage.setItem("_PageViewCounter",1);else{var f=0;f=parseInt(sessionStorage.getItem("_PageViewCounter"));f+=1;sessionStorage.setItem("_PageViewCounter",f)}var v=!0,l=2592E5;if(window.Storage){var c=JSON.parse(localStorage.getItem("_tab_ids"))||[],d=sessionStorage.getItem("_tab_id"),a=JSON.parse(sessionStorage.getItem("_nav_path")),e=document.location.href;f=!1;var w=document.location.origin,
t,p,m,g,u=function(b){return 0===l?b:b.filter(function(h){try{return m=parseInt(h.split("_")[1],10),m>(new Date).getTime()}catch(q){return!1}})};var r=function(b){if(0===l)return b;try{g=b.split("_");m=parseInt(g[1],10);if(m>(new Date).getTime())return b;g=g[0]+"_"+((new Date).getTime()+l);sessionStorage.setItem("_tab_id",g);return g}catch(h){return b}};var x=function(){if(!1===v)return"BACK/FORWARD";if(2>a.length)return"FORWARD";t=a[a.length-2];p=a[a.length-1];return t===e||p===e?"BACK":"FORWARD"},
y=function(){c=JSON.parse(localStorage.getItem("_tab_ids"))||[];d=sessionStorage.getItem("_tab_id");c=u(c);if(c.length&&null!==d){var b=c.indexOf(d);-1<b&&c.splice(b,1);localStorage.setItem("_tab_ids",JSON.stringify(c))}},z=function(){var b=(new Date).getTime();"undefined"!==typeof performance&&"function"===typeof performance.now&&(b+=performance.now());return"xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx".replace(/[xy]/g,function(h){var q=(b+16*Math.random())%16|0;b=Math.floor(b/16);return("x"===h?q:q&3|
8).toString(16)})+(0<l?"_"+((new Date).getTime()+l):"")},A=function(b,h){return!(!0===h&&0!==b&&255!==b)};null===d?(d=z(),f=!0,sessionStorage.setItem("_tab_id",d)):d=r(d);c=u(c);-1===c.indexOf(d)&&(c.push(d),localStorage.setItem("_tab_ids",JSON.stringify(c)));r=c.length;if(window.PerformanceNavigation){a=a||[];var n=window.performance.navigation.redirectCount;if(A(window.performance.navigation.type,f))switch(window.performance.navigation.type){case 0:var k="NAVIGATE";a.push(e);break;case 1:k="RELOAD";
0!==a.length&&a[a.length-1]===e||a.push(e);break;case 2:k=x();"FORWARD"===k?-1<document.referrer.indexOf(w)&&a.push(e):"BACK"===k?p!==e&&a.pop():a.push(e);break;default:k="OTHER",a.push(e)}else a.push(e);sessionStorage.setItem("_nav_path",JSON.stringify(a))}window.addEventListener("beforeunload",y);n={tabCount:r,redirectCount:n,navigationType:k,newTab:!0===f?"New":"Existing",tabId:d.replace(/_.+/,"")};window.google_tag_manager[google_tag_manager["rm"]["32068102"](58)].dataLayer.set("browsingBehavior",n);window.dataLayer.push({event:"custom.navigation",
browsingBehavior:n})}})();</script>
<script type="text/javascript" id="">var resvType=google_tag_manager["rm"]["32068102"](68);sessionStorage.setItem("_resvType",resvType);</script></body></html>