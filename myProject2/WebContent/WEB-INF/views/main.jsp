<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/views/common.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
    <title>마이프로젝트 쇼핑몰</title>


    <style>
        * {
            margin: 0; padding: 0;
            font: normal 12px 'Dotum';
        }
        a { text-decoration: none; }
        img { border: 0; }
        ul { list-style: none; }

        body {
            width: 980px;
            margin: 0 auto; 
        }
    </style>
    <!-- 헤더 -->
    <style>
        #main_header {
            position: relative; 
            height: 75px;
        }

        #main_header > h1.logo {
            position: absolute;
            left: 15px; top: 10px;
        }

        #main_header > div.login_menu {
            position: absolute;
            top: 10px; right: 0px;
        }
        
        #main_header > div.event {
            position: absolute;
            top: 10px; right: 0px;
        }
    </style>
    <!-- 사이드 -->
    <style>
        body {
            position: relative;
        }

        #global_aside {
            position: absolute;
            left: 990px; top: 75px;
            width: 90px;
        }

        #global_aside > a {
            display: block;
            margin-bottom: 5px;
        }
    </style>
    <!-- 네비게이션_위 -->
    <style>
        #top_gnb {
            overflow: hidden; 
        }

        #top_gnb > div.menu {
            float: left; 
            width: 140px; height: 50px;
            background: url('/myProject2/resources/images/top_gnb.png');
        }
        
        #top_gnb > div.item_1 { background-position: 0px 0px; }
        #top_gnb > div.item_2 { background-position: 0px -50px; }
        #top_gnb > div.item_3 { background-position: 0px -100px; }
        #top_gnb > div.item_4 { background-position: 0px -150px; }
        #top_gnb > div.item_5 { background-position: 0px -200px; }
        #top_gnb > div.item_6 { background-position: 0px -250px; }
        #top_gnb > div.item_7 { background-position: 0px -300px; }

        #top_gnb > div.item_1:hover { background-position: 0px -350px; }
        #top_gnb > div.item_2:hover { background-position: 0px -400px; }
        #top_gnb > div.item_3:hover { background-position: 0px -450px; }
        #top_gnb > div.item_4:hover { background-position: 0px -500px; }
        #top_gnb > div.item_5:hover { background-position: 0px -550px; }
        #top_gnb > div.item_6:hover { background-position: 0px -600px; }
        #top_gnb > div.item_7:hover { background-position: 0px -650px; }

        #top_gnb > div.item_1.active { background-position: 0px -350px; }
        #top_gnb > div.item_2.active { background-position: 0px -400px; }
        #top_gnb > div.item_3.active { background-position: 0px -450px; }
        #top_gnb > div.item_4.active { background-position: 0px -500px; }
        #top_gnb > div.item_5.active { background-position: 0px -550px; }
        #top_gnb > div.item_6.active { background-position: 0px -600px; }
        #top_gnb > div.item_7.active { background-position: 0px -650px; }
    </style>        
    <!-- 네비게이션_아래 -->
    <style>
        #bottom_gnb {
            overflow: hidden; 
        }

        #bottom_gnb > div.menu {
            float: left; 
            width: 98px; height: 80px;
            background: url(''/myProject2/resources/images/bottom_gnb.png');
        }

        #bottom_gnb > div.item_1 { background-position: 0px 0px; }
        #bottom_gnb > div.item_2 { background-position: 0px -80px; }
        #bottom_gnb > div.item_3 { background-position: 0px -160px; }
        #bottom_gnb > div.item_4 { background-position: 0px -240px; }
        #bottom_gnb > div.item_5 { background-position: 0px -320px; }
        #bottom_gnb > div.item_6 { background-position: 0px -400px; }
        #bottom_gnb > div.item_7 { background-position: 0px -480px; }
        #bottom_gnb > div.item_8 { background-position: 0px -560px; }
        #bottom_gnb > div.item_9 { background-position: 0px -640px; }
        #bottom_gnb > div.item_10{ background-position: 0px -720px; }

        #bottom_gnb > div.item_1:hover { background-position: 0px -800px; }
        #bottom_gnb > div.item_2:hover { background-position: 0px -880px; }
        #bottom_gnb > div.item_3:hover { background-position: 0px -960px; }
        #bottom_gnb > div.item_4:hover { background-position: 0px -1040px; }
        #bottom_gnb > div.item_5:hover { background-position: 0px -1120px; }
        #bottom_gnb > div.item_6:hover { background-position: 0px -1200px; }
        #bottom_gnb > div.item_7:hover { background-position: 0px -1280px; }
        #bottom_gnb > div.item_8:hover { background-position: 0px -1360px; }
        #bottom_gnb > div.item_9:hover { background-position: 0px -1440px; }
        #bottom_gnb > div.item_10:hover{ background-position: 0px -1520px; }
                          
        #bottom_gnb > div.item_1.active { background-position: 0px -800px; }
        #bottom_gnb > div.item_2.active { background-position: 0px -880px; }
        #bottom_gnb > div.item_3.active { background-position: 0px -960px; }
        #bottom_gnb > div.item_4.active { background-position: 0px -1040px; }
        #bottom_gnb > div.item_5.active { background-position: 0px -1120px; }
        #bottom_gnb > div.item_6.active { background-position: 0px -1200px; }
        #bottom_gnb > div.item_7.active { background-position: 0px -1280px; }
        #bottom_gnb > div.item_8.active { background-position: 0px -1360px; }
        #bottom_gnb > div.item_9.active { background-position: 0px -1440px; }
        #bottom_gnb > div.item_10.active{ background-position: 0px -1520px; }
    </style>
    <!-- 목록 -->
    <style>
        #detail_list {
            overflow: hidden;
            padding: 10px;
            background: #3B414D;
            padding-bottom: 15px;
        }

        #detail_list > ul {
            float: left;
            width: 192px;
        }
        
        #detail_list > ul > li {
            height: 13px;
            margin-top: 5px;
            padding: 3px 5px;
            color: #F3F3F3;
            
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
        }

        #detail_list > ul > li.header {
            padding-left: 15px;
        }

        #detail_list > ul > li.header > p {
            font-weight: bold;
            color: #48C5FF;
        }
    </style>
    <!-- 본문 -->
    <style>
        #content { margin-top: 10px; }
        #product_section {
            overflow: hidden;
            margin-top: 5px;
        }

        #product_section > #product_article {
            float: left;
            width: 795px;
        }

        #product_section > #product_aside {
            float: right;
            padding-bottom: 5px;
            width: 170px;
        }
        #product_section > #product_article > img { display: block; }
    </style>
    <!-- 푸터 -->
    <style>
        #main_footer {
            height: 40px;
            padding: 10px;
            margin-bottom: 10px;

            background: #9C9C9C;
            border-radius: 5px;

            text-align: center;
        }

        #main_footer > h1 {
            font-size: 1.5em;
            font-weight: bold;
        }

        #main_footer > h2 {
            font-size: 1.2em;
            font-weight: bold;
        }
    </style>
    
        
    <script language = "JavaScript">
    
  //body 태그 안의 소스를 모두 실행한 후에 실행할 자바스크립트 코드 설정
	$(document).ready(function() {
		
		//alert("test");
		$("#login").click(function() {
			//alert("test");
			location.href="/myProject2/loginForm.do";
		});
		
		
	});
    
    </script>
    
</head>
<body>
    <header id="main_header">
        <h1 class="logo">
            <a href="#"><img src="/myProject2/resources/images/title.png" /></a>
        </h1>
        <div class="login_menu">
            <span><a href="#" id="login" class="login">로그인</a></span>
            <span><a href="#" id="joinMember" class="joinMember">회원가입</a></span>
            <span><a href="#">고객센터</a></span>
        </div>
    </header>
    <aside id="global_aside">
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
        <a><img src="http://placehold.it/90x160" /></a>
    </aside>
    <nav id="top_gnb">
        <div class="menu item_1 active"></div>
        <div class="menu item_2"></div>
        <div class="menu item_3"></div>
        <div class="menu item_4"></div>
        <div class="menu item_5"></div>
        <div class="menu item_6"></div>
        <div class="menu item_7"></div>
    </nav>
    <nav id="bottom_gnb">
        <div class="menu item_1"></div>
        <div class="menu item_2"></div>
        <div class="menu item_3"></div>
        <div class="menu item_4"></div>
        <div class="menu item_5"></div>
        <div class="menu item_6"></div>
        <div class="menu item_7"></div>
        <div class="menu item_8"></div>
        <div class="menu item_9 active"></div>
        <div class="menu item_10"></div>
    </nav>
    <div id="detail_list">
        <ul class="column_1">
            <li class="header"><p>게임용 노트북</p></li>
            <li>아이온 게임용 노트북</li>
            <li>디아블로 게임용 노트북</li>
            <li>블소 게임용 노트북</li>
            <li class="header"><p>울트라북</p></li>
            <li>헬로키티 울트라북</li>
            <li>리락쿠마 울트라북 초특가</li>
            <li>카피바라 울트라북</li>
            <li>쵸파 울트라북</li>
            <li>고양이 울트라북</li>
        </ul>
        <ul class="column_2">
            <li>둘리 울트라북</li>
            <li class="header"><p>노트북 가방</p></li>
            <li>솜사탕 브랜드 노트북 가방</li>
            <li>보노보노 가방</li>
            <li>랑콤 가방</li>
            <li class="header"><p>받침대/쿨러</p></li>
            <li>아이바네즈 받침대</li>
            <li>깁슨 쿨러</li>
            <li>헤라클레스 삼각 받침대</li>
            <li>펜더 스트라토캐스터 쿨러</li>
        </ul>
        <ul class="column_3">
            <li class="header"><p>노트북 보호 용품</p></li>
            <li>Node.js 방열 보호판</li>
            <li>안드로이드</li>
            <li>초특가 자바스크립트 보호대</li>
            <li>기계 학습을 사용한 보호대  </li>
            <li class="header"><p>맥북</li>
            <li>원고를 작성하는 맥북 에어</li>
            <li>레티나 디스플레이</li>
            <li class="header"><p>노트북 보호 용품</p></li>
            <li>물건 이름 만들기 힘들어</li>
        </ul>
        <ul class="column_4">
            <li>우주 방사능 보호 코팅제</li>
            <li>자체 중력 생성 장치</li>
            <li>초특가</li>
            <li>노트북 투명화 스프레이</li>
            <li>고압 전류</li>
            <li class="header"><p>노트북 보조 용품</p></li>
            <li>초특가</li>
            <li>공간 균열 장치</li>
            <li>프로그램 만드는 프로그램</li>
            <li>초특가</li>
        </ul>
        <ul class="column_5">
            <li>미오 베이스 장치</li>
            <li>공간을 지배하는자</li>
            <li>현금 할인</li>   
            <li class="header"><p>외장 하드 디스크</p></li>
            <li>토시바 500GB 외장 하드</li>
            <li>초공간 통합 무한 메모리</li>
            <li>모던 웹을 위한 Node.js 프로그래밍</li>
            <li>모던 웹을 위한 JavaScript + jQuery 입문</li>
            <li>윤인성</li>
            <li>이름 만들기 힘들어요</li>
        </ul>
    </div>
    <div id="content">
        <figure id="product_image">
            <img src="http://placehold.it/980x440" />
        </figure>
        <section id="product_section">
            <article id="product_article">
                <img src="http://placehold.it/795x400" />
                <img src="http://placehold.it/795x400" />
                <img src="http://placehold.it/795x400" /> 
            </article>
            <aside id="product_aside">
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
                <a href="#"><img src="http://placehold.it/170x200" /></a>
            </aside>
        </section>
    </div>
    <footer id="main_footer">
        <h1>모던 웹 디자이너를 위한 HTML5 + CSS3 입문</h1>
    </footer>
</body>
</html>