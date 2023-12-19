<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info="공지사항 목록"%>
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
	href="http://192.168.10.147/HCYHotel/common/user/css/phoenix/common.min.css">
<link rel="stylesheet"
	href="http://192.168.10.147/HCYHotel/common/user/css/phoenix/contents.min.css">
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
	href="http://192.168.10.147/HCYHotel/common/user/css/phoenix/system.css">

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
        showSpinner: false
    });
</script> 

<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
            m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-87590871-1', 'auto');
    ga('send', 'pageview');
</script>


<!-- Global site tag (gtag.js) - Google Ads: 796355633 휘닉스 마케팅팀 김하나과장 요청 20190926-->
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=AW-796355633"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'AW-796355633');
</script>



<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/796355633/?random=1701769204151&amp;cv=11&amp;fst=1701769204151&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3bt0&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%9C%98%EB%8B%89%EC%8A%A4%20%ED%98%B8%ED%85%94%EC%95%A4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8&amp;auid=1184424877.1701769204&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script>
</head>
<body cz-shortcut-listen="true">

	<a href="#content-main" class="skip-navi">본문 바로가기</a>

	<!-- header -->
	<jsp:include page="../include/header.jsp" />

<script type="text/javascript">
$(function(){
	

});// ready

function detail( noticeCode ){
	$("#noticeCode").val( noticeCode );
	$("#noticeCodeFrm").submit();
};//detail


</script>

	<!-- content-main : 본문 페이지 영역 // -->
	<div id="content-main" class="content-main">
		<div class="common-content customer-notice">
			<h3 class="content-main-title" style="margin-top:7%;">공지사항</h3>
			<div class="board-list-header">
				<form action="about:blank" method="get" class="list-search-form">
					<fieldset>
						<legend>게시물검색</legend>
						<span class="form-wrap"><label for="searchKeyword"
							class="hide">검색어</label> 
							<input type="text" id="searchKeyword" placeholder="검색어를 입력하세요." class="txt keyword">
							<input type="button" class="btn btn-dark btn-sm" value="검색"/>
							<!-- <button type="button" class="btn-submit">검색</button> --></span>
					</fieldset>
				</form>
			</div>
			<table border="1" class="board-list">
				<caption>
					<strong>공지사항 목록 테이블</strong><br> 번호, 분류, 제목, 등록일 항목으로 구성
				</caption>
				<colgroup>
					<col style="width: 120px;">
					<%-- <col style="width: 120px;"> --%>
					<col sytle="width: 350px">
					<col style="width: 180px;">
				</colgroup>
				<thead>
					<tr>
						<th scope="col">번호</th>
						<!-- <th scope="col">분류</th> -->
						<th scope="col">제목</th>
						<th scope="col">등록일</th>
					</tr>
				</thead>
				<tbody>
				
				<c:forEach varStatus="i" var="noticeList" items="${ noticeList }">
				<tr onclick="detail('${ noticeList.noticeCode }')">
				<td><c:out value="${ i.count }"/></td>
				<td><c:out value="${ noticeList.title }"/></td>
				<td><c:out value="${ noticeList.inputDate }"/></td>  
				</tr>
				</c:forEach>
				</tbody>
			</table>
				<form id="noticeCodeFrm" action="user_notice_detail.do" method="get">
                    <input type="hidden" name="noticeCode" id="noticeCode">
				</form>	
			<!-- <div class="paging-container">
				<div class="paging-common">
					<a href="javascript:;" class="page-btn first gray">처음</a> <a
						href="javascript:;" class="page-btn prev gray">이전</a> <span
						class="paging-num"><a href="javascript:;" class="on"> 1
					</a><a href="javascript:;" class=""> 2 </a><a href="javascript:;"
						class=""> 3 </a><a href="javascript:;" class=""> 4 </a><a
						href="javascript:;" class=""> 5 </a></span> <a href="javascript:;"
						class="page-btn next">다음</a> <a href="javascript:;"
						class="page-btn last">마지막</a>
				</div> -->
			</div>
		</div>
	</div>
	<!-- // content-main -->
	</section>

	<script type="text/javascript">
		(function(Vue, $system) {
			window.vm = new Vue({
				el: '#content-main',
				extends: $system.components.board,
				data: function() {
					return {
						uri: '/customer/notice',
					};
				},
				methods: {
					fnGetHmpgDivCd : function(hmpgDivCd) {
						this.board.params.hmpgDivCd = hmpgDivCd;
						this.fnList(1);
					}
				},
				created: function() {
					this.fnInit();
				},
				mounted: function() {
				    
					// 기본 전체 조회
					if(!this.board.params.hmpgDivCd){
						this.board.params.hmpgDivCd = '';
					}
                    
					this.fnList();
				},
			});
		})(Vue, window.$system);
	</script>

	<!-- footer -->
	<jsp:include page="../include/footer.jsp" />

	</div>
	<iframe allow="join-ad-interest-group" data-tagging-id="AW-796355633"
		data-load-time="1701769204166" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/796355633?random=1701769204151&amp;cv=11&amp;fst=1701769204151&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3bt0&amp;gcd=11l1l1l1l1&amp;dma=0&amp;u_w=1920&amp;u_h=1080&amp;url=https%3A%2F%2Fphoenixhnr.co.kr%2Fpage%2Fcustomer%2Fnotice%3Fq%255BhmpgDivCd%255D%3D%26page%3D1%26size%3D10&amp;ref=https%3A%2F%2Fwww.google.com%2F&amp;hn=www.googleadservices.com&amp;frm=0&amp;tiba=%EA%B3%B5%EC%A7%80%EC%82%AC%ED%95%AD%20%3C%20%EA%B3%A0%EA%B0%9D%EC%84%BC%ED%84%B0%20%7C%20%ED%9C%98%EB%8B%89%EC%8A%A4%20%ED%98%B8%ED%85%94%EC%95%A4%EB%93%9C%EB%A6%AC%EC%A1%B0%ED%8A%B8&amp;auid=1184424877.1701769204&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Google%2520Chrome%3B119.0.6045.200%7CChromium%3B119.0.6045.200%7CNot%253FA_Brand%3B24.0.0.0&amp;uamb=0&amp;uap=Windows&amp;uapv=10.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe>



</body>
</html>