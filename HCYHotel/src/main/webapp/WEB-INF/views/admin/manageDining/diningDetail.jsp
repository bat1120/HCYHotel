<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/common/admin/jsp/common_url.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>다이닝 정보</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <c:import url="../common/import/header.jsp"/>
    <script type="text/javascript">
    $(function(){
    	
    })//ready
    function removeDining( dc ){
    	$("#diningCode").val(dc)
    	$("#hidFrm").attr("action","removeDining.do")
    	$("#hidFrm").submit()
    }//removeMem
    function goList(){
    	location.href="goManageDining.do"
    }//goList
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


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-light navbar-light">
                <a href="goDashboard.do" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>HCY</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle" src="${ serverPath }img/user.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">관리자</h6>
                        <span>${ id }</span>
                    </div>
                </div>
                <div class="navbar-nav w-100">
                    <a href="goDashboard.do" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>대시보드</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i class="fa fa-laptop me-2"></i>회원관리</a>
                        <div class="dropdown-menu bg-transparent border-0">
                            <a href="goManageMem.do" class="dropdown-item">사업자</a>
                            <a href="goManageMem.do?memFlag=mem" class="dropdown-item">개인</a>
                        </div>
                    </div>
                    <a href="widget.html" class="nav-item nav-link"><i class="fa fa-th me-2"></i>공지사항관리</a>
                    <a href="goQuestion.do" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>문의사항관리</a>
                    <a href="goManageHotel.do" class="nav-item nav-link"><i class="fa fa-table me-2"></i>호텔관리</a>
                    <a href="goManageDining.do" class="nav-item nav-link active"><i class="fa fa-chart-bar me-2"></i>다이닝관리</a>
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-light navbar-light sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-hashtag"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <img class="rounded-circle me-lg-2" src="${ serverPath }img/user.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">${id }</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-light border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">마이페이지</a>
                            <a href="logout.do" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->
					<div class="col-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">상세정보</h6>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" value="${diningInfo.diningName }" readonly="readonly">
                                <label for="floatingInput">다이닝 이름</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" readonly="readonly" value="${diningInfo.hotelName }">
                                <label for="floatingPassword">호텔이름</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" readonly="readonly" value="${diningInfo.operatingTime }">
                                <label for="floatingPassword">서비스시간</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" readonly="readonly" value="${diningInfo.capacity }">
                                <label for="floatingPassword">수용인원</label>
                            </div>
                            <div class="form-floating mb-3">
                                <input type="text" class="form-control" readonly="readonly" value="${diningInfo.information }">
                                <label for="floatingPassword">정보</label>
                            </div>
                            <div class="form-floating">
                               <h3 class="mb-4">상세설명</h3><textarea class="form-control" id="content" style="height: 150px;" readonly="readonly" ><c:out value="${diningInfo.description }"/></textarea>
                            </div>
                            
                            <!-- 사진 -->
                            <div class="col-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">사진</h6>
                            <c:choose>
                            <c:when test="${empty files }">
	                            <div class="owl-carousel testimonial-carousel">
	                                <div class="testimonial-item text-center">
	                                    <img class="img-fluid rounded-circle mx-auto mb-1" src="http://localhost/HCYHotel/common/business/img/noImage.png" style="width: 100%; height: 100%;">
	                                    <h5 class="mb-1">사진 없음</h5>
	                                </div>
	                            </div>
                            </c:when>
                            <c:otherwise>
                            <c:forEach var="file" items="${files }" varStatus="i">
	                            <div class="owl-carousel testimonial-carousel">
	                                <div class="testimonial-item text-center">
	                                    <img class="img-fluid rounded-circle mx-auto mb-4" src="http://localhost/HCYHotel/common/business/img/${file}.jpg" style="width: 100%; height: 100%;">
	                                </div>
	                            </div>
                            </c:forEach>
                            </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                            <!--  -->
                            
                            <div class="form-floating mb-3">
                                <input type="button" class="btn btn-danger btn-sm" value="다이닝삭제" onclick="removeDining('${param.diningCode}')"/>
                                <input type="button" class="btn btn-secondary btn-sm" value="목록으로" onclick="goList()"/>
                                
                            </div>
                            
                        </div>
                        </div>
                        
                        <div class="col-12">
                        <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">작성된 다이닝 리뷰</h6>
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">번호</th>
                                        <th scope="col">작성자</th>
                                        <th scope="col">내용</th>
                                        <th scope="col">평점</th>
                                        <th scope="col">리뷰작성일</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="review" items="${ reviewList }" varStatus="i">
                                    <tr>
                                        <th scope="row"><c:out value="${ i.count }"/></th>
                                        <td><c:out value="${ review.id }"/></td>
                                        <td><c:out value="${ review.content }"/></td>
                                        <td><c:out value="${ review.rating }"/></td>
                                        <td><c:out value="${ review.inputDate }"/></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    
                    
            <c:import url="../common/import/footer.jsp"/>
        </div>
        <!-- Content End -->

<form id="hidFrm" method="post">
	<input type="hidden" id="diningCode" name="diningCode">
</form>
        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
<c:import url="../common/import/common_script.jsp"/>

</body>

</html>