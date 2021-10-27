<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글쓰기</title>
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
    <div class="row" style="padding-top:250px">
        <div class="col">
                <h3>자유게시판 글쓰기</h3>
                <form action="/pageinsert.do" method="post">
                <input type="title" name="title" class="form-control mt-4 mb-2"
                    placeholder="제목을 입력해주세요." required>
                <div class="form-group">
                    <textarea class="form-control" rows="10" name="content"
                        placeholder="내용을 입력해주세요" required></textarea>
                 </form>
                    <div class="input-group d-md-flex justify-content-md-end p-1">
                    <button class="btn btn-outline-secondary" type="button"><i class="bi bi-card-image"></i></button>
                    <button class="btn btn-outline-secondary" type="button"><i class="bi bi-link-45deg"></i></button>
                    </div>
                </div>

                <!-- <button type="submit" class="btn btn-secondary mb-3">제출하기</button> -->
                <div class="d-grid gap-2 col-6 mx-auto m-5">
                    <button class="btn btn-secondary" type="submit" value="추가">글올리기</button>
                  </div>
            </form>
        </div>
    </div>
</div>

	<jsp:include page="/Tail.jsp"/>
</body>
</html>