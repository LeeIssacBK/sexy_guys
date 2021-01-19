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
              <h2>자유게시판</h2>
          </div>
          <p class="lead">다른 회원들과 자유롭게 소통하세요.</p>
          <hr>
          <table class="table table-striped" style="max-width: 1080px;">
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
                <th scope="row" class="mobile" style="text-align:center;">5</th>
                <td><a href="./boardView.jsp" style="color: #000000;">오랜만입니다. 여러분, 즐겁게 소통해봅시다.</a></td>
                <td class="mobile" style="text-align:center;">강종구</td>
                <td class="mobile" style="text-align:center;">2018-01-05</td>
              </tr>
                <tr>
                  <th scope="row" class="mobile" style="text-align:center;">4</th>
                  <td><a href="./boardView.jsp" style="color: #000000;">사랑합니다. 여러분, 즐겁게 소통해봅시다.</a></td>
                  <td class="mobile" style="text-align:center;">이상욱</td>
                  <td class="mobile" style="text-align:center;">2018-01-05</td>
                </tr>
              <tr>
                <th scope="row" class="mobile" style="text-align:center;">3</th>
                <td><a href="./boardView.jsp" style="color: #000000;">안녕하세요. 여러분, 즐겁게 소통해봅시다.</a></td>
                <td class="mobile" style="text-align:center;">박한울</td>
                <td class="mobile" style="text-align:center;">2018-01-05</td>
              </tr>
              <tr>
                <th class="mobile" scope="row" style="text-align:center;">2</th>
                <td><a href="./boardView.jsp" style="color: #000000;">반갑습니다. 여러분, 즐겁게 소통해봅시다.</a></td>
                <td class="mobile" style="text-align:center;">나동빈</td>
                <td class="mobile" style="text-align:center;">2018-01-04</td>
              </tr>
              <tr>
                <th class="mobile" scope="row" style="text-align:center;">1</th>
                <td><a href="./boardView.jsp" style="color: #000000;">친하게 지내요. 여러분, 즐겁게 소통해봅시다.</a></td>
                <td class="mobile" style="text-align:center;">이태일</td>
                <td class="mobile" style="text-align:center;">2018-01-03</td>
              </tr>
            </tbody>
          </table>
          <div style="max-width: 1080px;">
            <a href="./boardWrite.jsp" class="btn btn-primary float-right">글쓰기</a>
          </div>
          <ul class="pagination">
            <li class="page-item disabled">
              <span class="page-link">&laquo;</span>
            </li>
            <li class="page-item"><a class="page-link mobile" href="#" >1</a></li>
            <li class="page-item active"><span class="page-link mobile">2</span></li>
            <li class="page-item"><a class="page-link mobile" href="#">3</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">4</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">5</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">6</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">7</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">8</a></li>
            <li class="page-item"><a class="page-link mobile" href="#">9</a></li>
            <li class="page-item">
              <a class="page-link" href="#">&raquo;</a>
            </li>
          </ul>
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
