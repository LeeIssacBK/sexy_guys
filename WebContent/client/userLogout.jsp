<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!doctype html>
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
              <img style="width: 20px;" src="./img/home.svg"><span class="d-none d-md-inline ml-1">메인</span>
            </a>
            <a href="#usermenu" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
             data-parent="#sidebar" aria-expanded="false">
              <img style="width: 20px;" src="./img/user.svg"><span class="d-none d-md-inline ml-1">회원 관리</span>
            </a>
            <div class="collapse" id="usermenu">
              <a href="userJoin.jsp" class="list-group-item" data-parent="#sidebar">회원가입</a>
              <a href="userLogin.jsp" class="list-group-item" data-parent="#sidebar">로그인</a>
              <a href="userEdit.jsp" class="list-group-item" data-parent="#sidebar">회원정보수정</a>
              <a href="userLogout.jsp" class="list-group-item" data-parent="#sidebar">로그아웃</a>
            </div>
            <a href="board.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/board.svg"><span class="d-none d-md-inline ml-1">자유 게시판</span>
            </a>
            <a href="qna.jsp" class="list-group-item d-inline-block collapsed" data-parent="#sidebar">
              <img style="width: 20px;" src="./img/message.svg"><span class="d-none d-md-inline ml-1">Q & A</span>
            </a>
            <a href="#search" class="list-group-item d-inline-block collapsed" data-toggle="collapse"
             data-parent="#sidebar" aria-expanded="false">
              <img style="width: 20px;" src="./img/search.svg"><span class="d-none d-md-inline ml-1">검색</span>
            </a>
            <div class="collapse" id="search">
              <div class="input-group p-2" style="background-color: #1c1c1c;">
                <input type="text" class="form-control" placeholder="내용을 입력하세요.">
              </div>
            </div>
          </div>
        </nav>
        <main id="main" class="col-md-9 float-left col pl-md-5 pt-3 main">
          <div class="page-header mt-3">
              <h2>로그아웃</h2>
          </div>
          <p class="lead">로그아웃이 완료되었습니다.</p>
          <hr>
          <a href="./index.jsp" role="button" class="btn btn-success">메인으로 돌아가기</a>
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
