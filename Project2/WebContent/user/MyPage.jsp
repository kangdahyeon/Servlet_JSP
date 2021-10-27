<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>

  <link rel="stylesheet" href="../css/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/e13e35fb00.js" crossorigin="anonymous"></script>
  <script src="../js/bootstrap.bundle.min.js"></script>
  <script src="../js/jquery-3.6.0.min.js"></script>
  <script src="../js/slick.min.js"></script>
  <link rel="stylesheet" href="../css/slick-theme.css">
  <link rel="stylesheet" href="../css/slick.css">
  <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
  <link rel="stylesheet" href="../css/movie.css">
  <script src="../js/movie.js" defer></script>
<link rel="stylesheet" href="../css/albery.css">
<script src="../js/albery.js"></script>
<link rel="stylesheet" href="../css/nav-fo.css">
<style>
  .carousel-item img {
  width: 100%;
  height: 100%;
  text-align: center;
}

  .back_img {
    background: url("https://i.ytimg.com/vi/dsmpKyTDOCY/maxresdefault.jpg") center/cover no-repeat;
    background-position: center top;
    background-size: cover;
  
  }
  .card-body {
    height: 250px;
  }
  .card-text {
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 4; /* 라인수 */
    -webkit-box-orient: vertical;
    word-wrap:break-word; 
  }
  
 
</style>

</head>
<body>

<jsp:include page="/Header.jsp"/>

	<!-- EL(Expression Language)
		 : 데이터 보관소들에 들어있는 객체나, 리스트 또는 맵 등에 접근할 수 있다.
		   actiontag를 사용하는 것보다 훨씬 간편하게 사용할 수 있어서 자주 사용됨
		   사용법1 : ${member.no} or ${member["no"]}
		   따로 scope를 지정하지 않기 때문에 jspContext -> ServletRequest -> HttpSession -> ServletContext순으로 데이터 보관소 검색
		   사용법 2 : ${requestScope.member.no} or ${requestScope.member["no"]}
		  scope 지정방식
	 -->
	<form action="/user/update.do" method="post">
<!-- 배경 상단 백그라운드 이미지  -->
  <div class="back_img" ></div>




  <!-- 영화  포스터 및 정보 섹션 -->
<section id="movie">
  
    <div class="poster" style="border-radius: 50%; width: 300px; height: 300px; overflow: hidden;" >
      <img style="border-radius: 50%; width: 300px; height: 300px;" src="https://post-phinf.pstatic.net/MjAxOTExMjdfMjM0/MDAxNTc0ODQzOTAyODQ2.60SGvZ1KEbn_wQcBxW7IrUSeT1Olz4tsWzSjxyWq03Qg.5Yw8mzDGDTkMPlz5Gg8BLK6B9Os_THYr4wndt8xn7mMg.JPEG/Comeback_poster_01-re.jpg?type=w1200">

    </div>

    <div class="about_movie">
    	<input type="hidden" name="userNo" id="userNo" value="${User.userNo }">
      <h4><strong> ${User.name } 님</strong></h4><br>
      	<strong>이 름 : </strong><input type="text" name="name" value="${User.name }"><br><br>
		<strong>이 메 일 : </strong><input type="text" name="email" value="${User.email }"><br><br>
		<strong>비밀번호 : </strong><input type="text" name="pwd" value="${User.pwd }"><br><br>
		<input type="submit" value="저장">
		<input type="button" value="삭제" onclick="location.href='/user/delete.do?userNo=${User.userNo }';">
		<input type="button" value="취소" onclick="location.href='../main.do';">
     

        
    </div>
  </section>

</form>

 <!--첫 번째 섹션-->
 





 <div class="back_color">
  <section class="movie_content">

        <div class="d-none d-md-block">
          <div class="container">
              <div class="row">
                  <div class="col-md-10 text-black">
                      <h5><strong>내가 남긴 리뷰</strong></h5>
            </div>
          </div>
      </div>
    </div>
</section>




<!--다섯 번째 섹션-->

<section class="movie_content">

<div class="col">
            <table class="table table-hover" style="cursor: pointer;">
                <thead>
                  <tr>
                    <th scope="col">No</th>
                    <th scope="col">글쓴이</th>
                    <th scope="col">제목</th>
                    <th scope="col">조회수</th>
                    <th scope="col">작성일</th>
                  </tr>
                </thead>
              <!--   <tbody> -->
               	 <c:forEach var="review" items="${myReviews }">
	                <tr>
	                  	<td>${review.review_no}</td>
						<td>${review.email}</td>
						<td>${review.title}</td>
						<td>${review.hit}</td>
						<td>${review.review_regdate}</td>
					 </tr>
				 </c:forEach>
               <!--  </tbody> -->
              </table>
              <!--글쓰기 버튼 자리 지정-->
         
        </div>
        <div class="container">
  <div class="row m-5">
    <div class="col-5">
    </div>
    <div class="col">
      <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
        <div class="btn-group" role="group" aria-label="First group">
          <button type="button" class="btn btn-outline-secondary"><i class="bi bi-chevron-double-left"></i></button>
          <button type="button" class="btn btn-outline-secondary">1</button>
          <button type="button" class="btn btn-outline-secondary">2</button>
          <button type="button" class="btn btn-outline-secondary">3</button>
          <button type="button" class="btn btn-outline-secondary">4</button>
          <button type="button" class="btn btn-outline-secondary"><i class="bi bi-chevron-double-right"></i></button>
        </div>
      </div>
    </div>
    <div class="col-3">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="마이페이지 내 검색" aria-label="Input group example" aria-describedby="btnGroupAddon2">
        <button type="button" class="btn btn-outline-secondary"><span class="bi bi-search"></i></button>
      </div>
    </div>
  </div>
</div>

</section>
	
	<jsp:include page="/Tail.jsp"/> 
</body> 
</html>