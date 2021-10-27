<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리뷰게시판</title>
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
<div class="container gap-2" style="padding-top: 150px">
    <div class="row">
        <div class="col-2">
          <h5>게시판 선택</h5>
          <hr>
          <!--왼쪽 게시판 내 선택상자-->
          <div class="list-group">
            <a href="reviewlist.do?='리뷰게시판'" class="list-group-item list-group-item-action bg-dark active" aria-current="true">
              리뷰게시판
            </a>
            <a href="threadlist.do?='자유게시판'" class="list-group-item list-group-item-action">자유게시판</a>
            <a href="Cinemaway_QNA1.html" class="list-group-item list-group-item-action">고객센터</a>
          </div>
        </div>
        <!--게시판 테이블 시작-->
        <div class="col">
          <h2>리뷰게시판</h2>
          <hr>
            <h6><b>${review.title }</b></h6><p style="text-align:right;">${review.email }</p>
            <hr>
                <p>${review.content }</p>
              <hr>
          <div class="form-group">
            <textarea class="form-control" rows="3" name="bdContent"
                placeholder="댓글을 작성해주세요"></textarea>
              </div>
              <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                <button type="submit" class="btn btn-outline-secondary">댓글달기</button>
              </div>
        </div>    
        </div>
        </div>
              <!--글쓰기 버튼 자리 지정-->
        </div>
    </div>
</div>
	<jsp:include page="/Tail.jsp"/>
</body>
</html>