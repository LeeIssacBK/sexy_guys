<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>커뮤니티 웹 사이트</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- 부트스트랩 CSS 추가하기 -->
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/sidebar.css">
  </head>
  <body>
    <div class="container-fluid">
      <div class="row d-flex d-md-block flex-nowrap wrapper">
        <nav class="col-md-3 float-left col-1 pl-0 pr-0 collapse width show" id="sidebar">
          <div class="list-group border-0 card text-center text-md-left">
           <a href="./index.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/logo2.png"><span class="d-none d-md-inline ml-1">GOT CHA !</span>
           </a>
          	<div class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
          		<span class="d-none d-md-inline ml-1">회원가입 | 로그인</span>
          	</div>
            <a href="#usermenu" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
             data-parent="#sidebar" aria-expanded="false">
              <img style="width: 20px;" src="./img/user.svg"><span class="d-none d-md-inline ml-1">마이페이지</span>
            </a>
            <div class="collapse" id="usermenu">
              <a href="userEdit.jsp" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
              <a href="userLogout.jsp" class="list-group-item" data-parent="#sidebar">로그아웃</a>
            </div>
            <a href="#search" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
             data-parent="#sidebar" aria-expanded="false">
              <img style="width: 20px;" src="./img/search.svg"><span class="d-none d-md-inline ml-1">차량검색</span>
            </a>
            <div class="collapse" id="search">
              <div class="input-group p-2" style="background-color: #1c1c1c;">
                <input type="text" class="form-control" placeholder="내용을 입력하세요.">
              </div>
            </div>
            <a href="#commenu" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
             data-parent="#sidebar" aria-expanded="false">
              <img style="width: 20px;" src="./img/user.svg"><span class="d-none d-md-inline ml-1">커뮤니티</span>
            </a>
            <div class="collapse" id="commenu">
              <a href="board.jsp" class="list-group-item" data-parent="#sidebar">자유게시판</a>
              <a href="#" class="list-group-item" data-parent="#sidebar">이차어떄?</a>
            </div>
            <a href="qna.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/message.svg"><span class="d-none d-md-inline ml-1">통계보기</span>
            </a>
            <a href="qna.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/info.png"><span class="d-none d-md-inline ml-1">차량정보</span>
            </a>
            <a href="qna.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/customer.png"><span class="d-none d-md-inline ml-1">고객지원</span>
            </a>
          </div>
        </nav>
        
        <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
          <div class="page-header mt-3">
              <h2>커뮤니티 웹 사이트</h2>
          </div>
          <p class="lead">이곳은 회원님들끼리 자유롭게 의사소통을 하며 즐길 수 있는 커뮤니티 웹 사이트입니다.</p>
          <hr>
          <button role="button" class="btn btn-success">자세히 알아보기</button>
          <div class="width collapse show mt-3" aria-expanded="true">
              <p>본 사이트에서는 회원 관리 관련 페이지, 자유 게시판 페이지, Q & A 페이지를 제공합니다.</p>
          </div>
          <div id="carousel" class="carousel slide" style="max-width: 1080px;" data-ride="carousel">
            <ol class="carousel-indicators">
              <li data-target="#carousel" data-slide-to="0" class="active"></li>
              <li data-target="#carousel" data-slide-to="1"></li>
              <li data-target="#carousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="./img/image3.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="./img/image2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="./img/image1.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">이전 사진</span>
            </a>
            <a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">다음 사진</span>
            </a>
          </div>
          <section class="mt-4 mb-3 pt-4 pb-3" style="max-width: 1080px;">
            <p class="lead">공지사항</p>
            <hr>
            <table class="table table-striped">
              <thead>
                <tr>
                  <th scope="col" class="mobile" style="width:55px; text-align:center;">번호</th>
                  <th scope="col" class="mobile" style="text-align:center;">제목</th>
                  <th scope="col" class="mobile" style="width:80px; text-align:center;">작성자</th>
                  <th scope="col" class="mobile" style="width:120px; text-align:center;">날짜</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <th scope="row" class="mobile" style="text-align:center;">3</th>
                  <td>신규 운영진을 모집합니다.</td>
                  <td class="mobile" style="text-align:center;">운영자</td>
                  <td class="mobile" style="text-align:center;">2018-01-05</td>
                </tr>
                <tr>
                  <th class="mobile" scope="row" style="text-align:center;">2</th>
                  <td>커뮤니티 웹 사이트에 오신 것을 환영합니다.</td>
                  <td class="mobile" style="text-align:center;">운영자</td>
                  <td class="mobile" style="text-align:center;">2018-01-04</td>
                </tr>
                <tr>
                  <th class="mobile" scope="row" style="text-align:center;">1</th>
                  <td>커뮤니티 웹 사이트가 개설되었습니다.</td>
                  <td class="mobile" style="text-align:center;">운영자</td>
                  <td class="mobile" style="text-align:center;">2018-01-03</td>
                </tr>
              </tbody>
            </table>
          </section>
          <section style="max-width: 1080px;">
            <p class="lead">정모 오시는 길</p>
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3202.719121950687!2d127.35737831537371!3d36.60907328613437!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x35652c484c59adcd%3A0x5d4c6f4438406cca!2z7ZWc6rWt6rWQ7JuQ64yA7ZWZ6rWQ!5e0!3m2!1sko!2skr!4v1514943638877"
              width="100%" height="480px" frameborder="0" style="border:0"  style="max-width: 1080px;" allowfullscreen></iframe>
          </section>
          <footer class="text-center" style="max-width: 1080px;">
            <p>Copyright ⓒ 2018 <b>나동빈</b> All Rights Reserved.</p>
          </footer>
        </main>
      </div>
    </div>
    <!-- 제이쿼리 자바스크립트 추가하기 -->
    <script src="./js/jquery-3.2.1.min.js"></script>
    <!-- Popper 자바스크립트 추가하기 -->
    <script src="./js/popper.min.js"></script>
    <!-- 부트스트랩 자바스크립트 추가하기 -->
    <script src="./js/bootstrap.min.js"></script>
  </body>
</html>
