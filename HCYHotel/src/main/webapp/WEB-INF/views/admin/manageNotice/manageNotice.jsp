<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ include file="/common/admin/jsp/common_url.jsp" %>
<!DOCTYPE html>
<html lang="en">
<% pageContext.setAttribute("currentPage", 1); %>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<head>
    <meta charset="utf-8">
    <title>공지사항 관리</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
    <style type="text/css">
    .custom-link {
      font-family: Arial, sans-serif; /* 원하는 폰트 패밀리 지정 */
      font-size: 16px; /* 글자 크기 */
      font-weight: bold; /* 글자 두께 */
      text-decoration: none; /* 밑줄 제거 */
      color: #007bff; /* 링크 색상 */
    }

    /* 호버 시 스타일 변경 */
    .custom-link:hover {
      color: #0056b3; /* 호버 시 변경할 색상 */
    }
    </style>

    <c:import url="../common/import/header.jsp"/>
    <script type="text/javascript">
    $(function(){
    })//ready
    
    function goNoticeDetail(nc){
    	$("#noticeCode").val(nc)
    	$("#detailFrm").submit()
    }//goNoticeDetail
    
    function paging(page){
    	if(page == $("#curruntPage").val()){
    		return;
    	}//if
    	$(".none").attr("class","custom-link")
    	$("#"+page+"page").attr("class","none")
    	$("#curruntPage").val(page)
    	
    	var data = {"currentPage":page}
    	$.ajax({
            url : "noticePagingAjax.do",
            type : "post",
            data : data,
            dataType : "json",
            error(xhr){
                console.log(xhr.status)
            },
            success(jsonArr){
                
	                var output = "";
                $.each(jsonArr.noticeList,function(idx,element){
                    output += "<tr>"
                    output += "<th scope='row'>"
                    output += (idx+1)
                    output += "</th>"
                    output += "<td>"
                    output += element.title
                    output += "</td>"
                    output += "<td>"
                    output += element.inputDate
                    output += "</td>"
                    output += "<td>"
                    output += element.viewCnt
                    output += "</td>"
                    output += "<td><input type='button' onclick='goNoticeDetail"
                    output += "('"
                    output += element.noticeCode
                    output += "')' value='상세보기' class='btn btn-info btn-sm'></td>"
                    output += "</tr>"
                })//each
                $("#tbody").html(output)
            }//success
        })//ajax
    }//paging
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
                    <a href="goManageNotice.do" class="nav-item nav-link active"><i class="fa fa-th me-2"></i>공지사항관리</a>
                    <a href="goQuestion.do" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>문의사항관리</a>
                    <a href="table.html" class="nav-item nav-link"><i class="fa fa-table me-2"></i>호텔관리</a>
                    <a href="chart.html" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>다이닝관리</a>
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


            <div class="bg-light rounded h-100 p-4">
                            <h6 class="mb-4">공지사항 관리</h6>
                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th scope="col">번호</th>
                                            <th scope="col">제목</th>
                                            <th scope="col">게시일</th>
                                            <th scope="col">조회수</th>
                                            <th scope="col">자세히보기</th>
                                        </tr>
                                    </thead>
                                    <tbody id="tbody">
                                    	<c:forEach var="noticeList" items="${noticeList }" varStatus="i">
	                                        <tr>
	                                            <th scope="row">${paging.startNum+i.index}</th>
	                                            <td>${noticeList.title }</td>
	                                            <td>${noticeList.inputDate }</td>
	                                            <td>${noticeList.viewCnt }</td>
	                                            <td><input type="button" onclick="goNoticeDetail('${noticeList.noticeCode}')" value="상세보기" class="btn btn-info btn-sm"></td>
	                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                                <div style="margin: auto; text-align: center;">
                                <c:forEach var="i" begin="1" end="${paging.totalPage }">
                                <a style="text" id="${i }page" onclick="paging('${i}')" class="${i==1?'none':'custom-link' }">&lt;${i}&gt;</a>&nbsp;
                                </c:forEach>
                                </div>
                            </div>
                        </div>
                        <form action="goNoticeDetail.do" method="post" id="detailFrm">
                        <input type="hidden" name="noticeCode" id="noticeCode">
                        <input type="hidden" name="curruntPage" id="curruntPage" value="1">
                        </form>

            <c:import url="../common/import/footer.jsp"/>
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>
<c:import url="../common/import/common_script.jsp"/>

</body>

</html>