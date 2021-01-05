<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나만의 사이트</title>
<link rel="stylesheet" type="text/css" href="./css/default.css" />
<link rel="stylesheet" type="text/css"
	href="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
	<div id="wrap">

		<!-- 상단 메뉴 -->



		<div id="header" class="header">
			<header>
				<div class="container">
					<h1 class="header__logo">
						<a href="index.jsp"><img src="./assets/images/logo.jpg" alt=""></a>
					</h1>
					<div class="header__navigation">
						<div class="navigation">
							<nav>
								<ul class="header-menu">
									<li class="header-menu__item"><a href="#">검색</a>
										<ul id="sub-menu">
											<li><a href="#" aria-label="subemnu">신차검색</a></li>
											<li><a href="#" aria-label="subemnu">중고차검색</a></li>
										</ul></li>
									<li class="header-menu__item"><a href="#">차량정보</a>
										<ul id="sub-menu">
											<li><a href="#" aria-label="subemnu">자동차백과</a></li>
											<li><a href="#" aria-label="subemnu">시승리뷰</a></li>
											<li><a href="#" aria-label="subemnu">관련뉴스</a></li>
										</ul></li>
									<li class="header-menu__item"><a href="#">커뮤니티</a>
										<ul id="sub-menu">
											<li><a href="#" aria-label="subemnu">자유게시판</a></li>
											<li><a href="./community/this_car.jsp" aria-label="subemnu">이차어때?</a></li>
										</ul></li>
									<li class="header-menu__item"><a href="#">고객센터</a>
										<ul id="sub-menu">
											<li><a href="#" aria-label="subemnu">공지사항</a></li>
											<li><a href="#" aria-label="subemnu">Q&A</a></li>
											<li><a href="#" aria-label="subemnu">1:1문의</a></li>
										</ul></li>
								</ul>

								<div class="login_join">
									<a href="#" class="login_join__item">회원가입</a>
									<a href="#" class="login_join__item">로그인</a>
								</div>

							</nav>
						</div>
					</div>
				</div>
			</header>
		</div>
		<%--사이드 메뉴 --%>

		<div class="sidenav">
			<a href="#">마이페이지</a> <a href="#">관심차량</a> <a href="#">최근 본 차량</a> <a
				href="#">비교하기</a>
		</div>

		<div class="clear"></div>
		
		<section class="visual">
		
			<div class="bg1">
			 <h2 class="txt1">아직도 고민중이라면 물어봐</h2>
			</div>
			<div class="bg2">
			 <h2 class="txt2">차를 판다고? 어서와 이 가격은 처음이지?</h2>
			</div>
			<div class="bg3">
			 <h2 class="txt3">어디가서 뒷통수 맞지말고 비교해봐</h2>
			</div>
		</section>
	  		 <button class="pause">정지</button>
		<script type="text/javascript">
			$('.visual').slick({
				autoplay : true,
				autoplaySpeed : 2000,
			});
		$('.play').on('click',function(){
		   $('.visual').slick('slickPlay');
		});
		
		$('.pause').on('click',function(){
		 $('.visual').slick('slickPause');
		});
		</script>
		<div class="clear"></div>
		<%--메인이미지 --%>
		<div class="container">
		<div class="main-search">
			
			<div class="main-search__head">
				<h2 class="main-heading">모델 검색</h2>
				
				<p class="main-all-sale">전체등록 매물: <strong>0</strong>대</p>
			</div>
			<div class="main-search__content">
				<div class="search-select">
					<div class="search-select__trigger">
						<div class="search-select__trigger-block">
							<a href="#maker-code" class="search-select__trigger-link">
								<span class="search-select__trigger-text">제조사</span> 
								<i class="search-select__trigger-arrow"></i>
							</a>
							<a href="#class-code" class="search-select__trigger-link option-link-middle disabled">
								<span class="search-select__trigger-text">대표모델</span>
								<i class="search-select__trigger-arrow"></i>
							</a>
							<a href="#car-code" class="search-select__trigger-link disabled">
								<span class="search-select__trigger-text">세부모델</span>
								<i class="search-select__trigger-arrow"></i>
							</a>
						</div>
						
						<script>
						$('.search-select__trigger-link').on('click', function() {
							targetElement = $($(this).attr('href')); 
							
							if ( !($(this).hasClass('disabled')) ) {
								$('.search-select__trigger-link').removeClass('active');
								$(this).addClass('active');
								targetElement.closest('.search-select__option').show();
								$('.search-select__option-block').hide();
								targetElement.show();	
							}
							
							return false;
						});
						</script>
						
						<div class="search-select__option" style="display: none;">
							<div id="maker-code" class="search-select__option-block" style="display: none;">
								<div class="search-select__option-head">
									<i class="search-select__option-icon"></i>
									제조사를 선택하세요.
								</div>
								<div class="search-select__option-content">
									<div class="search-select-option"></div>
								</div>
							</div>
							<div id="class-code" class="search-select__option-block" style="display: none;">
								<div class="search-select__option-head">
									<i class="search-select__option-icon"></i>
									대표모델을 선택하세요.
								</div>
								<div class="search-select__option-content">
									<div class="search-select-option"></div>
								</div>
							</div>
							<div id="car-code" class="search-select__option-block" style="display: none;">
								<div class="search-select__option-head">
									<i class="search-select__option-icon"></i>
									세부모델을 선택하세요.
								</div>
								<div class="search-select__option-content">
									<div class="search-select-option"></div>
								</div>
							</div>
							
							<button class="search-select-option__close">검색 옵션 선택 닫기</button>
						</div>
						
						<button type="button" id="btnCarCodeSearch" class="search-select__button">검색</button>
					</div>
				</div>
			
				<div class="main-search__direct">
					<div class="search-direct" style="z-idenx:2;">
						<form onsubmit="return false;">
						<fieldset>
							<legend>직접 검색</legend>
							
							<div class="search-direct__input">
								<input type="text" name="directSearch" id="directSearch" class="search-direct__input-text" placeholder="검색어를 입력해주세요." autoComplete="off">
								<button type="button" class="search-direct__delete">
									<span class="is-invisible">검색어 삭제</span>
								</button>
								<button type="button" class="search-direct__button">
									<span class="is-invisible">검색</span>
								</button>
							</div>
						</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>

				<!-- 핫이슈 -->
				<div class="main-recommend">
				<h2 class="main-heading">이것만은 알고 가자!</h2>
				<div class="main-recommend__container">
				 <div class="main-recommend__list">
				  <div class="main-recommend__news" style="width:790px; margin-right:50px;">
				  <div class="main-recommend__news-list">
				   <div class="news-item main-recommend__item">
				   	<a href="car_news" class="news-item__link">
				   	 <div class="news-item__thumbnail">
				   	  <span class="news-item__thumbnail-block">
				   	   <img src="./assets/images/Car_G90.jpg" class="news-item__thumbnail-image" onerror="this.src='/images/noimage_car.png';" alt="g90">
				   	  </span>
				   	 </div>
				    <div class="news-item__desc">
				     <div class="news-item__name">뉴스제목</div>
				    </div>
				   	</a>
				   </div>
				   <div class="news-item main-recommend__item">
				   	<a href="car_news" class="news-item__link">
				   	 <div class="news-item__thumbnail">
				   	  <span class="news-item__thumbnail-block">
				   	   <img src="./assets/images/Car_G90.jpg" class="news-item__thumbnail-image" onerror="this.src='/images/noimage_car.png';" alt="g90">
				   	  </span>
				   	 </div>
				    <div class="news-item__desc">
				     <div class="news-item__name">뉴스제목</div>
				    </div>
				   	</a>
				   </div>
				   <div class="news-item main-recommend__item">
				   	<a href="car_news" class="news-item__link">
				   	 <div class="news-item__thumbnail">
				   	  <span class="news-item__thumbnail-block">
				   	   <img src="./assets/images/Car_G90.jpg" class="news-item__thumbnail-image" onerror="this.src='/images/noimage_car.png';" alt="g90">
				   	  </span>
				   	 </div>
				    <div class="news-item__desc">
				     <div class="news-item__name">뉴스제목</div>
				    </div>
				   	</a>
				   </div>
				   <div class="news-item main-recommend__item">
				   	<a href="car_news" class="news-item__link">
				   	 <div class="news-item__thumbnail">
				   	  <span class="news-item__thumbnail-block">
				   	   <img src="./assets/images/Car_G90.jpg" class="news-item__thumbnail-image" onerror="this.src='/images/noimage_car.png';" alt="g90">
				   	  </span>
				   	 </div>
				    <div class="news-item__desc">
				     <div class="news-item__name">뉴스제목</div>
				    </div>
				   	</a>
				   </div>
				   <div class="news-item main-recommend__item">
				   	<a href="car_news" class="news-item__link">
				   	 <div class="news-item__thumbnail">
				   	  <span class="news-item__thumbnail-block">
				   	   <img src="./assets/images/Car_G90.jpg" class="news-item__thumbnail-image" onerror="this.src='/images/noimage_car.png';" alt="g90">
				   	  </span>
				   	 </div>
				    <div class="news-item__desc">
				     <div class="news-item__name">뉴스제목</div>
				    </div>
				   	</a>
				   </div>
				   <div class="news-item main-recommend__item">
				   	<a href="car_news" class="news-item__link">
				   	 <div class="news-item__thumbnail">
				   	  <span class="news-item__thumbnail-block">
				   	   <img src="./assets/images/Car_G90.jpg" class="news-item__thumbnail-image" onerror="this.src='/images/noimage_car.png';" alt="g90">
				   	  </span>
				   	 </div>
				    <div class="news-item__desc">
				     <div class="news-item__name">뉴스제목</div>
				    </div>
				   	</a>
				   </div>
				  </div>
				</div>
				</div>
				</div>
				</div>
			</div>
				 

			
		<%-- 하단페이지 --%>
	<footer id="autodanawa_footer" class=''>
		<div class="footer__address footer__inner">
		<dl class="address address-auto">
			<dt class="address__title">사이트 제목</dt>
			<dd class="address__cont">서울특별시 동작구 장승배기로 171 3층(아이비빌딩)<br />
			<dd class="address__cont">대표자:노원남&nbsp;&nbsp;&nbsp; 사업자등록번호 : 542-85-00739</dd>
			</dl>
		<dl class="address address-cs">
			<dt class="address__title">고객센터</dt>
			<dd class="address__cont"><span class="cont-ttl">다나와 자동차 고객센터</span>&nbsp;&nbsp;&nbsp;전화: 1644-3834&nbsp;&nbsp;&nbsp;팩스: 02-6969-5182&nbsp;&nbsp;&nbsp;이메일: auto@danawa.com</dd>
			<dd class="address__cont"><span class="cont-ttl">다나와 고객센터</span>&nbsp;&nbsp;&nbsp;전화: 1688-2470&nbsp;&nbsp;&nbsp;팩스: 1688-2451&nbsp;&nbsp;&nbsp;이메일: cs@danawa.com</dd>
		</dl>
	</div>
	<div class="footer__policy footer__inner">
		<div class="left">
			차량 및 옵션의 가격, 구성, 외형, 할인 조건, 등록/부대비용 등의 안내가 실제와 다를 수 있습니다. <br>
			제조사 공식 프로모션 외 영업사원과 상담 시 안내받은 용품 제공이나 추가 할인 등의 비공식 혜택의 이행에 대해서 다나와가 보증하지 않습니다.<br>
			(주)다나와는 상품정보 제공 업체로서 판매와는 관련이 없습니다. 상거래의 책임은 판매자와 구매자에게 있으니 반드시 제조사 공식 정보와 거래 조건을 확인 후 계약하십시오.&nbsp;
			<div class="copyright">Copyright © <strong>danawa</strong> Co., Ltd. All Rights Reserved.</div>
		</div>
		<div class="right">
			<a target="_blank" href="http://www.kolsa.or.kr/" class="btn-kolsa"><span class="blind">KOLSA 한국온라인쇼핑협회</span></a>
		</div>
	</div>
</footer>
	</div>
	
	
</body>
</html>