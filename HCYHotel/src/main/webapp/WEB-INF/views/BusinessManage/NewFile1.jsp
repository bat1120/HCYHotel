<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>HCYCombined</title>
  <!-- FullCalendar CSS -->
  <link href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/main.min.css" rel="stylesheet">
  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- FullCalendar core JavaScript -->
  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/main.min.js"></script>
  <!-- FullCalendar locales -->
  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.0/locales/ko.js"></script>
  <style>
    /* FullCalendar를 담을 컨테이너의 스타일 */
    #calendar {
      max-width: 900px;
      margin: 0 auto;
    }
 table {
        border-collapse: collapse; /* 테두리가 서로 겹치도록 설정 */
        border: 1px solid black; /* 테두리 스타일과 두께 설정 */
    }

    th, td {
        border: 1px solid black; /* 테이블 셀의 테두리 스타일과 두께 설정 */
        padding: 8px; /* 셀 안의 여백 설정 (예시로 추가한 스타일) */
    }
  </style>
</head>
<body>

<div id='calendar'></div>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth', // 초기 뷰를 월간 달력으로 설정
      locale: 'ko', // 한국어 설정
      events: [
  		//이벤트 추가
        // 추가적인 일정들을 추가할 수 있습니다.
      ]
    });
    calendar.render(); // 캘린더를 화면에 렌더링합니다.
  });
</script>
<div  style="display: flex; justify-content: center; align-items: center; height: 200px;">
<table style="width:900px;bolder:1">
<tr>
<th>객실명</th>
<th>아이디</th>
<th>예약자명</th>
<th>예약기간</th>
<th>예약상태</th>
</tr>
<tr>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
<td></td>
</tr>
</table>
</div>

</body>
</html>
