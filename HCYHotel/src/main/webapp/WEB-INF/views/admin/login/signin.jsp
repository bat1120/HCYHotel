<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<%@ include file="/common/admin/jsp/common_url.jsp" %>
<head>
    <meta charset="UTF-8">
    <title>관리자 페이지 로그인</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="${ serverPath }img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="${ serverPath }lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="${ serverPath }lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="${ serverPath }css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="${ serverPath }css/style.css" rel="stylesheet">
    <!-- jQuery CDN 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- jQuery CDN 끝 -->
    
    <script type="text/javascript">
    $(function(){
    	$("#btnLogin").click(function(){
    		var frm = $("#frm")
    		frm.submit()
    	})//click
    })//ready
    </script>
    
</head>

<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sign In Start -->
        <div class="container-fluid">
            <div class="row h-100 align-items-center justify-content-center" style="min-height: 100vh;">
                <div class="col-12 col-sm-8 col-md-6 col-lg-5 col-xl-4">
                    <div class="bg-light rounded p-4 p-sm-5 my-4 mx-3">
                    <form action="login.do" id="frm" method="post">
                        <div class="d-flex align-items-center justify-content-between mb-3">
                            <a href="gologin.do" class="">
                                <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>HCY</h3>
                            </a>
                            <h3>로그인	</h3>
                        </div>
                        <div class="form-floating mb-3">
                            <input type="email" class="form-control" name="id" id="floatingInput" placeholder="name@example.com" value="${idRememberFlag eq 'Y' ? id : ''}">
                            <label for="floatingInput">id</label>
                        </div>
                        <div class="form-floating mb-4">
                            <input type="password" class="form-control" name="pass" id="floatingPassword" placeholder="Password">
                            <label for="floatingPassword">Password</label>
                        </div>
                        <div class="d-flex align-items-center justify-content-between mb-4">
                            <div class="form-check">
                                <input type="checkbox" class="form-check-input" id="rememberId" name="check" value="Y" ${ idRememberFlag eq 'Y' ? 'checked="checked"' : ''}>
                                <label class="form-check-label" for="exampleCheck1">ID 저장</label>
                            </div>
                        </div>
                        <input type="button" class="btn btn-primary py-3 w-100 mb-4" value="로그인" id="btnLogin"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Sign In End -->
    </div>
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${ serverPath }lib/chart/chart.min.js"></script>
    <script src="${ serverPath }lib/easing/easing.min.js"></script>
    <script src="${ serverPath }lib/waypoints/waypoints.min.js"></script>
    <script src="${ serverPath }lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="${ serverPath }lib/tempusdominus/js/moment.min.js"></script>
    <script src="${ serverPath }lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="${ serverPath }lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="${ serverPath }js/main.js"></script>
</body>

</html>