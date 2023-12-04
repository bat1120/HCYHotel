<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page info="문의사항 목록" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="ko"><head>
	<title>공지 &amp; 뉴스 | 더 플라자 | 더 플라자 호텔 서울</title>
	












<meta charset="utf-8">

<meta http-equiv="x-ua-compatible" content="ie=edge">




<meta property="og:image" content="https://www.hoteltheplaza.com/sp4/img/thumb.jpg">
<meta property="og:image:type" content="image/jpg">
<meta property="og:image:width" content="1200">
<meta property="og:image:height" content="631">


<meta property="og:type" content="website">
<meta property="og:site_name" content="더 플라자 호텔 서울">
<meta property="og:locale" content="ko_KR">
<!-- <meta property="fb:app_id" content="499127953852895"> -->
<meta property="fb:app_id" content="142078889760752">
<link rel="shortcut icon" type="image/x-icon" href="/_resource/favicon.ico">
<link rel="stylesheet" type="text/css" href="http://localhost/HCYHotel/common/user/css/plaza/common.css">
<script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-C2XCVPTE5M&amp;l=dataLayer&amp;cx=c"></script><script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-WNLK849"></script><script src="/_resource/js/vendor/jquery-1.9.1.min.js"></script>
<script src="/_resource/js/vendor/TweenMax.min.js"></script>
<script src="/_resource/js/vendor/Draggable.min.js"></script>
<script>
    var lang= location.href.replace(/^http.+(\/[a-z]{2})\/.*$/gi, "$1");
</script>
<!-- Google Tag Manager -->
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-WNLK849');</script>
<!-- End Google Tag Manager -->


	<link rel="stylesheet" type="text/css" href="http://localhost/HCYHotel/common/user/css/plaza/about.css">
	<script>var globalDepth1=1,globalDepth2=5;</script>
	<script>
		function detail( seq ) {
			var f = document.listForm;
			f.action = "newsDetail.do";
			f.news_seq.value = seq;
			f.submit();
		}
		function list() {
			var f = document.listForm;
			f.action = "news.do";
			f.submit();
		}
	</script>
	
<script type="application/ld+json">
{
 "@context": "http://schema.org",
 "@type": "BreadcrumbList",
 "itemListElement": [{
"@type": "ListItem",
"position": 1,
"item": {
 	"@id": "https://www.hoteltheplaza.com/kr/",
 	"name": "홈",
	"image":"https://www.hoteltheplaza.com/_resource/images/common/icon_home.png"
} },
{	"@type": "ListItem",
"position": 2,
"item": {
 	"@id": "https://www.hoteltheplaza.com/kr/about/brand.jsp",
 	"name": "더 플라자"
}  },
{	"@type": "ListItem",
"position": 3,
"item": {
 	"@id": "https://www.hoteltheplaza.com/kr/about/news.do",
 	"name": "공지&amp;뉴스"
}  }]
}
</script>
	
</head>
<body cz-shortcut-listen="true">
<div id="wrap">
	














<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-WNLK849"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->
<div id="skipTo">
	<a href="#gnb">메뉴 바로가기</a>
	<a href="#contents">본문 바로가기(skip to content)</a>
</div>

<!-- header -->
<jsp:include page="../include/header.jsp"/>

<form name="form_signup" method="post" action="https://voc.hwhnr.com/voc/system/vocIndex">
	<input type="hidden" name="channel_id" value="016">
	<input type="hidden" name="language" value="QMw6Owsyu8Ta6VkssmlXqg==">
	<input type="hidden" name="user_id" value="">
	<input type="hidden" name="cust_name" value="">
	<input type="hidden" name="cust_tel" value="">
	<input type="hidden" name="cust_email" value="">
</form>
<form name="popForm">
	<input type="hidden" name="title">
	<input type="hidden" name="ment">
	<input type="hidden" name="img">
	<input type="hidden" name="link">
</form>
<script>

	if(localStorage.getItem("email")!=null){
		$(".login_email").val(localStorage.getItem("email"));
		$("#email_save").addClass("active");
	}
	function login() {
		var mailStr = $(".login_email").val();
		var pwStr = $(".login_pw").val();
		var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;
		if(mailStr == ""){
			$(".login_box .wrong_copy").html("이메일을 입력해 주세요.");
			$(".login_email").focus();
			wrongAction();
			return;
		} else if(!mailStr.match(regExp)){
			$(".login_box .wrong_copy").html("이메일 형식에 맞게 입력해주세요.");
			$(".login_email").focus();
			wrongAction();
			return;
		} else if(pwStr == ""){
			$(".login_box .wrong_copy").html("비밀번호를 입력해 주세요.");
			$(".login_pw").focus();
			wrongAction();
			return;
		}

		var lang		= location.href.replace(/^http.+(\/[a-z]{2})\/.*$/gi, "$1");
		var protocol	= ( location.href.indexOf("localhost") != -1 ? "http" : "https" ) + "://";
		var f			= document.signForm;
		var returnUrl	= location.href.replace(/#/gi,"");
		var cond		= returnUrl.indexOf("signup_complete") != -1
				|| returnUrl.indexOf("login.jsp") != -1;
		f.returnUrl.value = cond ? lang : returnUrl;

		$.ajax({
			url			: protocol + location.hostname + lang + "/sign/signIn.do",
			dataType	: "jsonp",
			method		: "post",
			data		: {
				email	: f.email.value,
				passwd	: f.passwd.value,
				returnUrl : f.returnUrl.value
			},
			success		: function( resp ) {
				if($("#email_save").hasClass("active") == true){
					localStorage.setItem("email", f.email.value);
				}else{
					localStorage.removeItem("email");
				}
				$(".login_box .wrong_copy").text(resp.msg);
				wrongAction();
				if( resp.result === "ok" )
					location.href = resp.returnUrl;
			},
			fail : function( resp ) {
				$(".login_box .wrong_copy").text("잠시 후에 다시 시도해주세요.");
			}
		});
	}
	function logout() {
		var lang = location.href.replace(/^http.+(\/[a-z]{2})\/.*$/gi, "$1");
		$.ajax({
			url		: lang + "/sign/signOut.do",
			method	: "post",
			data	: {
				returnUrl : location.href
			},
			success	: function(){
				location.reload();
			}
		});
	}
	function changeLang(_lang) {
		//location.href = location.href.replace( /^(http.+\/)[a-z]{2}(\/.*)$/gi, "$1" + _lang + "$2" );
		location.href = location.href.replace( /^(http.+\/)[a-z]{2}(\/.*)$/gi, "$1" + _lang );
	}

	function contACTUSLine() {
		win_hoteltheplaza = window.open("","voc_hoteltheplaza","width=1000,height=700,scrollbars=yes,resizeable=yes,left=150,top=150");
		document.form_signup.target = "voc_hoteltheplaza";
		document.form_signup.action = "https://voc.hwhnr.com/voc/system/vocIndex";
		document.form_signup.submit();
		win_hoteltheplaza.focus();
	}
	function wrongAction(){
		$(".login_box .wrong_copy").removeClass("active");
		setTimeout(function(){
			$(".login_box .wrong_copy").addClass("active");
		}, 100);
	}
	function logoAkClick(){
		window.open('https://autograph-hotels.marriott.com/', '_blank');
		
	}
	
	function goTrackEventHeader()
  {
    dataLayer.push({
      'event': 'nav_reservation'
    });
  }
  
  function goTrackEventMenu(menuName)
  {
    dataLayer.push({
      'event': 'menu_click',
      'title': menuName
    });
  }
  
</script>
	<div id="contents">

		<div class="about_content notice_and_news ">
			
			<div class="section_content">
				<h3>공지 &amp; 뉴스</h3>
				<p>더 플라자의 최신 뉴스 및 공지사항을 알려드립니다.</p>

				<form action="news.do" method="get" name="listForm">
					<input type="hidden" name="news_seq">
					<input type="hidden" name="pageNum" value="1">		
					<div class="content_list">
						<div class="search_area">
							<select name="search_param1" title="검색 타입 선택">
								<option value="">전체</option>
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select>
							<div class="input_area">
								<div class="input_box">
									<input type="text" class="input_search" name="search_param2" value="" title="검색어 입력란">
								</div>
								<a href="javascript:list();" class="btn_search"><img src="/_resource/images/about/ico_search.png" alt="검색"></a>
							</div>
						</div>
						<table>
							<caption>번호, 제목, 작성일로 구성된 공지사항 및 뉴스를 확인 가능하게 만든 표</caption>
							<colgroup>
								<col width="8%">
								<col width="10%">
								<col width="72%">
								<col width="10%">
							</colgroup>
							<thead>
							<tr>
								<th>번호</th>
								<th colspan="2">제목</th>
								<th>작성일</th>
							</tr>
							</thead>
							<tbody>
							
							
								<tr style="background: #ebe7ed;">
									<td class="num">28</td>
									<td class="type ">NOTICE <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(46)">
											<span>
												2023 더 플라자 웹 회원 혜택 안내
												
											</span>
										</a>
									</td>
									<td class="day">2023.03.01</td>
								</tr>
							
								<tr style="background: #ebe7ed;">
									<td class="num">27</td>
									<td class="type ">NOTICE <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(56)">
											<span>
												2023 더 플라자 제휴카드 혜택 안내
												
											</span>
										</a>
									</td>
									<td class="day">2023.01.31</td>
								</tr>
							
								<tr>
									<td class="num">26</td>
									<td class="type ">EVENT <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(123)">
											<span>
												더 플라자 웹 회원 X 카카오 채널 이벤트
												<em class="new"><img src="/_resource/images/about/ico_new.png" alt="new"></em>
											</span>
										</a>
									</td>
									<td class="day">2023.12.01</td>
								</tr>
							
								<tr>
									<td class="num">25</td>
									<td class="type ">NOTICE <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(47)">
											<span>
												2024년 세븐스퀘어 가격 인상 안내
												<em class="new"><img src="/_resource/images/about/ico_new.png" alt="new"></em>
											</span>
										</a>
									</td>
									<td class="day">2023.12.01</td>
								</tr>
							
								<tr>
									<td class="num">24</td>
									<td class="type ">NOTICE <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(119)">
											<span>
												2024년 호텔 부분 공사 안내
												
											</span>
										</a>
									</td>
									<td class="day">2023.11.20</td>
								</tr>
							
								<tr>
									<td class="num">23</td>
									<td class="type ">NOTICE <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(118)">
											<span>
												지스텀 카카오톡 채널 오픈 안내
												
											</span>
										</a>
									</td>
									<td class="day">2023.11.01</td>
								</tr>
							
								<tr>
									<td class="num">22</td>
									<td class="type ">NOTICE <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(36)">
											<span>
												2023 추석 연휴 운영 안내 (9.28 - 10.3)
												
											</span>
										</a>
									</td>
									<td class="day">2023.09.21</td>
								</tr>
							
								<tr>
									<td class="num">21</td>
									<td class="type ">EVENT <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(117)">
											<span>
												2023년 국가고객만족도(NCSI) 호텔 부문 1위 감사 이벤트 당첨자 발표
												
											</span>
										</a>
									</td>
									<td class="day">2023.09.20</td>
								</tr>
							
								<tr>
									<td class="num">20</td>
									<td class="type ">EVENT <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(115)">
											<span>
												2023년 국가고객만족도(NCSI) 호텔 부문 1위 감사 이벤트
												
											</span>
										</a>
									</td>
									<td class="day">2023.09.05</td>
								</tr>
							
								<tr>
									<td class="num">19</td>
									<td class="type ">NOTICE <i></i></td>
									<td class="tit ">
										<a href="javascript:detail(111)">
											<span>
												개인정보처리방침 변경 안내
												
											</span>
										</a>
									</td>
									<td class="day">2023.06.23</td>
								</tr>
							
							</tbody>
						</table>
						


<!-- PAGING start -->
<div class="paging">
	<ul>
		<li class="first_page_btn">
			<a href="javascript:_goPage(1)"><span>첫 페이지</span></a>
		</li>
		<li class="prev_page_btn">
			<a href="javascript:_goPage(1)"><span>이전 페이지</span></a>
		</li>
		<li class="on"><a href="javascript:_goPage(1)">1</a></li><li class=""><a href="javascript:_goPage(2)">2</a></li><li class=""><a href="javascript:_goPage(3)">3</a></li>
		<li class="next_page_btn">
			<a href="javascript:_goPage(2)"><span>다음 페이지</span></a>
		</li>
		<li class="last_page_btn">
			<a href="javascript:_goPage(3)"><span>마지막 페이지</span></a>
		</li>
	</ul>
</div>
<script>
	function _goPage(num) {
		var f = document.listForm;
		f.pageNum.value = num;
		f.submit();
	}
	{
// 		$( "#paging td" ).click(function(e) {
// 			var page = $(e.currentTarget).attr( "data-page" );
// 			goPage( page );
// 		});
	}
</script>

<!-- PAGING end -->
					</div>
				</form>
			</div>
		</div>
		

	</div>
	


<!-- footer -->
<jsp:include page="../include/footer.jsp"/>


<script src="/_resource/js/common.js"></script>

<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
    <div style="display:inline;">
        <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/923468141/?guid=ON&amp;script=0"/>
    </div>
</noscript>


</div>

</body></html>