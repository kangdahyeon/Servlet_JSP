<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>The Wailing</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="https://kit.fontawesome.com/e13e35fb00.js" crossorigin="anonymous"></script>
  <script src="js/bootstrap.bundle.min.js"></script>
  <script src="js/jquery-3.6.0.min.js"></script>
  <script src="js/slick.min.js"></script>
  <link rel="stylesheet" href="css/slick-theme.css">
  <link rel="stylesheet" href="css/slick.css">
  <link rel="stylesheet" href='http://fonts.googleapis.com/css?family=Dosis:400,700,500|Nunito:300,400,600'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
  <link rel="stylesheet" href="css/movie.css">
  <script src="js/movie.js" defer></script>
<link rel="stylesheet" href="css/albery.css">
<script src="js/albery.js"></script>
<link rel="stylesheet" href="css/nav-fo.css">

<style>
  .back_img {
    background: url("image1/12/11.jpg") center/cover no-repeat;
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





  <!-- 배경 상단 백그라운드 이미지  -->
  <div class="back_img">
  </div>




  <!-- 영화  포스터 및 정보 섹션 -->
<section id="movie">
  
    <div class="poster">
      <img src="image1/12/The_Wailing_(film).png">
      
    </div>
    <div class="about_movie">

      <h2>곡성(哭聲)</h2>
      <sub>2015 ・ 미스터리/스릴러/드라마 ・ 한국</sub><br><br>
      <p>The Wailing</p>
      <p>평균 ★3.8 (41만명)</p>
      
      
      <!-- 리뷰 모달 기능 -->
      
        <!-- Button trigger modal -->
<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
  <i class="fas fa-pencil-alt"></i>  Review
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Cinemaway</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <h2 style="text-align: center;">리뷰 작성하기</h2>
        <form action="review.do" method="post">
        제목 <input type="text" name="title" size="50%">
        <textarea name="review" id="review" cols="55" rows="20" style="margin-top: 20px;" placeholder=" 텍스트를 입력하세요."></textarea>
       
        
        <div class="filebox"> 
          <label for="imgPath">업로드</label> 
          <input type="file" id="imgPath" name="imgPath"> 
          
          <input class="upload-name" value="파일선택">
        </div>

          
      </div>
      <div class="modal-footer">
        <span class="icon"><i class="fab fa-twitter"></i>
          <i class="fab fa-instagram"></i>
          <i class="fab fa-facebook-square"></i></span>
        
        <input type="submit" class="btn btn-primary sign_up" data-bs-dismiss="modal" value="리뷰등록">
        <input type="button" class="btn btn-secondary" data-bs-dismiss="modal" value="닫기">
      </form>
      </div>
        
    </div>
  </div>
</div>

  
  </div>
  </section>


 <!--첫 번째 섹션-->
 



 <div class="back_color">
<section class="movie_content">

<div class="d-none d-md-block">
  <div class="container">
      <div class="row">
          <div class="col-md-10 text-black">
              <h4>기본 정보</h4><br>
              <p>곡성(哭聲)<br>
                2015 · 한국 · 미스터리<br>
                시간 36분 · 15세<br>
                <br>낯선 외지인이 나타난 후 벌어지는 의문의 연쇄 사건들로 마을이 발칵 뒤집힌다. 
                경찰은 집단 야생 버섯 중독으로 잠정적 결론을 내리지만 모든 사건의 원인이 그 외지인 
                때문이라는 소문과 의심이 걷잡을 수 없이 퍼져 나간다. 경찰 ‘종구’(곽도원)는 현장을 
                목격했다는 여인 ‘무명’(천우희)을 만나면서 외지인에 대한 소문을 확신하기 시작한다. 
                딸 ‘효진’이 피해자들과 비슷한 증상으로 아파오기 시작하자 다급해진 ‘종구’. 
                외지인을 찾아 난동을 부리고, 무속인 ‘일광’(황정민)을 불러 들이는데...</p>
        </div>
      </div>
  </div>
</div>

</section>


   <!--두 번째 섹션-->

    <section class="movie_content">

      
   <div class="box-padding grey-bg">
    <div class="container">
      <h5><i class="fas fa-map-marker-alt"></i> 전남 곡성</h5><br>
        <div class="row">
          <div class="col-md-6">
            <div class="box-padding">
                  <!--캐러셀 영역 설정-->
                  <div class="carousel slide" data-bs-ride="carousel" id="movie1"> 
                      <!--캐러셀 슬라이드 영역-->
                      <div class="carousel-inner">
                          <!--캐러셀 슬라이드 콘텐츠 추가-->
                          <div class="img-wrap carousel-item active">
                              <img src="image1/12/66.jpg">
                              <!--캐러셀 슬라이드 제목 및 설명 추가-->
                             
                          </div>
                          <div class="carousel-item">
                              <img src="image1/12/44.jpg">
                          </div>
                          <div class="carousel-item">
                              <img src="image1/12/55.jpg">
                          </div>
                          
                      </div>
          
                      <!--캐러셀 좌우 버튼 영역-->
                      <a href="#movie1" class="carousel-control-prev" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon"></span>
                      </a>
                      <a href="#movie1" class="carousel-control-next" data-bs-slide="next">
                          <span class="carousel-control-next-icon"></span>
                      </a>
                  </div>
        </div>
    </div>
    <div class="col-md-6">
      <div id="map" style="width:100%;height:425px;"></div>
    
</div>
</div>
</div>
</div>
</section>

<!--세 번째 섹션-->

<section class="movie_content" style="border-bottom: transparent;">

<div class="box-padding grey-bg">
  <div class="container">
      <div class="row">
        <h3>여행지에 대한 소개</h3><br>
        <div id="carouselFourColumn" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
          <li data-target="#carouselFourColumn" data-slide-to="0" class="active"></li>
          <li data-target="#carouselFourColumn" data-slide-to="1"></li>
          <li data-target="#carouselFourColumn" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row">
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/111.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/222.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/333.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/444.jpg" class="w-100">
              </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
          <div class="row">
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/555.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/666.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/111.jpg" class="w-100">
              </div>
              </div>
              <div class="col-xl-3 p-1">				
              <div class="card">
                <img src="image1/12/222.jpg" class="w-100">
              </div>
              </div>
            </div>
          </div>
          </div>
          <a class="carousel-control-prev" href="#carouselFourColumn" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
          <a class="carousel-control-next" href="#carouselFourColumn" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
        </div>
  </div>
</div>
</div>

</section>

  <!--네 번째 섹션-->

  <section class="movie_content">

  <div class="d-none d-md-block box-padding-big">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                
                <p>석곡면 여운마을에는 영화 ''곡성''에 등장했던 ''외지인의 집''이 있다. 
                  영화 ''곡성''은 낯선 외지인(일본 사람)이 나타난 후 벌어지는 의문의 연쇄살인사건에 대한 미스터리한 이야기이다. 
                  주인공 종구가 집을 부수며 이 마을을 떠나라고 외치던 외지인의 집은 마을 끝 쪽 마지막 집, 산 깊숙이 자리 잡고 있다. 
                  또한 이곳에서 석곡공용터미널 방향으로 15분 가량 차로 이동하면 석곡초등학교가 나온다. 
                  석곡초등학교 앞에는 종구가 딸 효진에게 머리핀을 사줬던 청림문구사가 있다.
                  
                </p>
            </div>
        </div>
    </div>
</div>
</section>

<!--다섯 번째 섹션-->

<section class="movie_content">

<div class="box-padding grey-bg">
  <div class="container">
      <div class="row">
        <div class="aa text-black"><h3>여행지 리뷰</h3></div>
      </div>
      
        <div id="carouselThreeColumn" class="carousel slide" data-ride="carousel">
          <ol class="carousel-indicators">
          <li data-target="#carouselThreeColumn" data-slide-to="0" class="active"></li>
          <li data-target="#carouselThreeColumn" data-slide-to="1"></li>
          <li data-target="#carouselThreeColumn" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="row">
              <div class="col-xl-4 p-1">				
              <div class="card">
                <img src="image1/12/6666.jpg" class="w-100">
                <div class="card-body">
                  <h5 class="card-title">사랑하는 한용원</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">사랑하는 한용원님과 좋은 여행지 다녀왔습니다. 이렇게 좋은 날씨에 한용원님과 이곳저곳
                                      다니면서 맛있는 맛집들도 돌아다녔습니다. 사랑하는 연인과 같이 여행하기 좋은곳입니다.
                  </p>
                  </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="image1/12/5555.jpg" class="w-100">
                  <div class="card-body">
                    <h5 class="card-title">행복한 하루 그리고 한용원</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">한용원님이 추천하신 여행지 너무 좋았어요 가족들과 행복한 시간 보냈어요</p>
                  </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="image1/12/4444.jpg" class="w-100">
                    <div class="card-body">
                      <h5 class="card-title">한용원 그는 누구인가</h5>
                      <p class="card-text">평점 ★5.0/5.0</p>
                      <p class="card-text">킹갓제네럴엠페러충무공마제스티하이퍼울트라판타스틱익스트림지니어스화룡정점마스터한용원</p>
                      </div>
                  </div>
                  </div>	
            </div>
          </div>
          <div class="carousel-item">
          <div class="row">
            <div class="col-xl-4 p-1">				
              <div class="card">
                <img src="image1/12/3333.jpg" class="w-100">
                <div class="card-body">
                  <h5 class="card-title">한용원 그는 누구인가</h5>
                  <p class="card-text">평점 ★5.0/5.0</p>
                  <p class="card-text">킹갓제네럴엠페러충무공마제스티하이퍼울트라판타스틱익스트림지니어스화룡정점마스터한용원</p>
                  </div>
              </div>
              </div>	
              <div class="col-xl-4 p-1">				
                <div class="card">
                  <img src="image1/12/2222.jpg" class="w-100">
                  <div class="card-body">
                    <h5 class="card-title">사랑하는 한용원</h5>
                    <p class="card-text">평점 ★5.0/5.0</p>
                    <p class="card-text">사랑하는 한용원님과 좋은 여행지 다녀왔습니다. 이렇게 좋은 날씨에 한용원님과 이곳저곳
                                        다니면서 맛있는 맛집들도 돌아다녔습니다. 사랑하는 연인과 같이 여행하기 좋은곳입니다.
                    </p>
                    </div>
                </div>
                </div>	
                <div class="col-xl-4 p-1">				
                  <div class="card">
                    <img src="image1/12/1111.jpg" class="w-100">
                    <div class="card-body">
                      <h5 class="card-title">행복한 하루 그리고 한용원</h5>
                      <p class="card-text">평점 ★5.0/5.0</p>
                      <p class="card-text">한용원님이 추천하신 여행지 너무 좋았어요 가족들과 행복한 시간 보냈어요</p>
                    </div>
                    </div>
                  </div>	
            </div>
          </div>
          <a class="carousel-control-prev" href="#carouselThreeColumn" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
          <a class="carousel-control-next" href="#carouselThreeColumn" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only"></span>
          </a>
        </div>
        </div>
      </div>
  </div>

</section>
</div> <!--a클라스 마지막-->
 <!-- 푸터 영역-->
 <footer class="ht-footer full-width-ft">
	<div class="row">
		<div class="flex-parent-ft">
			<div class="flex-child-ft item1">
				 <a href="#"><img class="logo" src="images/logo1.png" alt=""></a>
				 <p>비트캠프 | <br>
                    서울 강남구 강남대로94길 20, 삼오빌딩(5층 ~ 9층)</p>
				<p>Bitcamp : <a href="#">JAVA 211 B-4</a></p>
			</div>
			<div class="flex-child-ft item2">
				<h4>Resources</h4>
				<ul>
					<li><a href="#">서비스 이용약관</a></li> 
					<li><a href="#">개인정보 처리방침</a></li>
					<li><a href="#">회사 안내</a></li>
				</ul>
			</div>
            <div class="flex-child-ft item3">
				<h4>JAVA 211 B-4</h4>
				<ul>
                    <p>한용원<br>오석<br>지은혜<br>강다현<br>이영호</p>
				</ul>
			</div>
			<div class="flex-child-ft item4">
				<h4>Copyright</h4>
				<p>© 2021 by JAVA 211 B-4, Inc. All rights reserved.</p>
			</div>
            <div class="flex-child-ft item5">
				<h4></h4>
				<ul>
				</ul>
			</div>
		</div>
		</div>
	</div>
</footer>
<!-- 푸터 끗-->
        <script>
          
// navbar transparent
const navbar = document.querySelector('#navbar');
const navbarHeight = navbar.getBoundingClientRect().height;

document.addEventListener('scroll',() => {
  // console.log(window.scrollY);
  if(window.scrollY>navbarHeight){
    navbar.classList.add('navbar_display');
  }else{
    navbar.classList.remove('navbar_display');
  }
});



// 모달 부분 파일 불러오기
$("#file").on('change',function(){
  var fileName = $("#file").val();
  $(".upload-name").val(fileName);
});

// 불러오기 끝
        </script>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <script type="text/javascript" src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=f227d02def2a3ff8e10e918268f049ab"></script>
  <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = { 
          center: new kakao.maps.LatLng(35.27742282230146, 127.27614031398059), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };
    
    // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption); 
    </script>

    </body>
    </html>
    
    
    
    
    
    
    

  
  
</body>
</html>