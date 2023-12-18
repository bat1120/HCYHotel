<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page info=""%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="ko">
<head>
<title>회원가입</title>
<meta name="naver-site-verification"
	content="86455485e27cab6986d130e4c3b90c5b516820d1">
<meta name="Description"
	content="개인/기업 회원가입 안내: 취업 확률을 높이는 사람인 만의 특별한 개인회원 서비스, 기본 이력서/명품 이력서/직종별 이력서 등 다양하고 쉬운 이력서 작성, 무료 입사지원 통계 서비스, 무료 이력서 강조 효과 서비스. 채용효과를 높이는 사람인 만의 특별한 기업회원 서비스 - 최대 10개까지 채용공고 무료 등록, 채용업무 효율화 - 편리하고 간편한 지원자 관리, 명품 인재가 가득한 인재정보 열람 상품, 높은 채용효과를 보장하는 저렴하고 다양한 채용광고 상품.">
<meta name="naver" content="nosublinks">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Language" content="ko-KR">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link href="http://localhost/HCYHotel/common/user/css/pattern.css" media="all"
	rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/etc.css" media="all"
	rel="stylesheet" type="text/css">
<link href="http://localhost/HCYHotel/common/user/css/member_join.css" media="all"
	rel="stylesheet" type="text/css">
<link href="/favicon.ico?ver=3" rel="favicon">
<link
	href="//www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.css"
	media="screen" rel="stylesheet" type="text/css">
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-GR2XRGQ0FK&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/gtm/js?id=GTM-KN35GK2&amp;cid=1713712516.1694412036"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/plugins/ua/linkid.js"></script>
<script async=""
	src="https://www.googletagmanager.com/gtm.js?id=GTM-MK2GBBH"></script>
<script
	src="https://connect.facebook.net/signals/config/2188045911206841?v=2.9.138&amp;r=stable&amp;domain=www.saramin.co.kr"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script async="" src="https://www.google-analytics.com/analytics.js"></script>
<script async="" src="//static.airbridge.io/sdk/latest/airbridge.min.js"></script>
<script type="text/javascript"
	src="//www.saraminimage.co.kr/js/libs/jquery-1.8.3.min.js"></script>
<script type="text/javascript"
	src="/js/libs/secure/PasswordStrength.js?v=20231130103248"></script>
<script type="text/javascript"
	src="//www.saraminimage.co.kr/js/libs/swiper_4.4.6/swiper.min.js"></script>
<script type="text/javascript"
	src="/js/libs/placeholders/jquery.placeholder.js"></script>
<script type="text/javascript" src="/js/join/join.js?v=20231130103248"></script>
<script type="text/javascript"
	src="/js/join/join-person.js?v=20231130103248"></script>
<script type="text/javascript"
	src="/js/join/smsEmailConfirm.js?v=20231130103248"></script>
<meta http-equiv="origin-trial"
	content="AwnOWg2dzaxHPelVjqOT/Y02cSxnG2FkjXO7DlX9VZF0eyD0In8IIJ9fbDFZGXvxNvn6HaF51qFHycDGLOkj1AUAAACAeyJvcmlnaW4iOiJodHRwczovL2NyaXRlby5jb206NDQzIiwiZmVhdHVyZSI6IlByaXZhY3lTYW5kYm94QWRzQVBJcyIsImV4cGlyeSI6MTY5NTE2Nzk5OSwiaXNTdWJkb21haW4iOnRydWUsImlzVGhpcmRQYXJ0eSI6dHJ1ZX0=">
</head>
<body cz-shortcut-listen="true">
<!-- jQuery CDN -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<script>
    (function(a_,i_,r_,_b,_r,_i,_d,_g,_e){if(!a_[_b]){var d={queue:[]};_r.concat(_i).forEach(function(a){var i_=a.split("."),a_=i_.pop();i_.reduce(function(a,i_){return a[i_]=a[i_]||{}},d)[a_]=function(){d.queue.push([a,arguments])}});a_[_b]=d;a_=i_.getElementsByTagName(r_)[0];i_=i_.createElement(r_);i_.onerror=function(){d.queue.filter(function(a){return 0<=_i.indexOf(a[0])}).forEach(function(a){a=a[1];a=a[a.length-1];"function"===typeof a&&a("error occur when load airbridge")})};i_.async=1;i_.src="//static.airbridge.io/sdk/latest/airbridge.min.js";a_.parentNode.insertBefore(i_,a_)}})(window,document,"script","airbridge","init fetchResource setBanner setDownload setDownloads openDeeplink setDeeplinks sendWeb setUserAgent setUserAlias addUserAlias setMobileAppData setUserId setUserEmail setUserPhone setUserAttributes clearUser setDeviceIFV setDeviceIFA setDeviceGAID events.send events.signIn events.signUp events.signOut events.purchased events.addedToCart events.productDetailsViewEvent events.homeViewEvent events.productListViewEvent events.searchResultViewEvent".split(" "),["events.wait"]);
    var airbridgeWebKey = 'ca79046f9e144d959f976fe69cdcb672';
    var appName = 'saramin';
    airbridge.init({
        app: appName,
        webToken: airbridgeWebKey,
        useProtectedAttributionWindow : true,
        utmParsing: true,
        cookieWindow: 1,
        forceFirstPartyCookieID: true
    });
    </script>
	<script>

  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-12546634-1', 'saramin.co.kr');
  ga('require', 'GTM-KN35GK2');
  ga('require','displayfeatures');
  ga('require', 'linkid');
  ga('send', 'pageview');

</script>


	<%-- <header id="sri_header" class="join_header">
		<div class="area_logo">
			<a href="/zf_user" class="link_saramin_logo" aria-label="사람인"> <svg
					xmlns="http://www.w3.org/2000/svg" width="105" height="21"
					viewBox="0 0 105 21" fill="none" aria-hidden="true">
            <path fill-rule="evenodd" clip-rule="evenodd"
						d="M43.132 16.5434L43.0995 16.5634C42.8572 16.7137 42.1187 17.1717 40.7773 17.1717C39.3862 17.1717 38.5878 16.5856 38.5878 15.5634C38.5878 14.6288 39.4396 14.0004 40.7067 14.0004C41.6088 14.0004 42.2839 14.1423 43.0818 14.3715L43.132 14.3855V16.5434ZM36.4668 9.05678C36.4668 9.48237 36.6392 9.84036 36.9522 10.0646C37.3387 10.3406 37.9034 10.3846 38.5424 10.1871C39.1179 10.0076 39.9811 9.79319 40.8249 9.79319C42.4418 9.79319 43.1319 10.3497 43.1319 11.6546V12.3618L43.0457 12.3418C42.1774 12.1411 41.4826 11.9989 40.4481 11.9989C36.0107 11.9989 35.666 14.8153 35.666 15.6781C35.666 17.6015 36.9533 19.6565 40.5656 19.6565C43.3854 19.6565 45.052 18.6977 45.4956 18.4037C45.9005 18.1401 46.0303 17.8912 46.0303 17.3794V11.7469C46.0303 8.69492 44.3027 7.14783 40.8952 7.14783C39.4712 7.14783 38.1165 7.44246 37.4606 7.71703C36.8011 7.98209 36.4668 8.43302 36.4668 9.05678Z"
						fill="#4876EF"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
						d="M77.8228 8.48966L77.7791 8.444C76.9299 7.55983 75.8608 7.14783 74.4142 7.14783C72.8569 7.14783 71.2814 7.63522 70.1987 8.45179C69.7639 8.76186 69.6182 9.03334 69.6182 9.52993V18.1299C69.6182 18.9575 70.3037 19.6565 71.1156 19.6565C71.9698 19.6565 72.6138 19.0003 72.6138 18.1299V10.6247L72.6908 10.5766C72.9211 10.4297 73.5335 10.0389 74.5542 10.0389C75.8576 10.0389 76.5187 10.7624 76.5187 12.1885V18.1299C76.5187 18.9575 77.2046 19.6565 78.0165 19.6565C78.8564 19.6565 79.5143 18.9858 79.5143 18.1299V10.6247L79.5917 10.5766C79.822 10.4297 80.4341 10.0389 81.4555 10.0389C82.7406 10.0389 83.4196 10.79 83.4196 12.2115V18.1299C83.4196 18.9575 84.0947 19.6565 84.8934 19.6565C85.7469 19.6565 86.4156 18.9858 86.4156 18.1299V12.1425C86.4156 8.78168 84.8465 7.14783 81.6188 7.14783C80.2589 7.14783 78.9635 7.59876 77.8722 8.45073L77.8228 8.48966Z"
						fill="#4876EF"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
						d="M64.2181 16.5434L64.1856 16.5634C63.9436 16.7137 63.2059 17.1717 61.8638 17.1717C60.4723 17.1717 59.6743 16.5856 59.6743 15.5634C59.6743 14.6288 60.5256 14.0004 61.7931 14.0004C62.6949 14.0004 63.3703 14.1423 64.1679 14.3715L64.2181 14.3855V16.5434ZM57.5529 9.05678C57.5529 9.48237 57.7257 9.84001 58.0383 10.0646C58.4252 10.3406 58.9895 10.3846 59.6285 10.1871C60.204 10.0076 61.0672 9.79319 61.911 9.79319C63.5279 9.79319 64.218 10.3497 64.218 11.6546V12.3618L64.1319 12.3418C63.2636 12.1411 62.5687 11.9989 61.5342 11.9989C57.0968 11.9989 56.7521 14.8153 56.7521 15.6781C56.7521 17.6015 58.0394 19.6565 61.6517 19.6565C64.4715 19.6565 66.1382 18.6977 66.582 18.4037C66.9866 18.1404 67.1164 17.8916 67.1164 17.3794V11.7469C67.1164 8.69492 65.3889 7.14783 61.9817 7.14783C60.557 7.14783 59.2026 7.44246 58.5471 7.71703C57.8872 7.98209 57.5529 8.43267 57.5529 9.05678Z"
						fill="#4876EF"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
						d="M54.6265 7.33082C54.1659 7.21826 53.3949 7.14783 52.6149 7.14783C50.0202 7.14783 48.5321 8.56364 48.5321 11.0328V18.2344C48.5321 19.0187 49.1835 19.6565 49.9837 19.6565C49.9971 19.6548 50.004 19.6537 50.0115 19.6534L50.0368 19.6555H50.0383C50.8909 19.6555 51.5539 18.9957 51.5539 18.1529V11.6108C51.5539 10.5794 51.9773 10.0655 52.8487 10.0393C53.2464 10.0255 53.5799 10.091 53.9007 10.1536C54.1496 10.2017 54.3848 10.2474 54.6208 10.2474C55.5872 10.2474 56.0373 9.41915 56.0373 8.85955C56.0373 8.11306 55.5366 7.57009 54.6265 7.33082Z"
						fill="#4876EF"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
						d="M30.7968 12.446L28.9436 12.0679C27.9063 11.8371 27.4644 11.4971 27.4644 10.9309C27.4644 10.6029 27.6355 9.84022 29.2186 9.84022C29.8752 9.84022 30.8244 10.0675 31.4268 10.3682C32.1774 10.7556 32.9513 10.6874 33.3982 10.1954C33.6478 9.9102 33.7793 9.50942 33.7482 9.12489C33.7277 8.86689 33.6266 8.49579 33.2635 8.19573C32.5069 7.56876 30.9291 7.14783 29.3367 7.14783C26.4306 7.14783 24.5526 8.66968 24.5526 11.0253C24.5526 13.2335 26.4176 14.1743 27.982 14.5744C28.5183 14.7118 28.7863 14.7599 29.0967 14.8158C29.319 14.8557 29.5492 14.8974 29.9056 14.9762C30.8951 15.2116 31.3356 15.5767 31.3356 16.1602C31.3356 16.5839 31.0966 17.2947 29.4926 17.2947C28.3818 17.2947 27.1808 16.983 26.4331 16.5005C26.1312 16.3083 25.8218 16.2139 25.5302 16.2139C25.1194 16.2139 24.7439 16.4009 24.4731 16.7667C24.0595 17.3099 24.1871 18.1941 24.745 18.6589C25.2314 19.0664 26.6583 20.0139 29.3926 20.0139C32.2898 20.0139 34.2364 18.3892 34.2364 15.9707C34.2364 14.1315 33.1111 12.9783 30.7968 12.446Z"
						fill="#4876EF"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
						d="M90.3468 5.71826C89.5323 5.71826 88.9174 6.37066 88.9174 7.23595V15.2801C88.9174 16.1028 89.5719 16.7974 90.3468 16.7974C91.1483 16.7974 91.7765 16.1309 91.7765 15.2801V7.23595C91.7765 6.38509 91.1483 5.71826 90.3468 5.71826Z"
						fill="#4876EF"></path>
            <mask id="mask0_2445_27765" style="mask-type:alpha"
						maskUnits="userSpaceOnUse" x="88" y="0" width="5" height="5">
                <path fill-rule="evenodd" clip-rule="evenodd"
						d="M88.2026 0H92.4913V4.2887H88.2026V0Z" fill="white"></path>
            </mask>
            <g mask="url(#mask0_2445_27765)">
                <path fill-rule="evenodd" clip-rule="evenodd"
						d="M90.347 0C89.1244 0 88.2026 0.908848 88.2026 2.11382C88.2026 3.33362 89.1445 4.2887 90.347 4.2887C91.5094 4.2887 92.4913 3.29303 92.4913 2.11382C92.4913 0.92826 91.5495 0 90.347 0Z"
						fill="#4876EF"></path>
            </g>
            <mask id="mask1_2445_27765" style="mask-type:alpha"
						maskUnits="userSpaceOnUse" x="94" y="7" width="11" height="13">
                <path fill-rule="evenodd" clip-rule="evenodd"
						d="M94.2783 7.14783H105V19.6565H94.2783V7.14783Z" fill="white"></path>
            </mask>
            <g mask="url(#mask1_2445_27765)">
                <path fill-rule="evenodd" clip-rule="evenodd"
						d="M99.7299 7.14783C96.7401 7.14783 95.1152 8.19659 94.8134 8.40684C94.4133 8.68434 94.2783 8.95547 94.2783 9.48392V18.1296C94.2783 18.9571 94.9679 19.6565 95.7843 19.6565C96.6432 19.6565 97.2907 19 97.2907 18.1296V10.6247L97.3228 10.6045C97.7618 10.332 98.6524 10.0389 99.6363 10.0389C100.773 10.0389 101.988 10.6279 101.988 12.2809V18.1296C101.988 18.9571 102.678 19.6565 103.494 19.6565C104.353 19.6565 105 19 105 18.1296V12.1421C105 8.87477 103.178 7.14783 99.7299 7.14783Z"
						fill="#4876EF"></path>
            </g>
            <circle cx="3.75261" cy="6.65767" r="3.75261" fill="#4876EF"></circle>
            <circle cx="13.7596" cy="6.65771" r="3.75261" fill="#B4C0D3"></circle>
            <circle cx="3.75261" cy="16.6647" r="3.75261" fill="#B4C0D3"></circle>
            <circle cx="13.7596" cy="16.6647" r="3.75261" fill="#00D3AB"></circle>
        </svg>
			</a> <span class="link_speed_logo" aria-label="개인 회원가입"> <svg
					width="101" height="18" viewBox="0 0 101 18" fill="none"
					xmlns="http://www.w3.org/2000/svg">
            <path
						d="M5.566 2.346C6.094 2.346 6.454 2.442 6.646 2.634C6.85 2.826 6.952 3.18 6.952 3.696V5.604C6.952 6.144 6.934 6.624 6.898 7.044C6.862 7.452 6.778 7.83 6.646 8.178C6.526 8.526 6.346 8.856 6.106 9.168C5.878 9.48 5.566 9.816 5.17 10.176C4.786 10.524 4.306 10.914 3.73 11.346C3.166 11.766 2.482 12.258 1.678 12.822C1.498 12.954 1.3 12.99 1.084 12.93C0.868 12.87 0.694 12.756 0.562 12.588C0.442 12.42 0.376 12.222 0.364 11.994C0.364 11.754 0.46 11.568 0.652 11.436C1.372 10.944 1.984 10.518 2.488 10.158C2.992 9.786 3.412 9.456 3.748 9.168C4.096 8.868 4.366 8.598 4.558 8.358C4.75 8.106 4.894 7.842 4.99 7.566C5.098 7.29 5.164 6.99 5.188 6.666C5.212 6.342 5.224 5.964 5.224 5.532V4.272C5.224 4.032 5.098 3.912 4.846 3.912H1.192C0.964 3.912 0.796 3.834 0.688 3.678C0.592 3.522 0.544 3.342 0.544 3.138C0.544 2.922 0.592 2.736 0.688 2.58C0.796 2.424 0.964 2.346 1.192 2.346H5.566ZM13.378 0.995999C13.594 0.995999 13.786 1.056 13.954 1.176C14.134 1.284 14.224 1.458 14.224 1.698V15.846C14.224 16.086 14.134 16.26 13.954 16.368C13.786 16.488 13.594 16.548 13.378 16.548C13.174 16.548 12.982 16.488 12.802 16.368C12.634 16.26 12.55 16.086 12.55 15.846V8.052H10.516V15.09C10.516 15.33 10.426 15.504 10.246 15.612C10.078 15.732 9.886 15.792 9.67 15.792C9.466 15.792 9.274 15.732 9.094 15.612C8.926 15.504 8.842 15.33 8.842 15.09V1.878C8.842 1.638 8.926 1.464 9.094 1.356C9.274 1.236 9.466 1.176 9.67 1.176C9.886 1.176 10.078 1.236 10.246 1.356C10.426 1.464 10.516 1.638 10.516 1.878V6.522H12.55V1.698C12.55 1.458 12.634 1.284 12.802 1.176C12.982 1.056 13.174 0.995999 13.378 0.995999ZM21.3368 1.806C22.0328 1.806 22.6448 1.914 23.1728 2.13C23.7008 2.346 24.1388 2.64 24.4868 3.012C24.8348 3.384 25.0928 3.828 25.2608 4.344C25.4408 4.848 25.5308 5.394 25.5308 5.982C25.5308 6.582 25.4408 7.14 25.2608 7.656C25.0928 8.16 24.8348 8.598 24.4868 8.97C24.1388 9.342 23.7008 9.636 23.1728 9.852C22.6448 10.068 22.0328 10.176 21.3368 10.176C20.6288 10.176 20.0108 10.068 19.4828 9.852C18.9668 9.636 18.5348 9.342 18.1868 8.97C17.8388 8.598 17.5748 8.16 17.3948 7.656C17.2268 7.14 17.1428 6.582 17.1428 5.982C17.1428 5.394 17.2268 4.848 17.3948 4.344C17.5748 3.828 17.8388 3.384 18.1868 3.012C18.5348 2.64 18.9668 2.346 19.4828 2.13C20.0108 1.914 20.6288 1.806 21.3368 1.806ZM21.3368 3.336C20.8928 3.336 20.5148 3.408 20.2028 3.552C19.8908 3.684 19.6328 3.876 19.4288 4.128C19.2368 4.368 19.0928 4.65 18.9968 4.974C18.9128 5.286 18.8708 5.622 18.8708 5.982C18.8708 6.342 18.9128 6.684 18.9968 7.008C19.0928 7.332 19.2368 7.614 19.4288 7.854C19.6328 8.094 19.8908 8.286 20.2028 8.43C20.5148 8.574 20.8928 8.646 21.3368 8.646C21.7808 8.646 22.1588 8.574 22.4708 8.43C22.7828 8.286 23.0348 8.094 23.2268 7.854C23.4308 7.614 23.5748 7.332 23.6588 7.008C23.7548 6.684 23.8028 6.342 23.8028 5.982C23.8028 5.622 23.7548 5.286 23.6588 4.974C23.5748 4.65 23.4308 4.368 23.2268 4.128C23.0348 3.876 22.7828 3.684 22.4708 3.552C22.1588 3.408 21.7808 3.336 21.3368 3.336ZM29.1848 0.995999C29.4248 0.995999 29.6348 1.056 29.8148 1.176C29.9948 1.296 30.0848 1.488 30.0848 1.752V12.408C30.0848 12.672 29.9948 12.864 29.8148 12.984C29.6348 13.104 29.4248 13.164 29.1848 13.164C28.9448 13.164 28.7348 13.104 28.5548 12.984C28.3748 12.864 28.2848 12.672 28.2848 12.408V1.752C28.2848 1.488 28.3748 1.296 28.5548 1.176C28.7348 1.056 28.9448 0.995999 29.1848 0.995999ZM20.4908 11.652C20.7188 11.652 20.9228 11.712 21.1028 11.832C21.2948 11.952 21.3908 12.144 21.3908 12.408V15.45C21.3908 15.582 21.4148 15.672 21.4628 15.72C21.5228 15.78 21.6248 15.81 21.7688 15.81H29.8688C30.0968 15.81 30.2588 15.888 30.3548 16.044C30.4628 16.2 30.5168 16.386 30.5168 16.602C30.5168 16.806 30.4628 16.986 30.3548 17.142C30.2588 17.298 30.0968 17.376 29.8688 17.376H20.9588C20.4308 17.376 20.0648 17.28 19.8608 17.088C19.6688 16.896 19.5728 16.542 19.5728 16.026V12.408C19.5728 12.144 19.6628 11.952 19.8428 11.832C20.0348 11.712 20.2508 11.652 20.4908 11.652ZM43.0296 5.298C44.2656 5.298 45.2316 5.55 45.9276 6.054C46.6236 6.546 46.9716 7.218 46.9716 8.07C46.9716 8.922 46.6236 9.6 45.9276 10.104C45.2316 10.596 44.2656 10.842 43.0296 10.842C41.7936 10.842 40.8276 10.596 40.1316 10.104C39.4476 9.6 39.1056 8.922 39.1056 8.07C39.1056 7.218 39.4476 6.546 40.1316 6.054C40.8276 5.55 41.7936 5.298 43.0296 5.298ZM43.0296 6.684C42.2616 6.684 41.6856 6.816 41.3016 7.08C40.9176 7.332 40.7256 7.662 40.7256 8.07C40.7256 8.466 40.9176 8.796 41.3016 9.06C41.6856 9.324 42.2616 9.456 43.0296 9.456C43.8096 9.456 44.3856 9.324 44.7576 9.06C45.1416 8.796 45.3336 8.466 45.3336 8.07C45.3336 7.662 45.1416 7.332 44.7576 7.08C44.3856 6.816 43.8096 6.684 43.0296 6.684ZM43.0296 1.05C43.2696 1.05 43.4796 1.11 43.6596 1.23C43.8396 1.35 43.9296 1.542 43.9296 1.806V2.85H47.2776C47.4936 2.85 47.6496 2.928 47.7456 3.084C47.8536 3.24 47.9076 3.42 47.9076 3.624C47.9076 3.828 47.8536 4.008 47.7456 4.164C47.6496 4.308 47.4936 4.38 47.2776 4.38H38.6556C38.4276 4.38 38.2596 4.308 38.1516 4.164C38.0556 4.008 38.0076 3.828 38.0076 3.624C38.0076 3.42 38.0556 3.24 38.1516 3.084C38.2596 2.928 38.4276 2.85 38.6556 2.85H42.1296V1.806C42.1296 1.542 42.2196 1.35 42.3996 1.23C42.5916 1.11 42.8016 1.05 43.0296 1.05ZM50.3916 0.995999C50.6316 0.995999 50.8416 1.056 51.0216 1.176C51.2016 1.296 51.2916 1.488 51.2916 1.752V15.792C51.2916 16.056 51.2016 16.248 51.0216 16.368C50.8416 16.488 50.6316 16.548 50.3916 16.548C50.1636 16.548 49.9596 16.488 49.7796 16.368C49.5996 16.248 49.5096 16.056 49.5096 15.792V1.752C49.5096 1.488 49.5996 1.296 49.7796 1.176C49.9596 1.056 50.1636 0.995999 50.3916 0.995999ZM43.9296 12.48C44.5776 12.456 45.2316 12.426 45.8916 12.39C46.5516 12.342 47.2236 12.288 47.9076 12.228C48.1116 12.204 48.2676 12.258 48.3756 12.39C48.4956 12.522 48.5676 12.69 48.5916 12.894C48.6156 13.098 48.5796 13.278 48.4836 13.434C48.3996 13.59 48.2556 13.68 48.0516 13.704C46.5996 13.836 45.0456 13.932 43.3896 13.992C41.7456 14.052 40.0296 14.082 38.2416 14.082C38.0256 14.082 37.8636 14.004 37.7556 13.848C37.6596 13.692 37.6116 13.512 37.6116 13.308C37.6116 13.104 37.6596 12.93 37.7556 12.786C37.8636 12.642 38.0256 12.57 38.2416 12.57C38.8896 12.57 39.5376 12.57 40.1856 12.57C40.8336 12.57 41.4876 12.558 42.1476 12.534V10.104H43.9296V12.48ZM59.4124 1.302C60.8404 1.302 61.9084 1.584 62.6164 2.148C63.3244 2.7 63.6784 3.42 63.6784 4.308C63.6784 5.196 63.3244 5.922 62.6164 6.486C61.9084 7.038 60.8404 7.314 59.4124 7.314C57.9844 7.314 56.9164 7.038 56.2084 6.486C55.5124 5.934 55.1644 5.208 55.1644 4.308C55.1644 3.408 55.5124 2.682 56.2084 2.13C56.9164 1.578 57.9844 1.302 59.4124 1.302ZM59.4124 2.724C58.5244 2.724 57.8764 2.874 57.4684 3.174C57.0604 3.474 56.8564 3.852 56.8564 4.308C56.8564 4.764 57.0604 5.142 57.4684 5.442C57.8764 5.742 58.5244 5.892 59.4124 5.892C60.3004 5.892 60.9484 5.742 61.3564 5.442C61.7764 5.142 61.9864 4.764 61.9864 4.308C61.9864 3.852 61.7764 3.474 61.3564 3.174C60.9484 2.874 60.3004 2.724 59.4124 2.724ZM66.7744 0.995999C67.0144 0.995999 67.2244 1.056 67.4044 1.176C67.5844 1.296 67.6744 1.488 67.6744 1.752V12.948C67.6744 13.212 67.5844 13.404 67.4044 13.524C67.2244 13.644 67.0144 13.704 66.7744 13.704C66.5464 13.704 66.3424 13.644 66.1624 13.524C65.9824 13.404 65.8924 13.212 65.8924 12.948V12.12H63.0124C62.8084 12.12 62.6524 12.054 62.5444 11.922C62.4484 11.778 62.4004 11.604 62.4004 11.4C62.4004 11.196 62.4484 11.022 62.5444 10.878C62.6524 10.734 62.8084 10.662 63.0124 10.662H65.8924V1.752C65.8924 1.488 65.9824 1.296 66.1624 1.176C66.3424 1.056 66.5464 0.995999 66.7744 0.995999ZM64.2544 8.052C64.4584 8.028 64.6204 8.082 64.7404 8.214C64.8604 8.334 64.9264 8.502 64.9384 8.718C64.9624 8.922 64.9264 9.102 64.8304 9.258C64.7464 9.414 64.6024 9.504 64.3984 9.528C63.7744 9.612 63.1024 9.684 62.3824 9.744C61.6744 9.792 60.9304 9.834 60.1504 9.87V11.994C60.1504 12.234 60.0604 12.414 59.8804 12.534C59.7124 12.642 59.5024 12.696 59.2504 12.696C59.0104 12.696 58.8004 12.642 58.6204 12.534C58.4524 12.414 58.3684 12.234 58.3684 11.994V9.924C57.1084 9.96 55.8604 9.978 54.6244 9.978C54.4084 9.978 54.2464 9.906 54.1384 9.762C54.0424 9.618 53.9944 9.444 53.9944 9.24C53.9944 9.036 54.0424 8.862 54.1384 8.718C54.2464 8.562 54.4084 8.484 54.6244 8.484C56.1364 8.484 57.7144 8.46 59.3584 8.412C61.0144 8.364 62.6464 8.244 64.2544 8.052ZM57.5584 12.984C57.7864 12.984 57.9904 13.044 58.1704 13.164C58.3624 13.284 58.4584 13.476 58.4584 13.74V15.504C58.4584 15.636 58.4824 15.732 58.5304 15.792C58.5904 15.852 58.6924 15.882 58.8364 15.882H67.4764C67.6924 15.882 67.8484 15.954 67.9444 16.098C68.0524 16.254 68.1064 16.434 68.1064 16.638C68.1064 16.842 68.0524 17.022 67.9444 17.178C67.8484 17.334 67.6924 17.412 67.4764 17.412H58.0264C57.4984 17.412 57.1324 17.316 56.9284 17.124C56.7364 16.932 56.6404 16.578 56.6404 16.062V13.74C56.6404 13.476 56.7304 13.284 56.9104 13.164C57.1024 13.044 57.3184 12.984 57.5584 12.984ZM76.8393 2.238C77.3673 2.238 77.7273 2.334 77.9193 2.526C78.1233 2.718 78.2253 3.072 78.2253 3.588V5.586C78.2253 6.09 78.1953 6.546 78.1353 6.954C78.0753 7.35 77.9613 7.728 77.7933 8.088C77.6253 8.448 77.3913 8.802 77.0913 9.15C76.8033 9.486 76.4193 9.846 75.9393 10.23C75.4713 10.602 74.9013 11.01 74.2293 11.454C73.5573 11.898 72.7653 12.402 71.8533 12.966C71.6493 13.086 71.4453 13.11 71.2413 13.038C71.0373 12.954 70.8753 12.828 70.7553 12.66C70.6353 12.492 70.5753 12.294 70.5753 12.066C70.5873 11.838 70.6953 11.658 70.8993 11.526C71.7393 11.01 72.4593 10.56 73.0593 10.176C73.6593 9.78 74.1633 9.426 74.5713 9.114C74.9913 8.79 75.3213 8.496 75.5613 8.232C75.8013 7.956 75.9873 7.686 76.1193 7.422C76.2513 7.146 76.3353 6.858 76.3713 6.558C76.4073 6.246 76.4253 5.898 76.4253 5.514V4.164C76.4253 4.032 76.3953 3.942 76.3353 3.894C76.2873 3.834 76.1913 3.804 76.0473 3.804H71.4033C71.1753 3.804 71.0073 3.726 70.8993 3.57C70.8033 3.414 70.7553 3.234 70.7553 3.03C70.7553 2.814 70.8033 2.628 70.8993 2.472C71.0073 2.316 71.1753 2.238 71.4033 2.238H76.8393ZM82.0593 0.995999C82.2993 0.995999 82.5093 1.056 82.6893 1.176C82.8693 1.296 82.9593 1.488 82.9593 1.752V6.432H84.9393C85.1793 6.432 85.3473 6.51 85.4433 6.666C85.5513 6.81 85.6053 6.99 85.6053 7.206C85.6053 7.422 85.5513 7.608 85.4433 7.764C85.3473 7.92 85.1793 7.998 84.9393 7.998H82.9593V15.792C82.9593 16.056 82.8693 16.248 82.6893 16.368C82.5093 16.488 82.2993 16.548 82.0593 16.548C81.8193 16.548 81.6093 16.488 81.4293 16.368C81.2493 16.248 81.1593 16.056 81.1593 15.792V1.752C81.1593 1.488 81.2493 1.296 81.4293 1.176C81.6093 1.056 81.8193 0.995999 82.0593 0.995999ZM91.3681 1.626C92.0641 1.626 92.6761 1.728 93.2041 1.932C93.7321 2.124 94.1701 2.394 94.5181 2.742C94.8661 3.09 95.1241 3.504 95.2921 3.984C95.4721 4.452 95.5621 4.962 95.5621 5.514C95.5621 6.078 95.4721 6.6 95.2921 7.08C95.1241 7.548 94.8661 7.956 94.5181 8.304C94.1701 8.652 93.7321 8.928 93.2041 9.132C92.6761 9.324 92.0641 9.42 91.3681 9.42C90.6601 9.42 90.0421 9.324 89.5141 9.132C88.9981 8.928 88.5661 8.652 88.2181 8.304C87.8701 7.956 87.6061 7.548 87.4261 7.08C87.2581 6.6 87.1741 6.078 87.1741 5.514C87.1741 4.962 87.2581 4.452 87.4261 3.984C87.6061 3.504 87.8701 3.09 88.2181 2.742C88.5661 2.394 88.9981 2.124 89.5141 1.932C90.0421 1.728 90.6601 1.626 91.3681 1.626ZM91.3681 3.12C90.9241 3.12 90.5461 3.186 90.2341 3.318C89.9221 3.438 89.6641 3.612 89.4601 3.84C89.2681 4.056 89.1241 4.308 89.0281 4.596C88.9441 4.884 88.9021 5.19 88.9021 5.514C88.9021 5.838 88.9441 6.144 89.0281 6.432C89.1241 6.72 89.2681 6.978 89.4601 7.206C89.6641 7.422 89.9221 7.596 90.2341 7.728C90.5461 7.848 90.9241 7.908 91.3681 7.908C91.8121 7.908 92.1901 7.848 92.5021 7.728C92.8141 7.596 93.0661 7.422 93.2581 7.206C93.4621 6.978 93.6061 6.72 93.6901 6.432C93.7861 6.144 93.8341 5.838 93.8341 5.514C93.8341 5.19 93.7861 4.884 93.6901 4.596C93.6061 4.308 93.4621 4.056 93.2581 3.84C93.0661 3.612 92.8141 3.438 92.5021 3.318C92.1901 3.186 91.8121 3.12 91.3681 3.12ZM99.2161 0.995999C99.4561 0.995999 99.6661 1.056 99.8461 1.176C100.026 1.296 100.116 1.488 100.116 1.752V9.15C100.116 9.414 100.026 9.606 99.8461 9.726C99.6661 9.846 99.4561 9.906 99.2161 9.906C98.9761 9.906 98.7661 9.846 98.5861 9.726C98.4061 9.606 98.3161 9.414 98.3161 9.15V1.752C98.3161 1.488 98.4061 1.296 98.5861 1.176C98.7661 1.056 98.9761 0.995999 99.2161 0.995999ZM90.4681 10.68C90.6961 10.68 90.9001 10.74 91.0801 10.86C91.2721 10.98 91.3681 11.166 91.3681 11.418V12.93H98.3521V11.418C98.3521 11.166 98.4421 10.98 98.6221 10.86C98.8021 10.74 99.0001 10.68 99.2161 10.68C99.4561 10.68 99.6661 10.74 99.8461 10.86C100.026 10.98 100.116 11.166 100.116 11.418V16.152C100.116 16.668 100.014 17.022 99.8101 17.214C99.6181 17.406 99.2581 17.502 98.7301 17.502H90.9901C90.4621 17.502 90.0961 17.406 89.8921 17.214C89.7001 17.022 89.6041 16.668 89.6041 16.152V11.418C89.6041 11.166 89.6941 10.98 89.8741 10.86C90.0541 10.74 90.2521 10.68 90.4681 10.68ZM91.3681 15.648C91.3681 15.78 91.3921 15.876 91.4401 15.936C91.5001 15.996 91.6021 16.026 91.7461 16.026H97.9741C98.2261 16.026 98.3521 15.9 98.3521 15.648V14.37H91.3681V15.648Z"
						fill="#373F57"></path>
        </svg>
			</span>
		</div>

		<div class="area_util">
			<ul class="util">
				<li class="util_item"><a href="/zf_user"
					class="util_menu menu_saramin">사람인 홈</a></li>
			</ul>
		</div>
	</header> --%>
	<!-- header -->
	<jsp:include page="../include/header.jsp"/>
	
  <script>
    $(document).ready(function() {
      $("#frm").submit(function(event) {
        /* var idValue = $("#id").val().trim();
        var idMessage = $("#idCheckMsg1"); */

        var passwordValue = $("#password").val();
        var passwordMessage = $("#password1_warning_txt");

        var nameValue = $("#name").val().trim();
        var nameMessage = $("#user_nm_msg");

        var birthDateValue = $("#identifier").val().trim();
        var birthDateMessage = $("#cyr_msg");

        var telValue = $("#tel").val().replace(/\s/g, "");
        var telMessage = $("#msg_cell");

        var emailValue = $("#sms_email_id").val().trim();
        var emailMessage = $("#sms_msg_email1");

        var agreeAllChecked = $("#agreeAllPersonal").prop("checked");
        var agree1Checked = $("#agree_rule1").prop("checked");
        var agree2Checked = $("#agree_take1").prop("checked");

       

        /* // 아이디 유효성 검사
        if (!/^[a-zA-Z0-9_]{4,20}$/.test(idValue)) {
          $("#idCheckMsg1").show();
          event.preventDefault();
          return;
        } else {
          $("#idCheckMsg1").hide();
        } */

        // 비밀번호 유효성 검사
        if (
          !/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/.test(
            passwordValue
          )
        ) {
          $("#password1_warning_txt").show();
          event.preventDefault();
          return;
        } else {
          $("#password1_warning_txt").hide();
        }

        // 이름 유효성 검사
        if (!/^[가-힣]+$/.test(nameValue)) {
          $("#user_nm_msg").show();
          event.preventDefault();
          return;
        } else {
          $("#user_nm_msg").hide();
        }

        // 생년월일 유효성 검사
        if (!/^\d{8}$/.test(birthDateValue)) {
          $("#cyr_msg").show();
          event.preventDefault();
          return;
        } else {
          $("#cyr_msg").hide();
        }

        // 휴대폰 번호 유효성 검사
        if (!/^\d{3}-\d{4}-\d{4}$/.test(telValue)) {
          $("#msg_cell").show();
          event.preventDefault();
          return;
        } else {
          $("#msg_cell").hide();
        }
        
    	 // 이메일 유효성 검사
        if (!/^[a-zA-Z0-9]+@[a-zA-Z]+/.test(emailValue)) {
          $("#sms_msg_email1").show();
          event.preventDefault();
          return;
        } else {
          $("#sms_msg_email1").hide();
        }


        // 전체 동의 및 필수 약관 동의 검사
        if (!agreeAllChecked && (!agree1Checked || !agree2Checked)) {
          alert("모든 약관에 동의해주세요.");
          event.preventDefault();
          return;
        }

        // 모든 유효성 검사를 통과하면 폼 제출
        this.submit();
      });

      // 전체 동의 체크박스 변경 이벤트 핸들러
      $("#agreeAllPersonal").change(function() {
        var isChecked = $(this).prop("checked");
        $("#agree_rule1, #agree_take1").prop("checked", isChecked);
      });

      // 각 약관 체크박스 변경 이벤트 핸들러
      $("#agreeAllPersonal, #agree_rule1, #agree_take1").change(function() {
        var agreeAllChecked = $("#agreeAllPersonal").prop("checked");
        var agree1Checked = $("#agree_rule1").prop("checked");
        var agree2Checked = $("#agree_take1").prop("checked");

        if (agreeAllChecked) {
          $("#agree_rule1, #agree_take1").prop("checked", true);
        } else {
          if (agree1Checked && agree2Checked) {
            $("#agreeAllPersonal").prop("checked", true);
          } else {
            $("#agreeAllPersonal").prop("checked", false);
          }
        }
      });
    });
  </script>
  <script>
  var successMessage = "${successMessage}";
  if (successMessage) {
    alert(successMessage);
    // 로그인으로 이동
    window.location.href = "http://localhost/HCYHotel/user/login/user_login.do";
  }
</script>
<script>
$(document).ready(function() {
    $("#id").blur(function() {
        var idValue = $("#id").val().trim();

        // 아이디 유효성 검사
        if (!/^[a-zA-Z0-9_]{4,20}$/.test(idValue)) {
          $("#idCheckMsg1").text("4~20자의 영문, 숫자와 특수문자 '_'만 사용해주세요.").show();
          $("#idCheckMsg2").hide();
          return;
        } else {
          $("#idCheckMsg1").hide();
        }

        // 아이디 중복 확인
        $.ajax({
            type: "POST",
            url: "user_idDup.do", 
            data: {"id": idValue},
            dataType:"text",
            success: function(data) {
            	if (!data) {
                    console.error("서버로부터 응답이 비어있습니다.");
                    return;
                }//end if
            	if (data === "중복") {
            	    /* alert("중복된 아이디입니다."); */
            	    $("#idCheckMsg2").hide();
            	    $("#idCheckMsg1").text("이미 사용중인 ID입니다.").show();  
            	} else {
            		/* alert("사용가능한 아이디입니다."); */
            		$("#idCheckMsg1").hide();
             	    $("#idCheckMsg2").text("사용가능한 아이디에요.").show();
            	}//end else
            },
            error: function() {
                console.error("중복 확인 요청 중 에러 발생");
            }//error
        });//ajax
    });//blur
});//ready

</script>
	
	
	<div id="sri_section">
		<div id="sri_wrap">

			<div id="join_wrapper" class="join_cont_wrap">
				<div id="member_personal" class="member_cate">
					<form name="frm" id="frm" method="post"
						action="user_join.do">

						<fieldset>

							<div class="cont_division">
								<div class="write_base">
									<!-- 아이디 -->
									<div class="item">
										<label for="id"><strong>아이디</strong></label>
										<div class="TypoBox">
											<input name="id" id="id" type="text"
												class="Typo SizeL defalt" maxlength="20"
												style="ime-mode: disabled" autocapitalize="off"
												autocomplete="off"
												placeholder="4~20자리 / 영문, 숫자, 특수문자 '_'사용가능">
										</div>
										<p class="alert_column focus_txt" id="idFocusMsg"
											style="display: none">4 ~ 20자의 영문, 숫자와 특수문자 '_'만 사용해주세요.</p>
										<em class="msgInvalid" id="idCheckMsg1" style="display: none">이미 사용중인 ID입니다.</em>
										<!-- 오류 시 텍스트 -->
										<p class="alert_column good_txt" id="idCheckMsg2"
											style="display: none">사용가능한 아이디에요.</p>
									</div>

									<!-- 비밀번호 -->
									<div class="item">
										<label for="password"><strong>비밀번호</strong></label>
										<div class="TypoBox pass_box">
					
											<input autocapitalize="off" name="password"
												class="Typo SizeL defalt" id="password" type="password"
												maxlength="16" autocomplete="off"
												placeholder="8~16자리/영문 대소문자, 숫자, 특수문자 조합">
											<button type="button" toggle="#password1"
												id="masking_password" class="toggle_password field_eye on"
												style="display: none;"></button>
										</div>

										<p class="alert_column focus_txt" id="password1FocusMsg"
											style="display: none">8~16자리 영문 대소문자, 숫자, 특수문자 중 3가지 이상
											조합으로 올바르게 입력하세요</p>
										<!-- focus 시 텍스트 -->
										<em class="msgInvalid" id="password1_warning_txt"
											style="display: none"><span>8~16자리 영문 대소문자, 숫자,
												특수문자 중 3가지 이상 조합으로 올바르게 입력하세요</span></em>
										<p class="alert_column good_txt" id="password1_good_txt"
											style="display: none"></p>
										<p class="pass_safety" id="pw_strnegth_level"
											style="display: none"></p>
									</div>

									<!-- 이름 -->
									<div class="item">
										<label for="name"><strong>이름</strong></label>
										<div class="TypoBox">
											<input type="text" name="name" id="name"
												class="Typo SizeL defalt" style="ime-mode: active"
												autocapitalize="off" placeholder="이름 입력">
										</div>
										<em class="msgInvalid" id="user_nm_msg" name="user_nm_msg"
											style="display: none">이름을 올바르게 입력하세요</em>
									</div>

									<!-- 생년월일 -->
									<div class="item">
										<label for="identifier"><strong>생년월일</strong></label>
										<div class="TypoBox">
											<input type="number" name="identifier" id="identifier"
												maxlength="8" autocapitalize="off" placeholder="YYYYMMDD"
												class="Typo SizeL defalt">
										</div>
										<em class="msgInvalid" id="cyr_msg" style="display: none">
											<span>YYYYMMDD 입력 형식을 확인해주세요.</span>
										</em>
										<div class="wrap_collection_basis">
											<button type="button" class="btn_link"
												aria-describeby="tootip_content" id="birth_date_msg"
												style="cursor: pointer; display: none" aria-expanded="false">만
												15세 이상인지 확인이 필요해요</button>
											<!--툴팁 노출 시 aria-expanded="ture"로 변경-->
											<div class="TipBox social_tooltip Click" id="tootip_content">
												<div class="TipCont BottomCenter"
													id="collectionBasisContents">
													<span class="Tail"></span>
													<div class="TipTxt">
														취직 최저 연령에 대한 제한<br> (근로기준법 제 64조 1항)
													</div>
													<button type="button" class="BtnClose btnClose"
														id="close_birth_date_msg">
														<span class="blind">닫기</span>
													</button>
												</div>
											</div>
										</div>
									</div>

									<input type="hidden" name="cellnum" id="cellnum"> <input
										type="hidden" name="email_id" id="email_id">

									<!-- 휴대폰 인증 -->

										<div class="item">
										<label for="tel"><strong>휴대폰</strong></label>
										<div class="TypoBox">
											<input type="text" name="tel" id="tel"
												class="Typo SizeL defalt" style="ime-mode: active"
												autocapitalize="off" placeholder="010-0000-0000">
										</div>
												<em class="msgInvalid" id="msg_cell" style="display: none;">잘못된 휴대폰 번호입니다. 휴대폰 번호를 정확하게 입력해주세요.</em>
									</div>
										<!-- <div class="input_collect TypoBox">
											<input type="hidden" name="sms_confirm_complete" value="n"
												id="sms_confirm_complete"> <input type="text"
												id="sms_cellnum" name="tmp_cellnum"
												placeholder="'-' 빼고 숫자만 입력"
												class="Typo SizeL join_input defalt">
										</div> -->
										
								<!-- 휴대폰 인증시 이메일 -->
									<li class="item identify_phone"><label for="sms_email_id"><strong>이메일</strong></label>
										<div class="TypoBox">
											<input type="text" id="sms_email_id" name="email"
												style="ime-mode: inactive" class="Typo SizeL defalt"
												placeholder="email@hotel.co.kr">
										</div> <!-- 자동리스트 영역 -->
										 <em class="msgInvalid" id="sms_msg_email1" name="email"
										style="display: none">이메일 주소를 입력해주세요.</em>
										<p class="alert_column good_txt" id="msg_email2"
											style="display: none">인증되었습니다</p>
										<div class="wrap_collection_basis"></div></li>

									<!-- 이메일 인증 -->
									<div class="item identify_mail" style="display: none;">
										<label for="email"><strong>이메일</strong></label>
									
								
									
										<em class="msgInvalid" id="mail_msg_email1" name="email"
											style="display: none">이메일 주소를 입력해주세요.</em>

									</div>

									
								</div>

								<!-- 약관 -->
								<div class="cont_division">
									<span class="terms_agree"><strong>약관</strong></span>
									<div class="agree_box">
										<ul class="agree_article">
											<li>
												<div class="InpBox">
													<span class="Chk SizeL"> <input type="checkbox"
														class="check_mail" id="agreeAllPersonal"> <label
														class="check_all check_off Lbl" for="agreeAllPersonal">
															<strong class="all_agree">전체 동의</strong>
													</label> <input type="hidden" name="hidden_check_all" value="0"
														id="hidden_check_all">
													</span>
												</div>
												<p class="agree_txt">위치기반 서비스 이용약관(선택), 마케팅 정보 수신
													동의(이메일,SMS/MMS)(선택) 동의를 포함합니다.</p>
											</li>
										</ul>
										<ul class="agree_article depth2">
											<li>
												<div class="agree_desc">
													<div class="InpBox">
														<span class="Chk"> <input type="checkbox"
															id="agree_rule1"> <label
															class="Lbl check_custom check_off" for="agree_rule1">
																<span><strong>(필수) 개인회원 약관에 동의</strong></span>
														</label>
														</span>

													</div>
												</div> <!-- <a href="/zf_user/help/terms-of-service/person"
												class="view_indetail" target="_blank"> <span
													class="blind">개인회원 약관 상세보기</span>
											</a> -->
											</li>
											<li>
												<div class="agree_desc">
													<div class="InpBox">
														<span class="Chk"> <input type="checkbox"
															id="agree_take1"> <label
															class="Lbl check_custom check_off" for="agree_take1">
																<span><strong>(필수) 개인정보 수집 및 이용에 동의</strong></span>
														</label>
														</span>

													</div>
												</div> <!-- <a id="popupClausePrivacyPerson"
												href="/zf_user/popup/privacy-policy?category=person_privacy_req"
												class="view_indetail popup_clause_open" target="_blank">
													<span class="blind">개인정보 수집 및 이용에 동의 약관 상세보기</span>
											</a> -->
											</li>

										</ul>
									</div>
								</div>

								<div class="btn_join">
									<button type="button" id="btn_submit"
										class="inp_join BtnType SizeL defalt ga_data_layer btn_input_complete"
										data-ga_data_layer="ga_lead|member_join|join_pc|step_2"
										>회원가입 완료</button>
								</div>
							</div>
						</fieldset>
					</form>

					<!-- 중복가입 알림 레이어 -->
					<div class="member_nudge ModalBox" id="p_member_nudge"
						style="display: none">
						<h3 class="Tit">이미 가입된 정보입니다</h3>
						<div class="ModalCont">
							<p class="txt_info">가입된 아이디에 회원님의 소중한 이력서와 입사지원 내역 등이 있을 수
								있어요!</p>
							<div class="id_already">
								<span>아이디</span> <strong id="p_already_id">%nbsp;</strong>
							</div>
							<div class="BtmArea">
								<a href="/zf_user/helpdesk/idpw-find"
									class="BtnType SizeM search_user">아이디/비밀번호 찾기</a> <a
									href="/zf_user/auth" class="BtnType SizeM">로그인</a>
							</div>
						</div>
						<button type="button" class="btnClose BtnClose close_btn"
							onclick="$('#p_member_nudge').hide();$('#dimmed').hide();">
							<span class="blind">닫기</span>
						</button>
					</div>
					<div id="dimmed" class="sri_dimmed" style="display: none"></div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
(function() {
  var pszProto = (("https:" == document.location.protocol) ? "https://www.saramin.co.kr/js/" : "//www.saraminimage.co.kr/js/");
  document.write(unescape("%3Cscript src='" + pszProto + "wl6.js' type='text/javascript'%3E%3C/script%3E"));
})();
</script>
	<script src="https://www.saramin.co.kr/js/wl6.js"
		type="text/javascript"></script>

	<script type="text/javascript">
    // 1.
_n_sid = "saramin";
_n_uid_cookie = "UID";
_n_info1_cookie = "Mtype";
n_logging();
</script>

	<script>
    (function ($, window) {
        var _self = [],
            MetaPixelManager = {
                init: function () {
                    _self = this;
                    _self.initVariable();
                    _self.bindEvent();
                    _self.initMetaPixelEvent();
                },
                initVariable: function () {
                    _self.pixelId = '2188045911206841';
                    _self.hyperLink = window.location.href;
                },
                bindEvent: function () {
                    //페이지의 meta_pixel_event 바인딩
                    $(document).on('mousedown', '.meta_pixel_event', function () {
                        _self.bindSendMetaPixelEventByData(this);
                    });

                    //iframe 로드시 meta_pixel_event 바인딩 (ex, 입사지원)
                    $('iframe').on('load', function () {
                        var kakaoPixelEventList = $(this).contents().find('.meta_pixel_event');
                        if (kakaoPixelEventList.length > 0) {
                            kakaoPixelEventList.on('mousedown', function () {
                                _self.bindSendMetaPixelEventByData(this);
                            });
                        }
                    });
                },
                initMetaPixelEvent: function () {
                    !function (f, b, e, v, n, t, s) {
                        if (f.fbq) return;
                        n = f.fbq = function () {
                            n.callMethod ?
                                n.callMethod.apply(n, arguments) : n.queue.push(arguments)
                        };
                        if (!f._fbq) f._fbq = n;
                        n.push = n;
                        n.loaded = !0;
                        n.version = '2.0';
                        n.queue = [];
                        t = b.createElement(e);
                        t.async = !0;
                        t.src = v;
                        s = b.getElementsByTagName(e)[0];
                        s.parentNode.insertBefore(t, s)
                    }(window, document, 'script',
                        'https://connect.facebook.net/en_US/fbevents.js');
                    fbq('init', _self.pixelId);
                    fbq('track', 'PageView');
                },
                /**
                 * data속성으로 부터 event 불러와 전송
                 * @param ele
                 */
                bindSendMetaPixelEventByData: function (ele) {
                    var data = $(ele).data('meta_pixel_event'),
                        event = '';

                    if (!!data) {
                        event = data.toString();
                    }

                    if (!event) {
                        return;
                    }

                    _self.sendMetaPixelEvent(event);
                },
                sendMetaPixelEvent: function (event) {
                    switch (event) {
                        case 'Purchase': //입사지원
                            fbq('track', event, {value: 0.00, currency: 'USD'});
                            break;
                        case 'StartTrial': //프로필 등록 완료
                            fbq('track', event, {value: 0.00, currency: 'USD', predicted_ltv: '0.00'});
                            break;
                    }
                },
            }

        MetaPixelManager.init();
    })(jQuery, window);
</script>
	<script type="text/javascript">

	function n_trackEvent(category, action, opt_label, opt_value, opt_noninteraction) {
	    var l = document.location;
	    var url = l.protocol + '//' + l.host + '/trackEvent?category=' + category + '&action=' + action;
	    var label = opt_label || '';
	    var value = opt_value || '';
	    url = url + '&opt_label=' + label + '&opt_value=' + value;
	    n_click_logging(url, l.href);
	    try {
	        _gaq.push(['_trackEvent', category, action, opt_label, opt_value, opt_noninteraction]);
	        ga('send', 'event', category, action, opt_label, opt_value, opt_noninteraction);
	    } catch (_e) {}
	}
	
	function pushDataLayer(event, category, event_flow, event_label) {
	    try {
            dataLayer.push({
                'event': event || 'ga_lead',
                'category': category || '',
                'event-flow': event_flow || '',
                'event-label': event_label || ''
            });

        }catch (e) {

        }
    }

    // 클릭 이벤트 + 구글 태그매니져 로깅
    function loggingEventAndTagManager(trackEventAttr, tagManagerAttr) {
        n_trackEvent(trackEventAttr[0], trackEventAttr[1], trackEventAttr[2], trackEventAttr[3]);
        pushDataLayer(tagManagerAttr[0], tagManagerAttr[1], tagManagerAttr[2], tagManagerAttr[3]);
    }


    function promotionPushDataLayer(log_event, log_id, log_name, log_creative, log_position) {
	    try{
            var ecommerce_type = log_event === 'promotionClick' ? 'promoClick' : 'promoView';
            var promotion_log = {};
            promotion_log[ecommerce_type] = {
                'promotions': [
                    {
                        'id': log_id,
                        'name': log_name,
                        'creative': log_creative,
                        'position': log_position
                    }
                ]
            };

            var log_data = {
                'event': log_event,
                'ecommerce': promotion_log
            };

            dataLayer.push(log_data);
        } catch (e) {

        }
    }

	
	function _hwaClick(cc) {
		n_trackEvent('ADs', 'Click-' + cc);
	}

    function applyTrackEvent(el, opt_category, opt_content, opt_ref, opt_ref_content) {

        try {
            var url         = el.href;
            var category    = opt_category || '';
            var content     = opt_content || '';
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var anchor      = '';

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_category=' + category + '&t_content=' + content + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            el.href = url;
        } catch (e) {
        }
    }

    function sriRecomLog(path, itemId, nonce) {
        try{
            var xhr = new XMLHttpRequest();
            xhr.open('POST', '/zf_user/recommend-log/logging');
            xhr.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhr.onload = function() {};
            xhr.send('path=' + path + '&itemId=' + itemId + '&nonce=' + nonce);
        } catch (e) {}
    }

    function s_trackApply(el, opt_ref, opt_ref_content, opt_ref_scnid, opt_ref_area, opt_etc) {

        try {
            var url         = el.href;
            var ref         = opt_ref || '';
            var ref_content = opt_ref_content || '';
            var ref_scnid   = opt_ref_scnid || '';
            var ref_area   = opt_ref_area || '';
            var anchor      = '';

            var opt = opt_etc || {};

            if( url.indexOf('t_ref') > 0 ) return;

            if ( url.indexOf('#') != -1 ) {
                var splitUrl = url.split('#');
                url = splitUrl[0];
                anchor = splitUrl[1];
            }

            if( url.indexOf('?') < 0 ) {
                url = url + '?t_ref=' + ref + '&t_ref_content=' + ref_content;
            } else {
                url = url + '&t_ref=' + ref + '&t_ref_content=' + ref_content;
            }

            if (!!ref_scnid) {
				url += '&t_ref_scnid=' + ref_scnid;
            }

            if (!!ref_area) {
				url += '&t_ref_area=' + ref_area;
            }

            if ( anchor != '' ) {
                url += '#' + anchor;
            }

            if (opt.constructor === Object) {
                for (k in opt) {
                    if (opt.hasOwnProperty(k)) {
                        url += '&' + k + '=' + opt[k];
                    }
                }
            }

            el.href = url;

        } catch (e) {
        }
    }
</script>


	<script type="text/javascript" src="//wcs.naver.net/wcslog.js"></script>

	<script type="text/javascript"> 
if (!wcs_add) var wcs_add={};
wcs_add["wa"] = "s_1d3a45fb0bfe";
if (!_nasa) var _nasa={};
wcs.inflow();
wcs_do(_nasa);
</script>
	<!-- Google Tag Manager -->
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
    })(window,document,'script','dataLayer','GTM-MK2GBBH');</script>
	<!-- End Google Tag Manager -->
	<!-- Google Tag Manager (noscript) -->
	<noscript>
		<iframe src="https://www.googletagmanager.com/ns.html?id=GTM-MK2GBBH"
			height="0" width="0" style="display: none; visibility: hidden"></iframe>
	</noscript>
	<!-- End Google Tag Manager (noscript) -->
	<div id="_sticky_warp" role="complementary"></div>

	<link href="http://localhost/HCYHotel/common/user/css/login.css" rel="stylesheet"
		type="text/css">
	<script type="text/javascript" src="/js/libs/secure/rsa.min.js"></script>
	<script type="text/javascript"
		src="/js/libs/secure/secure-login.js?v=131018"></script>

	<div id="pop_login_layer_dimmed"
		style="display: none; position: fixed; top: 0; left: 0; width: 100%; height: 100%; background: url(//www.saraminimage.co.kr/event_2014/0708_rank1/bg_dimmed.png) repeat 0 0; z-index: 9998;"></div>
	<div id="pop_login_layer" class="pop_login_layer"
		style="display: none; position: absolute; top: 280px;" role="dialog"
		aria-labelledby="login_title">
		<div class="outer">
			<form name="loginFrm" id="loginFrm"
				action="https://www.saramin.co.kr/zf_user/auth/login" method="post"
				onsubmit="return loginCheckMainLayer(this);">
				<input type="hidden" name="page_url" id="page_url"
					value="L3pmX3VzZXIvbWVtYmVyL3JlZ2lzdHJhdGlvbi9qb2luLWRldGFpbD91dD1w">
				<input type="hidden" name="url" value=""> <input
					type="hidden" name="allowType" value=""> <input
					type="hidden" name="ut" value=""> <input type="hidden"
					name="layerScrapIdx" value=""> <input type="hidden"
					name="layerFavorIdx" value=""> <input type="hidden"
					name="rec_apply_fl" value="n"> <input type="hidden"
					name="encid" value="" id="encid"><input type="hidden"
					name="encpw" value="" id="encpw"><input type="hidden"
					name="seq" value="" id="seq">
				<fieldset class="inner">
					<h4 id="login_title" class="title">
						<span class="txt_point">로그인</span>이 필요한 서비스입니다.
					</h4>
					<div class="setting">
						<span class="inpChk"> <input type="checkbox"
							id="ly_autologin" class="setting_inp" name="autologin"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
							<label class="setting_label" for="ly_autologin"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'login_save', '');}catch(e){}">
								로그인 유지 </label>
						</span> <span class="inpChk"> <input type="checkbox"
							id="ly_id_save" class="setting_inp" name="id_save"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
							<label class="setting_label" for="ly_id_save"
							onmousedown="try{n_trackEvent('login', 'pc_login_page' , 'id_save', '');}catch(e){}">
								아이디 저장 </label>
						</span> <span class="inpChkSwP ssl_login_box"> <input
							type="checkbox" id="ly_ssl_login" title="보안접속"
							class="ssl_login_hide" checked="checked"> <label
							for="ly_ssl_login" id="ly_ssl_login_label" class="lbl label_type">보안</label>
						</span>
					</div>
					<div id="login_form" class="login-form">
						<div id="id_input_form" class="id-input-box focus">
							<input type="text" name="id" id="ly_id" class="txt_tool" value=""
								required=""> <label id="ly-id-label" class="id-label"
								for="ly_id"><span>아이디</span></label>
						</div>
						<div id="pw_input_form" class="pw-input-box">
							<input type="password" name="password" id="ly_password" value=""
								required=""> <label id="ly-password-label"
								for="ly_password"><span>비밀번호</span></label>
						</div>
						<button type="submit" class="btn-login"
							onmousedown="loggingEventAndTagManager(['login','pc_login_layer','per_login',''],['ga_lead','login','pc_login_layer','per_login'])">
							<span>로그인</span>
						</button>
					</div>
					<div class="signup-forgotten">
						<a href="/zf_user/member/registration/join" target="_blank"
							class="sign_up">회원가입</a> <a href="/zf_user/helpdesk/idpw-find"
							target="_blank" class="forgotten">아이디/비밀번호 찾기</a>
					</div>
					<div class="social_login_tit">
						<p class="tit">소셜 계정으로 간편 로그인</p>
					</div>
					<ul class="social_login" id="wrap_social_login">
						<li class="login_naver"><a
							href="/zf_user/auth/sign-in-with?provider=naver.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
							class="sl_naver ga_data_layer" data-provider="naver"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_naver"></use></svg></span></a></li>
						<li class="login_kakao"><a
							href="/zf_user/auth/sign-in-with?provider=kakao.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
							class="sl_kakao ga_data_layer" data-provider="kakao"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_kakao"></use></svg></span></a></li>
						<li class="login_google"><a
							href="/zf_user/auth/sign-in-with?provider=google.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
							class="sl_google ga_data_layer" data-provider="google"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_google"></use></svg></span></a></li>
						<li class="login_facebook"><a
							href="/zf_user/auth/sign-in-with?provider=facebook.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
							class="sl_facebook ga_data_layer" data-provider="facebook"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_facebook"></use></svg></span></a></li>
						<li class="login_apple"><a
							href="/zf_user/auth/sign-in-with?provider=apple.com&amp;display=popup&amp;url=%2Fzf_user%2Fmember%2Fregistration%2Fjoin-detail%3Fut%3Dp&amp;login_type=p"
							class="sl_apple ga_data_layer" data-provider="apple"><span
								class="wrap_icon"><svg class="icon">
										<use xlink:href="#icon_login_apple"></use></svg></span></a></li>
					</ul>
				</fieldset>
			</form>
			<button class="pop_login_layer_close" id="pop_login_layer_close">닫기</button>
		</div>
		<svg xmlns="http://www.w3.org/2000/svg" style="display: none">
        <symbol id="icon_login_naver" viewBox="0 0 20 20" fill="none">
            <path
				d="M13.5615 10.704L6.14588 0H0V20H6.43845V9.296L13.8541 20H20V0H13.5615V10.704Z"
				fill="white"></path>
        </symbol>
        <symbol id="icon_login_kakao" viewBox="0 0 24 22" fill="none">
            <path
				d="M12 -0.00012207C5.37092 -0.00012207 0 4.23616 0 9.46609C0 12.868 2.27684 15.8528 5.69401 17.5215C5.44314 18.4545 4.78556 20.9082 4.65252 21.4316C4.48907 22.0839 4.89199 22.0725 5.15426 21.8981C5.35952 21.7616 8.44219 19.6681 9.77257 18.7654C10.4948 18.8716 11.2398 18.9285 12 18.9285C18.6291 18.9285 24 14.6922 24 9.4623C24 4.23237 18.6291 -0.00012207 12 -0.00012207Z"
				fill="#181600"></path>
        </symbol>
		<symbol id="icon_login_google" viewBox="0 0 22 22" fill="none">
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M21.5593 11.25C21.5593 10.4697 21.4888 9.72048 21.3593 9.00027H10.9998V13.2552H16.9199C16.665 14.6303 15.8899 15.7951 14.7251 16.5754V19.3349H18.2805C20.3603 17.4199 21.5603 14.6002 21.5603 11.25H21.5593Z"
				fill="#4285F4"></path>
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M10.9993 22.0002C13.9692 22.0002 16.4594 21.0147 18.2791 19.3349L14.7236 16.5754C13.7382 17.2355 12.4791 17.6251 10.9983 17.6251C8.133 17.6251 5.70815 15.6904 4.84287 13.0904H1.16931V15.9401C2.97966 19.5349 6.69881 22.0002 10.9993 22.0002Z"
				fill="#34A853"></path>
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M4.84453 13.0895C4.62484 12.4294 4.49946 11.7248 4.49946 10.9994C4.49946 10.274 4.62484 9.56933 4.84453 8.90923V6.05951H1.16994C0.424868 7.54448 0 9.22426 0 10.9994C0 12.7745 0.424868 14.4543 1.16994 15.9392L4.84453 13.0895Z"
				fill="#FBBC05"></path>
			<path fill-rule="evenodd" clip-rule="evenodd"
				d="M10.9993 4.37511C12.6138 4.37511 14.0646 4.93054 15.2045 6.01966L18.3599 2.86423C16.4542 1.09015 13.9641 0 10.9993 0C6.69881 0 2.97966 2.46527 1.16931 6.06007L4.8439 8.90979C5.70918 6.30981 8.13404 4.37511 10.9993 4.37511Z"
				fill="#EA4335"></path>
		</symbol>
        <symbol id="icon_login_facebook" viewBox="0 0 14 26" fill="none">
            <path
				d="M4.60526 25.5H8.9386V14.4801H12.9504L13.3677 10.3223C13.3677 10.3223 13.4544 10.118 13.0165 10.118H8.9386V6.97963C8.9386 6.97963 8.75842 4.60805 11.1053 4.60805H13.5V0.937039C13.5 0.937039 12.4691 0.477875 9.97404 0.500833C9.97404 0.500833 7.77316 0.473283 6.05123 2.13086C6.05123 2.13086 4.60526 3.43489 4.60526 4.9134V10.118H0.5V14.4801H4.60526V25.5Z"
				fill="white"></path>
        </symbol>
        <symbol id="icon_login_apple" viewBox="0 0 22 25" fill="none">
            <path fill-rule="evenodd" clip-rule="evenodd"
				d="M8.48584 5.81313C8.27201 4.15256 9.4239 0.539339 13.4774 0C13.9464 2.78179 11.6001 5.97873 8.48584 5.81313Z"
				fill="white"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
				d="M20.7747 8.39829C19.4527 7.15287 18.3008 5.94884 15.8694 5.82349C13.9071 5.7407 13.0115 6.90332 11.1768 6.94472C9.47077 6.98612 9.59836 5.6579 6.0576 6.03164C2.98587 6.36283 0.298109 9.35277 0.511949 13.5467C0.725788 18.073 3.96764 24.3427 6.99566 24.3427C9.12815 24.3013 9.64089 23.3043 11.3894 23.3043C13.5644 23.3043 14.0772 24.5497 15.7832 24.3002C18.7261 23.885 21.499 19.3587 21.499 17.9063C19.878 17.076 18.2571 15.6638 18.0433 13.2972C17.8731 10.9305 19.3653 9.43557 20.7736 8.39714L20.7747 8.39829Z"
				fill="white"></path>
        </symbol>
	</svg>
		<script type="text/javascript">

        var getId = (function () {
            var elCache = {};
            return function (id) {
                if (!elCache[id]) {
                    elCache[id] = document.getElementById(id);
                }
                return elCache[id];
            }
        })();

        var page_url = 'L3pmX3VzZXIvbWVtYmVyL3JlZ2lzdHJhdGlvbi9qb2luLWRldGFpbD91dD1w';


        function addEvent(ele, eventType, func) {
            var obj = typeof ele === 'string' ? getId(ele) : ele;
            if (obj.addEventListener) {
                obj.addEventListener(eventType, func, false);
            } else if (obj.attachEvent) {//IE
                obj.attachEvent('on' + eventType, func);
            }
        }
        

        //창닫기
        addEvent("pop_login_layer_close", "click", function () {
            getId('page_url').value = page_url;
            getId('pop_login_layer').style.display = 'none';
            getId('pop_login_layer_dimmed').style.display = 'none';
            /**
             * 신입인턴 홈에서 버튼 클릭후 로그인레이어 창 띄우고 닫았을때 사용되는 부분입니다.
             */
            if(window.jobsHomeClickBeforeDom) window.jobsHomeClickBeforeDom.focus();
        });

        /**
         * 로그인 모달 창 마지막 포커스 닫기 버튼에 tab 키로 이동시 모달안으로 포커스 유지하기 위해 ly_autologin 이동
         */
        addEvent("pop_login_layer_close", "keydown", function (e) {
            var keycode = e.keyCode;
            if(keycode === 9) {
                if(!e.shiftKey) {
                    e.preventDefault();
                    document.querySelector('#ly_autologin').focus();
                }
            }
        });

        /**
         * 로그인 모달 창 첫 포커스 element인 로그인 유지에 tab+shift일때 닫기 버튼으로 포커스이동
         */
        addEvent("ly_autologin", "keydown", function (e) {
            var keycode = e.keyCode;
            if(keycode === 9) {
                if(e.shiftKey && e.target) {
                    e.preventDefault();
                    document.querySelector('#pop_login_layer_close').focus();
                }
            }
        });
        

        //폼  체크
        function loginCheckMainLayer(form) {
            if (form.id.value === "") {
                alert("아이디를 입력하세요.");
                form.id.focus();
                return false;
            }
            if (form.id.value.indexOf(" ") > 0) {
                alert("아이디에 공백에 있습니다. 공백을 제거해주세요");
                form.id.focus();
                return false;
            }
            if (form.id.value.length < 4) {
                alert("아이디는 4자이상이어야 합니다");
                form.id.focus();
                return false;
            }
            if (form.password.value === "") {
                alert("비밀번호를 입력하세요");
                form.password.focus();
                return false;
            }
            if (form.password.value.length < 4 || form.password.value.length > 32) {
                alert("비밀번호는 영문,숫자,특수문자 조합 6~32자 입니다.");
                form.password.focus();
                return false;
            }

            if (form['ly_ssl_login'].checked) {
                SecureLogin.encrypt(form);
            }

            return true;
        }

        //페이지 로딩시 초기화 시켜 준다.
        setTimeout(function () {
            var idInPut = getId('ly_id');
            var pwInput = getId('ly_password');
            if (!getId('ly_id').value) {
                idInPut.value = '';
                idInPut.blur();
            }
            pwInput.value = '';
            pwInput.blur();
        }, 50);

        /**
         *
         * @param name
         * @param value
         * @param expiredays
         */
        function setHoursCookie(name, value, expiredays) {
            var todayDate = new Date();
            todayDate.setHours(todayDate.getHours() + expiredays);
            document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";";
        }


        (document.addEventListener('DOMContentLoaded', function (e) {

            var socialLoginBtnList = document.querySelectorAll('#pop_login_layer .social_login li a');

            [].forEach.call(socialLoginBtnList, function(socialLoginBtn){
                socialLoginBtn.addEventListener('click', function (e) {
                    e.preventDefault();
                    e.stopPropagation();

                    var link = e.currentTarget.href,
                        provider = e.currentTarget.dataset.provider,
                        isCompany = '',
                        label = isCompany ? 'com_login_' : 'per_login_';

                    label += provider;
                    loggingEventAndTagManager(['login','pc_login_layer', label,''],['ga_lead','login','pc_login_layer', label]);

                    //소셜 버튼을 누를때 쿠키를 만들어 주고 소셜 회원 가입 완료 페이지에서 사용 한다.
                    setHoursCookie('login_referer_url', encodeURIComponent(location.href.replace(/.*\/\/[^\/]*/, '')), 1);

                    if((navigator.userAgent.toLowerCase().indexOf("msie") !== -1) && provider === 'apple'){
                        if(confirm('IE10이하 버전의 인터넷 익스플로러에서는 Apple 로그인이 정상 작동하지 않을 수 있습니다.\n' +
                            '인터넷 익스플로러를 최신 버전으로 업데이트 해주세요'))
                        {
                            window.open(link, '_blank', 'width=480,height=640');
                        }
                        return;
                    }
                    window.open(link, '_blank', 'width=480,height=640');
                });
            });

            var isCompany = '';
            var toolTipClass = document.getElementsByClassName('social_tooltip');

            if (toolTipClass.length > 0 && isCompany) {
                toolTipClass[0].style.display = "none";
            }

            var popLoginLayer = document.getElementById('pop_login_layer');
            if (toolTipClass.length > 0 && !isCompany) {
                var fadeTarget = toolTipClass[0],
                    fadeEffect = null,
                    fadeTimeOut = null;

                var startToolTipInterval = function () {
                    fadeEffect = setInterval(function () {
                        if (!fadeTarget.style.opacity) {
                            fadeTarget.style.opacity = 1;
                        }
                        if (fadeTarget.style.opacity > 0) {
                            fadeTarget.style.opacity -= 0.1;
                        } else {
                            clearInterval(fadeEffect);
                        }
                    }, 20);
                };

                var hideSocialTooltip = function () {
                    fadeTimeOut = setTimeout(function () {
                        startToolTipInterval();
                    }, 5000);
                };
            }

            var respondToVisibility = function(element, callback) {
                var options = {
                    root: document
                };

                var observer = new IntersectionObserver(function (entries, observer){
                    entries.forEach(function (entry){
                        callback(entry.intersectionRatio > 0);
                    });
                }, options);

                observer.observe(element);
            };

            respondToVisibility(popLoginLayer, function(visible){
                if(visible) {
                    if (toolTipClass.length > 0 && !isCompany) {
                        fadeTarget.style.display = 'block';
                        fadeTarget.style.opacity = 1;
                        clearInterval(fadeEffect);
                        clearTimeout(fadeTimeOut);
                        hideSocialTooltip();
                    }

                    document.getElementsByTagName('html')[0].style.overflow = 'hidden';
                    document.getElementsByTagName('html')[0].style.height = '100%';
                    document.getElementsByTagName('body')[0].style.height = '100%';
                } else {
                    document.getElementsByTagName('html')[0].style.overflow = '';
                    document.getElementsByTagName('html')[0].style.height = '';
                    document.getElementsByTagName('body')[0].style.height = '';
                }
            });

        }))
    </script>
	</div>
	<div class="img_svg_layout">
		<svg xmlns="http://www.w3.org/2000/svg">
        <symbol id="svg_saramin_ci" viewBox="0 0 126 40">
            <g transform="translate(29 7)">
                <path fill="#4876EF"
				d="M22.467 19.27l-.039.023c-.288.175-1.166.708-2.76.708-1.653 0-2.602-.682-2.602-1.873 0-1.089 1.012-1.82 2.518-1.82 1.072 0 1.875.165 2.823.432l.06.016v2.513zm-7.922-8.72c0 .495.205.912.577 1.173.46.322 1.13.373 1.89.143.684-.21 1.71-.46 2.713-.46 1.921 0 2.742.65 2.742 2.17v.823l-.103-.024c-1.032-.233-1.858-.399-3.087-.399-5.274 0-5.684 3.28-5.684 4.286 0 2.24 1.53 4.634 5.823 4.634 3.352 0 5.333-1.117 5.86-1.46.481-.307.636-.597.636-1.193v-6.56c0-3.555-2.054-5.357-6.104-5.357-1.692 0-3.302.343-4.082.663-.784.308-1.181.834-1.181 1.56zM63.698 9.889l-.051-.054c-1.01-1.03-2.28-1.51-4-1.51-1.85 0-3.723.568-5.01 1.52-.517.36-.69.677-.69 1.255v10.017c0 .964.815 1.779 1.78 1.779 1.015 0 1.78-.765 1.78-1.779v-8.742l.092-.056c.274-.17 1.001-.626 2.215-.626 1.549 0 2.335.843 2.335 2.504v6.92c0 .964.815 1.779 1.78 1.779.998 0 1.78-.782 1.78-1.779v-8.742l.092-.056c.274-.17 1.001-.626 2.215-.626 1.528 0 2.335.875 2.335 2.53v6.894c0 .964.802 1.779 1.751 1.779 1.015 0 1.81-.782 1.81-1.779v-6.974c0-3.914-1.865-5.817-5.702-5.817-1.616 0-3.156.525-4.453 1.517l-.059.046zM47.529 19.27l-.039.023c-.288.175-1.164.708-2.76.708-1.654 0-2.602-.682-2.602-1.873 0-1.089 1.012-1.82 2.518-1.82 1.072 0 1.875.165 2.823.432l.06.016v2.513zm-7.922-8.72c0 .495.205.911.577 1.173.46.322 1.13.373 1.89.143.684-.21 1.71-.46 2.713-.46 1.921 0 2.742.65 2.742 2.17v.823l-.103-.024c-1.032-.233-1.858-.399-3.087-.399-5.274 0-5.684 3.28-5.684 4.286 0 2.24 1.53 4.634 5.823 4.634 3.352 0 5.333-1.117 5.86-1.46.481-.306.635-.596.635-1.193v-6.56c0-3.555-2.053-5.357-6.102-5.357-1.694 0-3.304.343-4.083.663-.784.308-1.181.833-1.181 1.56zM36.129 8.539c-.548-.131-1.464-.213-2.391-.213-3.084 0-4.853 1.649-4.853 4.525v8.388c0 .914.774 1.657 1.725 1.657.016-.002.024-.004.033-.004l.03.002h.002c1.014 0 1.801-.768 1.801-1.75v-7.62c0-1.201.504-1.8 1.54-1.83.472-.017.869.06 1.25.133.296.056.575.109.856.109 1.148 0 1.683-.965 1.683-1.617 0-.87-.595-1.501-1.676-1.78M7.806 14.497l-2.203-.44c-1.233-.27-1.758-.665-1.758-1.325 0-.382.203-1.27 2.085-1.27.78 0 1.908.264 2.624.615.893.45 1.812.371 2.344-.202.296-.332.452-.799.416-1.246-.025-.301-.145-.733-.577-1.083-.899-.73-2.774-1.22-4.667-1.22-3.454 0-5.686 1.772-5.686 4.516 0 2.572 2.217 3.668 4.076 4.134.638.16.956.216 1.325.281.264.047.538.095.961.187 1.177.274 1.7.7 1.7 1.38 0 .493-.284 1.32-2.19 1.32-1.32 0-2.748-.363-3.637-.924-.359-.224-.726-.334-1.073-.334-.488 0-.935.217-1.256.643-.492.633-.34 1.663.323 2.205.578.474 2.274 1.578 5.524 1.578 3.443 0 5.757-1.893 5.757-4.71 0-2.142-1.338-3.485-4.088-4.105M78.584 6.66c-.968 0-1.699.76-1.699 1.768v9.37c0 .958.778 1.767 1.699 1.767.953 0 1.7-.776 1.7-1.767v-9.37c0-.99-.747-1.767-1.7-1.767"></path>
                <path fill="#4876EF"
				d="M78.584 0c-1.453 0-2.549 1.059-2.549 2.462 0 1.42 1.12 2.533 2.55 2.533 1.38 0 2.548-1.16 2.548-2.533 0-1.38-1.12-2.462-2.549-2.462"
				mask="url(#1f8v900bkb)"></path>
                <path fill="#4876EF"
				d="M89.736 8.326c-3.553 0-5.485 1.221-5.843 1.466-.476.323-.636.64-.636 1.255v10.07c0 .964.82 1.779 1.79 1.779 1.02 0 1.79-.765 1.79-1.779v-8.742l.038-.023c.522-.317 1.58-.659 2.75-.659 1.35 0 2.795.686 2.795 2.612v6.812c0 .964.82 1.779 1.79 1.779 1.02 0 1.79-.765 1.79-1.779v-6.974c0-3.806-2.166-5.817-6.264-5.817"
				mask="url(#09ysurdxqd)"></path>
            </g>
            <g>
                <circle cx="4.5" cy="14.5" r="4.5" fill="#4876EF"></circle>
                <circle cx="16.5" cy="14.5" r="4.5" fill="currentColor"></circle>
                <circle cx="4.5" cy="26.5" r="4.5" fill="currentColor"></circle>
                <circle cx="16.5" cy="26.5" r="4.5" fill="#00D3AB"></circle>
            </g>
        </symbol>
        <symbol id="svg_gnb_profile_bracket" viewBox="0 0 10 6">
            <path d="M1 1L5 5L9 1" stroke="currentColor"
				stroke-width="1.2" stroke-linecap="round" fill="none"></path>
        </symbol>
        <symbol id="svg_gnb_profile_arrow" viewBox="0 0 16 16">
            <path fill="currentColor" d="M92 18L100 18 96 23z"
				transform="translate(-1976 -481) translate(120 445) translate(1768 24)"></path>
        </symbol>
        <symbol id="svg_gnb_search" viewBox="0 0 24 24">
            <g fill="none">
                <circle cx="11" cy="11" r="8.75" stroke="#4876EF"
				stroke-width="2.5"></circle>
                <path d="M22 21L18 17" stroke="#4876EF"
				stroke-width="2.5" stroke-linecap="round"></path>
            </g>
        </symbol>
        <symbol id="svg_gnb_social1" viewBox="0 0 16 16">
            <path fill="#58B04B"
				d="M2.034 3L2 12.968 6.154 12.984 6.171 8.953 5.897 7.691 9.829 12.968 14 13 13.983 3.032 9.812 3.016 9.897 7.128 10.171 8.596 6.171 3.016z"></path>
        </symbol>
        <symbol id="svg_gnb_social2" viewBox="0 0 16 16">
            <path fill="#3C5A9A"
				d="M6.087 14V7.614h2.36l.352-2.489H6.087V3.536c0-.72.22-1.212 1.358-1.212h1.45V.098C8.644.068 7.783 0 6.782 0 4.69 0 3.26 1.16 3.26 3.29v1.835H.895v2.489h2.364V14h2.828z"
				transform="translate(3.105 1)"></path>
        </symbol>
        <symbol id="svg_gnb_social3" viewBox="0 0 16 16">
            <path fill="#4285F4"
				d="M11.758 6.133c0-.494-.04-.854-.126-1.227H5.999v2.226h3.306C9.24 7.686 8.88 8.52 8.08 9.08l-.011.074 1.78 1.38.124.012c1.133-1.046 1.786-2.586 1.786-4.412"
				transform="translate(2 2)"></path>
            <path fill="#34A853"
				d="M6 11.998c1.619 0 2.979-.533 3.972-1.453L8.079 9.08c-.507.353-1.187.6-2.08.6-1.586 0-2.933-1.047-3.413-2.493l-.07.006L.664 8.625l-.024.067c.986 1.96 3.013 3.306 5.36 3.306"
				transform="translate(2 2)"></path>
            <path fill="#FBBC05"
				d="M2.586 7.186c-.126-.374-.2-.774-.2-1.187 0-.413.074-.813.194-1.186l-.004-.08L.701 3.277l-.061.03C.233 4.118 0 5.032 0 5.998c0 .967.233 1.88.64 2.693l1.946-1.506"
				transform="translate(2 2)"></path>
            <path fill="#EB4335"
				d="M6 2.32c1.126 0 1.886.486 2.319.893l1.693-1.653C8.972.593 7.619 0 5.999 0 3.653 0 1.626 1.346.64 3.306l1.94 1.507C3.067 3.366 4.414 2.32 6 2.32"
				transform="translate(2 2)"></path>
        </symbol>
        <symbol id="svg_gnb_social4" viewBox="0 0 16 16">
            <path fill="#000"
				d="M7 .02C3.15.02.03 2.494.03 5.545c0 1.972 1.305 3.703 3.267 4.68-.107.37-.686 2.382-.709 2.54 0 0-.014.119.063.164.076.045.166.01.166.01.22-.03 2.543-1.671 2.945-1.956.402.057.816.087 1.238.087 3.85 0 6.97-2.474 6.97-5.525S10.85.02 7 .02z"
				transform="translate(1 2)"></path>
            <path fill="#FFF"
				d="M3.147 7.473c-.222 0-.403-.173-.403-.386V4.686h-.627c-.218 0-.395-.178-.395-.396 0-.218.177-.396.395-.396h2.059c.218 0 .395.178.395.396 0 .218-.177.396-.395.396h-.627v2.401c0 .213-.18.386-.402.386zm3.525-.005c-.167 0-.296-.068-.334-.178l-.2-.524H4.914l-.2.524c-.038.11-.166.178-.334.178-.088 0-.175-.019-.256-.056-.11-.051-.217-.192-.095-.574l.962-2.545c.068-.193.273-.393.535-.399.263.006.469.206.537.4l.961 2.544c.122.382.016.523-.095.574-.08.037-.167.056-.256.056zM5.927 6.05l-.401-1.147-.402 1.147h.803zM7.67 7.414c-.212 0-.385-.166-.385-.37V4.298c0-.223.184-.404.41-.404.227 0 .41.181.41.404v2.375h.855c.213 0 .386.167.386.37 0 .205-.173.371-.386.371H7.67zm2.234.054c-.222 0-.402-.181-.402-.404V4.298c0-.223.18-.404.402-.404.222 0 .402.181.402.404v.87l1.122-1.129c.058-.058.137-.09.223-.09.1 0 .201.044.277.12.07.07.112.162.118.256.006.095-.026.183-.089.246l-.916.921.99 1.319c.064.085.092.193.077.299-.015.106-.07.202-.156.267-.07.053-.155.081-.242.081-.126 0-.245-.059-.321-.16l-.943-1.257-.14.14v.883c0 .223-.18.404-.402.404z"
				transform="translate(1 2)"></path>
        </symbol>
        <symbol id="svg_gnb_social5" viewBox="0 0 16 16">
            <path
				d="M9.187 7.438C9.206 9.556 10.98 10.26 11 10.27c-.015.05-.284 1.005-.935 1.992-.563.852-1.147 1.702-2.068 1.72-.904.017-1.195-.556-2.23-.556-1.033 0-1.357.538-2.213.573-.888.035-1.565-.922-2.133-1.772C.261 10.49-.626 7.316.565 5.173 1.156 4.11 2.213 3.436 3.36 3.42c.873-.018 1.696.608 2.23.608.533 0 1.534-.752 2.586-.642.44.02 1.677.185 2.47 1.389-.063.041-1.474.892-1.46 2.664m-1.7-5.203C7.96 1.644 8.277.82 8.19 0 7.51.028 6.687.47 6.2 1.061c-.437.524-.82 1.362-.716 2.166.758.06 1.532-.4 2.004-.992"
				transform="translate(3 1)"></path>
        </symbol>
        <symbol id="svg_gnb_member_photo" viewBox="0 0 32 32">
            <circle cx="16" cy="16" r="16" fill="#ccd0d6"></circle>
            <path stroke="#FFF" fill="#ccd0d6" stroke-linecap="round"
				stroke-linejoin="round" stroke-width="1.5"
				d="M25 24c0-2.21-2.015-4-4.5-4h-9C9.015 20 7 21.79 7 24"></path>
            <path stroke="#FFF" fill="#ccd0d6" stroke-width="1.5"
				d="M16 8h3.5c.276 0 .5.224.5.5V12c0 2.21-1.79 4-4 4s-4-1.79-4-4 1.79-4 4-4z"></path>
        </symbol>
        <symbol id="svg_gnb_plus" viewBox="0 0 10 10">
            <rect y="4" width="10" height="2" fill="currentColor"></rect>
            <rect x="4" y="10" width="10" height="2"
				transform="rotate(-90 4 10)" fill="currentColor"></rect>
        </symbol>
        <symbol id="svg_gnb_write" viewBox="0 0 24 24">
            <path fill="none" stroke="currentColor"
				d="M0 11.427V14.3c0 .11.09.2.2.2h2.655c.254 0 .498-.097.683-.27L14.246 4.206c.403-.377.424-1.01.046-1.413l-.023-.024L12.192.692C11.807.307 11.186.3 10.793.676L.31 10.705c-.197.188-.309.45-.309.722zM12.25 5.5L8.75 2"
				transform="translate(-1562 -2145) translate(1542 2089) translate(1 48) translate(19 8) translate(4.5 5)"></path>
        </symbol>
        <symbol id="svg_gnb_total_off" viewBox="0 0 20 40">
            <g fill="currentColor">
                <rect width="20" height="2" y="13" rx="1"></rect>
                <path
				d="M1 19h12c.552 0 1 .448 1 1s-.448 1-1 1H1c-.552 0-1-.448-1-1s.448-1 1-1z"></path>
                <rect width="20" height="2" y="25" rx="1"></rect>
            </g>
        </symbol>
        <symbol id="svg_gnb_total_on" viewBox="0 0 20 40">
            <path fill="currentColor"
				d="M3.343 11.929L10 18.585l6.657-6.656c.39-.39 1.024-.39 1.414 0 .39.39.39 1.024 0 1.414L11.415 20l6.656 6.657c.39.39.39 1.024 0 1.414-.39.39-1.024.39-1.414 0L10 21.415l-6.657 6.656c-.39.39-1.024.39-1.414 0-.39-.39-.39-1.024 0-1.414L8.585 20l-6.656-6.657c-.39-.39-.39-1.024 0-1.414.39-.39 1.024-.39 1.414 0z"></path>
        </symbol>
        <symbol id="svg_gnb_link1" viewBox="0 0 20 20">
            <path d="M9.99805 10.1289L19.0002 7.5396L9.99805 1V10.1289Z"
				fill="#B0C8FA"></path>
            <path
				d="M9.99805 10.1172L19.0002 7.52783L15.561 18.1086L9.99805 10.1172Z"
				fill="#6D9CFA"></path>
            <path
				d="M10.0004 10.1333L4.4375 18.1247H15.5633L10.0004 10.1333Z"
				fill="#387BFF"></path>
            <path
				d="M10.0002 10.1587L1 7.56939L10.0002 1.02979V10.1587Z"
				fill="#6D9CFA"></path>
            <path
				d="M10.0002 10.1689L1 7.57959L4.43732 18.1603L10.0002 10.1689Z"
				fill="#387BFF"></path>
        </symbol>
        <symbol id="svg_gnb_link2" viewBox="0 0 20 20">
            <g fill="none">
                <path
				d="M9.50055 17C5.91035 17 3 14.0906 3 10.4997C3 6.90944 5.9103 4 9.50055 4C13.0901 4 16 6.90929 16 10.4997C16 14.0908 13.0901 17 9.50055 17Z"
				fill="white" stroke="#BC8EFF" stroke-width="2"
				stroke-linecap="round" stroke-linejoin="round"></path>
                <path
				d="M9.50026 13C8.11931 13 7 11.881 7 10.4999C7 9.11905 8.11926 8 9.50026 8C10.8808 8 12 9.11891 12 10.4999C12 11.8811 10.8808 13 9.50026 13Z"
				fill="white" stroke="#BC8EFF" stroke-width="2"
				stroke-linecap="round" stroke-linejoin="round"></path>
                <path
				d="M13.0538 1.94908C13.3871 1.61585 13.9274 1.61585 14.2606 1.94908L16.0673 3.75579L13.6538 6.16931L13.0538 5.56937C12.0541 4.56965 12.0541 2.9488 13.0538 1.94908Z"
				fill="#955CEA"></path>
                <path
				d="M17.882 6.7694C18.2152 6.43616 18.2152 5.89587 17.882 5.56263L16.0753 3.75593L13.6617 6.16945L14.2617 6.76939C15.2614 7.76911 16.8823 7.76911 17.882 6.7694Z"
				fill="#955CEA"></path>
                <path d="M11.2471 8.57568L9.2358 10.587"
				stroke="#8491A7" stroke-linecap="round"></path>
                <path
				d="M16.0328 2.89536C16.2889 2.69608 16.6533 2.71874 16.8828 2.94821C17.1122 3.17767 17.1349 3.54211 16.9356 3.79823L12.695 9.24848C12.141 9.96049 11.0846 10.0222 10.4467 9.38426C9.80881 8.74635 9.87049 7.68997 10.5825 7.13598L16.0328 2.89536Z"
				fill="#373F57"></path>
            </g>
        </symbol>
        <symbol id="svg_gnb_link3" viewBox="0 0 20 20">
            <path
				d="M10.3371 1.5737L0.686635 15.9753C0.436625 16.3484 0.767086 16.8364 1.20632 16.7427L19.2382 12.8959C19.5944 12.8199 19.7525 12.4006 19.535 12.1084L16.4286 7.93333L13.5714 9.53333L13.9249 5.10256L11.1466 1.54432C10.9371 1.27604 10.5266 1.29094 10.3371 1.5737Z"
				fill="#94B5FC"></path>
            <path
				d="M13.926 5.125L0.944517 16.3213C0.898468 16.361 0.902589 16.4336 0.952838 16.4679C0.981751 16.4876 1.01931 16.4893 1.04989 16.4723L14.5019 9L13.926 5.125Z"
				fill="#4876EF"></path>
        </symbol>
        <symbol id="svg_gnb_link4" viewBox="0 0 20 20">
            <g fill="none">
                <path fill-rule="evenodd" clip-rule="evenodd"
				d="M2 9.99971C2 14.4192 5.58207 18 10.0006 18C14.4185 18 18 14.4192 18 9.99971C18 5.58077 14.4185 2 10.0006 2C5.58207 2 2 5.58077 2 9.99971Z"
				fill="#00D3AB"></path>
                <path
				d="M6.99902 7L8.49902 13L10.0005 7L11.499 13L12.999 7"
				stroke="white" stroke-linecap="round" stroke-linejoin="round"></path>
                <path d="M14.5 9.5H5.5" stroke="white"
				stroke-linecap="round" stroke-linejoin="round"></path>
            </g>
        </symbol>
        <symbol id="svg_gnb_link5" viewBox="0 0 20 20">
            <path d="M4.537 6h6.708v10.854H3L4.537 6Z" fill="#E5CDFF"></path>
            <path d="M15.463 6H8.755v10.854H17L15.463 6Z" fill="#E5CDFF"></path>
            <path
				d="M17 16.854C17 18 15 20 10 20s-7-2-7-3.146C3.768 15.36 5.945 14 10 14s5.976 1.438 7 2.854Z"
				fill="#E5CDFF"></path>
            <rect x="18" y="5" width="1" height="9" rx=".5"
				fill="#BC8EFF"></rect>
            <path
				d="M9.42.143a1.242 1.242 0 0 1 1.16 0l9.066 4.758c.472.248.472.95 0 1.198l-9.066 4.758a1.242 1.242 0 0 1-1.16 0L.354 6.099c-.472-.248-.472-.95 0-1.198L9.42.143Z"
				fill="#955CEA"></path>
            <ellipse cx="10" cy="5" rx="2" ry="1" fill="#fff"></ellipse>
        </symbol>
        <symbol id="svg_gnb_link6" viewBox="0 0 20 20">
            <path d="m9.581 5.973 9.091 2.5V13.7H7.99l1.591-7.727Z"
				fill="#BCD1FC"></path>
            <path fill-rule="evenodd" clip-rule="evenodd"
				d="M2.727 13.386V8.035l4.546-.99.675.388 4.39 1.177 3.074.823a.909.909 0 1 1-.47 1.757l-2.854-.765a.227.227 0 0 0-.118.439l2.854.765a.909.909 0 1 1-.47 1.756l-2.855-.765a.227.227 0 0 0-.117.44l1.975.529a.91.91 0 0 1-.47 1.756l-1.976-.53a.227.227 0 0 0-.118.44l1.098.294a.909.909 0 1 1-.47 1.756l-1.318-.353-1.156-.31a15 15 0 0 1-4.756-2.225l-1.464-1.031Z"
				fill="#4876EF"></path>
            <path
				d="M.61 7.655a1 1 0 0 1 1-1h1.523a1 1 0 0 1 .994 1.107l-.651 6.091a1 1 0 0 1-.995.894H1.61a1 1 0 0 1-1-1V7.655Z"
				fill="#4876EF"></path>
            <path
				d="M8.537 6.083c.378-.216.826-.27 1.245-.15l8.891 2.54-9.181-.355-2.366 1.375a1.132 1.132 0 1 1-1.13-1.961l2.54-1.449Z"
				fill="#BCD1FC"></path>
            <path
				d="M19.58 7.655a1 1 0 0 0-1-1h-1.524a1 1 0 0 0-.994 1.107l.652 6.091a1 1 0 0 0 .994.894h.872a1 1 0 0 0 1-1V7.655Z"
				fill="#BCD1FC"></path>
        </symbol>
        <symbol id="svg_gnb_cs" viewBox="0 0 20 20">
            <path
				d="M16.8436 6.51589C16.6152 3.34476 13.9694 0.835938 10.7434 0.835938H10.0122C6.79074 0.835938 4.14973 3.34002 3.91199 6.50218H3.87083C3.13967 6.50218 2.5 7.23335 2.5 8.14718V10.4776C2.5 11.3914 3.09408 12.1226 3.87083 12.1226H5.28283V6.54801C5.50223 4.15821 7.57667 2.20716 10.0122 2.20716H10.7434C13.3206 2.20716 15.4955 4.38229 15.4955 6.95926V12.1684C15.4955 14.4897 13.7865 16.4819 11.502 16.8567C11.269 16.5368 10.8943 16.3266 10.4693 16.3266C9.76112 16.3266 9.18983 16.8977 9.18983 17.6061C9.18983 18.3143 9.76096 18.8856 10.4693 18.8856C10.9445 18.8856 11.3558 18.6252 11.5752 18.2367C14.591 17.8163 16.8666 15.2071 16.8666 12.1686V12.1047C17.6937 12.0179 18.3333 11.3325 18.3333 10.4779V8.14747C18.3333 7.28838 17.6799 6.5938 16.8436 6.51625L16.8436 6.51589Z"
				fill="currentColor"></path>
        </symbol>
        <symbol id="svg_gnb_notice" viewBox="0 0 20 20">
            <path
				d="M7 6.60606C7 6.19477 7.25183 5.82542 7.6347 5.67517L15.6347 2.53578C16.2907 2.27836 17 2.762 17 3.46667V14.5333C17 15.238 16.2907 15.7216 15.6347 15.4642L7.6347 12.3248C7.25183 12.1746 7 11.8052 7 11.3939V6.60606Z"
				fill="currentColor"></path>
            <path
				d="M2 9C2 7.34315 3.34315 6 5 6H5.47826C5.76641 6 6 6.23359 6 6.52174V11.4783C6 11.7664 5.76641 12 5.47826 12H5C3.34315 12 2 10.6569 2 9Z"
				fill="currentColor"></path>
            <rect x="7" y="8" width="2" height="10" rx="1"
				fill="currentColor"></rect>
        </symbol>
        <symbol id="svg_gnb_event" viewBox="0 0 20 20">
            <path fill-rule="evenodd" clip-rule="evenodd"
				d="M2.55331 17.2127L3.80093 13.8361L6.9941 17.0295L3.61817 18.2767C3.30726 18.3914 2.97865 18.3195 2.74501 18.0855C2.51103 17.8515 2.43894 17.5231 2.55342 17.2127L2.55331 17.2127ZM9.59867 2.57853C9.38923 2.36943 9.38923 2.03032 9.59867 1.82089C9.80778 1.61179 10.1469 1.61179 10.3563 1.82089C11.158 2.62309 11.5592 3.67432 11.5592 4.72516C11.5592 5.77601 11.158 6.82758 10.3563 7.62944C10.1469 7.83888 9.80776 7.83888 9.59867 7.62944C9.38923 7.42033 9.38923 7.08122 9.59867 6.8718C10.1913 6.27902 10.4873 5.50152 10.4873 4.72499C10.4873 3.94881 10.1911 3.17114 9.59867 2.57819V2.57853ZM8.95899 4.04062C9.22934 4.31097 9.22934 4.74956 8.95899 5.02008C8.68864 5.29026 8.25022 5.29026 7.97988 5.02008C7.70952 4.74973 7.70952 4.31114 7.98021 4.04096C8.25039 3.76994 8.68863 3.76994 8.95898 4.04063L8.95899 4.04062ZM16.7904 11.8717C17.0608 12.1423 17.0608 12.5804 16.7904 12.8511C16.5198 13.1213 16.0815 13.1213 15.811 12.8511C15.5403 12.5804 15.5403 12.1423 15.811 11.872C16.0813 11.6013 16.5198 11.6013 16.7904 11.8717V11.8717ZM13.9526 3.43866C14.2229 3.70885 14.2229 4.1476 13.9526 4.41778C13.6819 4.68846 13.2436 4.68846 12.9734 4.41778C12.7031 4.14759 12.7031 3.70884 12.9734 3.43866C13.2436 3.16831 13.6819 3.16831 13.9526 3.43866ZM17.3916 6.87782C17.6622 7.14851 17.6619 7.58659 17.3916 7.85694C17.1214 8.12729 16.6828 8.12729 16.4128 7.85694C16.1421 7.58658 16.1421 7.14851 16.4128 6.87782C16.683 6.60747 17.1215 6.60747 17.3916 6.87782ZM19.0098 10.4742C19.2189 10.6836 19.2189 11.0228 19.0098 11.2318C18.8002 11.4413 18.4613 11.4413 18.2522 11.2318C17.6594 10.6392 16.8817 10.3432 16.1054 10.3432C15.3289 10.3432 14.5515 10.6394 13.9586 11.2318C13.7491 11.4413 13.41 11.4413 13.2009 11.2318C12.9915 11.0227 12.9915 10.6836 13.2009 10.4742C14.0028 9.67247 15.0544 9.27131 16.1052 9.27131C17.1561 9.27131 18.2073 9.67249 19.0095 10.4742H19.0098ZM12.1576 9.43066C11.9481 9.6401 11.609 9.6401 11.3999 9.43066C11.1905 9.22156 11.1905 8.88245 11.3999 8.67302L16.4074 3.66552C16.6165 3.45608 16.956 3.45608 17.1651 3.66552C17.3742 3.87462 17.3742 4.21408 17.1651 4.42316L12.1576 9.43066ZM4.20992 12.7295L5.15917 10.1606L10.6704 15.6718L8.10151 16.6207L4.20992 12.7295ZM5.56802 9.05402L6.26141 7.17688C6.36204 6.90386 6.57732 6.71676 6.86136 6.65438C7.14539 6.59214 7.4191 6.67224 7.62485 6.87784L13.9529 13.2059C14.1587 13.4117 14.2389 13.6854 14.1764 13.9694C14.114 14.2536 13.9269 14.4687 13.6539 14.569L11.7767 15.2627L5.56787 9.05387L5.56802 9.05402Z"
				fill="currentColor"></path>
        </symbol>
        <symbol id="svg_default_close" viewBox="0 0 40 40">
            <g fill="none">
                <path d="M26 14L14 26" stroke="currentColor"
				stroke-width="2" stroke-linecap="round"></path>
                <path d="M14 14L26 26" stroke="currentColor"
				stroke-width="2" stroke-linecap="round"></path>
            </g>
        </symbol>
        <symbol id="svg_search_input" viewBox="0 0 20 21">
            <circle fill="none" cx="9" cy="9" r="7.5"
				stroke="currentColor"></circle>
            <path fill="currentColor"
				d="M15.593 13.472H16.593V19.472H15.593z"
				transform="rotate(-45 16.093 16.472)"></path>
        </symbol>
        <symbol id="icon_product" viewBox="0 0 16 16">
            <path fill-rule="evenodd" clip-rule="evenodd"
				d="M16 8C16 3.58172 12.4183 0 8 0C3.58172 0 0 3.58172 0 8C0 12.4183 3.58172 16 8 16C12.4183 16 16 12.4183 16 8ZM1.2 8C1.2 4.24446 4.24446 1.2 8 1.2C11.7555 1.2 14.8 4.24446 14.8 8C14.8 11.7555 11.7555 14.8 8 14.8C4.24446 14.8 1.2 11.7555 1.2 8ZM9 5C9 5.552 8.552 6 8 6C7.448 6 7 5.552 7 5C7 4.4475 7.448 4 8 4C8.552 4 9 4.4475 9 5ZM8.79462 7.9067C8.74841 7.50883 8.41027 7.2 8 7.2C7.55817 7.2 7.2 7.55817 7.2 8V11.6L7.20538 11.6933C7.25159 12.0912 7.58973 12.4 8 12.4C8.44183 12.4 8.8 12.0418 8.8 11.6V8L8.79462 7.9067Z"
				fill="#6B768B"></path>
        </symbol>
        <symbol id="svg_gnb_cosmetic1" viewBox="0 0 65 15">
            <g fill="currentColor" fill-rule="evenodd"
				clip-rule="evenodd">
                <path
				d="M1.09961 13.5867V1.42188H4.23704L7.90344 10.3821L11.5853 1.42188H14.7228V13.5867H11.696V7.51184L11.5035 7.47394L8.99998 13.5867H6.82241L4.31892 7.47394L4.12639 7.51184V13.5867H1.09961Z"></path>
                <path
				d="M15.9224 13.6866L15.9219 13.6882H15.9228V13.6867L15.9224 13.6866ZM19.0781 13.5867H16.0623L20.1828 1.42188H24.1044L28.226 13.5867H25.2102L24.0233 10.1052L19.8791 11.2461L19.0781 13.5867ZM23.2502 7.85967L22.1447 4.5784L20.7936 8.54378L23.2502 7.85967Z"></path>
                <path
				d="M27.5977 3.88624V1.41797H38.4748V3.88624H34.5491V13.5828H31.5223V3.88624H27.5977Z"></path>
                <path
				d="M43.176 1.56395C43.9868 1.25823 44.8594 1.08984 45.8084 1.08984C47.067 1.08984 48.1666 1.35044 49.0794 1.8528C49.9731 2.35885 50.7815 3.09887 51.5059 4.07607L49.5438 5.72395C49.1602 5.07812 48.6899 4.55777 48.1312 4.16606L48.1302 4.16537C47.5205 3.74885 46.7705 3.54299 45.8862 3.54299C45.3294 3.54299 44.8201 3.65371 44.3732 3.84604L44.3718 3.84666C43.91 4.05378 43.5268 4.32512 43.2067 4.67748C42.872 5.04332 42.6179 5.45827 42.4427 5.93574C42.2518 6.42989 42.1727 6.95427 42.1727 7.49092C42.1727 8.02662 42.2516 8.55084 42.4424 9.03015C42.6025 9.50805 42.8568 9.92223 43.1916 10.273C43.5112 10.64 43.9108 10.9282 44.3893 11.1196C44.8391 11.3283 45.3502 11.4227 45.9186 11.4227C46.3595 11.4227 46.772 11.3755 47.1558 11.2633C47.5085 11.1672 47.8439 11.0069 48.1608 10.8004L48.1617 10.7998C48.4484 10.6087 48.7346 10.3543 48.988 10.069L48.9901 10.0664C49.2034 9.80943 49.4046 9.52788 49.6033 9.21006L51.525 10.917C50.8318 11.8628 50.0532 12.5738 49.1585 13.096C48.2294 13.6134 47.1148 13.8898 45.8106 13.8898C44.8615 13.8898 43.9889 13.7215 43.1781 13.4157C42.3523 13.0939 41.6497 12.6513 41.07 12.1024L41.0691 12.1016C40.4603 11.5384 40.0026 10.8677 39.6663 10.0727L39.6654 10.0706C39.3155 9.29447 39.147 8.43916 39.147 7.48984V7.38984H39.1455C39.1571 6.49484 39.3261 5.67221 39.6638 4.90766C40.0002 4.1286 40.4582 3.45725 41.0679 2.87723C41.6476 2.32833 42.3492 1.88577 43.176 1.56395Z"></path>
                <path
				d="M60.7084 13.6711V13.6726H60.7088V13.6711H60.7084ZM63.8356 13.5711H60.8088V7.75291L55.9701 9.08034V13.5711H52.9434V1.40625H55.9701V6.63499L60.8088 5.29178V1.40625H63.8356V13.5711Z"></path>
            </g>
        </symbol>
    </svg>
	</div>
	<script>
    jQuery(document).ready(function ($) {
        $(document).on('mousedown', '.ga_data_layer', function () {
            var gaData = $(this).data('ga_data_layer') || '';
            var data = gaData.toString().split("|");
            var event = data[0] || '',
                category = data[1] || '',
                eventFlow = data[2] || '',
                eventLabel = data[3] || ''
            ;

            if (!event || !category) {
                return true;
            }

            try {
                dataLayer.push({
                    'event': event,
                    'category': category,
                    'event-flow': eventFlow,
                    'event-label': eventLabel
                });
            } catch (e) {
            }
        });
    });
</script>

	<div style="display: none; visibility: hidden;">
		<script type="text/javascript"
			src="//dynamic.criteo.com/js/ld/ld.js?a=96026" async="true"></script>
	</div>
	<script type="text/javascript" id="">window.dataLayer=window.dataLayer||[];dataLayer.push({userId:"undefined"});</script>
	<div style="display: none; visibility: hidden;">

		<script type="text/javascript">window.criteo_q=window.criteo_q||[];var deviceType=/iPad/.test(navigator.userAgent)?"t":/Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent)?"m":"d";window.criteo_q.push({event:"setAccount",account:96026},{event:"setEmail",email:""},{event:"setZipcode",zipcode:""},{event:"setSiteType",type:deviceType},{event:"viewHome"});</script>

	</div>
	<div id="criteo-tags-div" style="display: none;"></div>
</body>
</html>

<script>

$("#btn_submit").on("click", function(e) {
	console.log("가입");
	e.preventDefault();
	// 비어있는지 체크
	// 유효성체크
	
	$("#frm").submit();
})


</script>