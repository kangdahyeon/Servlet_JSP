<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
	<link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../js/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600' />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
</head>
<body>
	<jsp:include page="/Header.jsp"/>
<div class="container">
    <div class="row" style="padding-top:120px">
        <div class="col-2">
          <h5>게시판 선택</h5>
          <hr>
          <!--왼쪽 게시판 내 선택상자-->
          <div class="list-group">
            <a href="reviewlist.do?='리뷰게시판'" class="list-group-item list-group-item-action">리뷰게시판</a>
            <a href="threadlist.do?='자유게시판'" class="list-group-item list-group-item-action active bg-dark" aria-current="true">자유게시판</a>
            <a href="Cinemaway_QNA1.html" class="list-group-item list-group-item-action">고객센터</a>
          </div>
        </div>
        <!--게시판 테이블 시작-->
        <div class="col">
            <table class="table table-hover" style="cursor: pointer;">
                <thead>
                  <h2>자유게시판</h2>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">글쓴이</th>
                    <th scope="col">제목</th>
                    <th scope="col">조회수</th>
                    <th scope="col"></th>
                  </tr>
                </thead>
              <!--   <tbody> -->
               	 <c:forEach var="nthread" items="${threads }">
	                <tr onclick="location.href='/boardDetail.do?=${review.review_no}'">
	                  	<td>${nthread.thread_no}</td>
						<td>${nthread.email}</td>
						<td>${nthread.title}</td>
						<td>${nthread.hit}</td>
						<td></td>
					 </tr>
				 </c:forEach>
               <!--  </tbody> -->
              </table>
              <!--글쓰기 버튼 자리 지정-->
              <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="button" class="btn btn-outline-secondary" onclick="location.href ='/pageinsert.do?=글쓰기'"><i class="bi bi-pen"></i>글쓰기</button>
              </div>
        </div>
    </div>
</div>
<div class="container">
  <div class="row m-5">
    <div class="col-5">
    </div>
    <div class="col">
    <c:set var="page" value="${(param.p == null)?1:param.p }"/>
    <c:set var="startNum" value="${page-(page-1)%5}"/>
      <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
        <div class="btn-group" role="group" aria-label="First group">
          <button type="button" class="btn btn-outline-secondary"><i class="bi bi-chevron-double-left"></i></button>
          <c:forEach var="i" begin="0" end="4">
          <button type="button" class="btn btn-outline-secondary" onclick="location.href='?p=${1+i}&t=&q'">${1+i}</button>
          </c:forEach>
          <button type="button" class="btn btn-outline-secondary"><i class="bi bi-chevron-double-right"></i></button>
        </div>
      </div>
    </div>
    <div class="col-3">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="게시판 내 검색" aria-label="Input group example" aria-describedby="btnGroupAddon2">
        <button type="button" class="btn btn-outline-secondary"><span class="bi bi-search"></i></button>
      </div>
    </div>
  </div>
</div>
	<jsp:include page="/Tail.jsp"/>
</body>
</html>