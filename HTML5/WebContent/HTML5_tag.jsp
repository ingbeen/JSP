<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>HTML5 blog</title>
    <meta charset="utf-8">
    <style>
    	body {
    		width: 1000px;
    		margin: 0 auto;
    	}
    	#main-header {
    		width: 75%;
    		text-align: center;
    		margin-bottom: 30px;
    		text-shadow: 5px 5px 4px gray;
    	}
    	.non-list-type {
    		list-style-type: none;
    	}
    	.nav{
    		color: black;
    		text-decoration: none;
    		float: left;
    		text-align: center;
    		font-size: 20px;
    	}
    	.nav:hover, #sidebar a:hover{
    		font-weight: bold;
    		color: #ffc045;
    		align: center;
    	}
    	.main-nav {
    		padding: 0;
    		margin: 0 100px 0 0;
    	}
    	.footer-nav {
    		font-size: 15px;
    		margin: 0 50px 0 0;
    	}
    	#sidebar a {
    		color: black;
    		text-decoration: none;
    		font-size: 20px;
    	}
    	.center-type {
    		text-align: center;
    	}
    	ul {
    		margin: 0;
    		padding: 0;
    	}
    	p {
    		line-height: 25px;
    	}
    	#sidebar {
    		padding: 0px 0px 0px 5px
    	}
    	#posts {
    		float: left;
    		width: 74%;
    		line-height: 40px;
    		text-align: justify;
    		padding-top: 0px;
    	}
    	#sidebar {
    		float: right;
    		width: 23%;
    	}
    	#page_footer {
    		clear: both;
    		width: 100%;
    		display: block;
    		text-align: center;
    		padding-top: 40px;
    	}
    </style>
</head>
<body>
	<!-- header -->
	<header>
		<h1 id="main-header">HTML5</h1>
	</header>
	<nav>
		<ul class="non-list-type">
			<li><a href="#" class="main-nav nav">HTML5 API</a></li>
			<li><a href="#" class="main-nav nav">CSS3</a></li>
			<li><a href="#" class="main-nav nav">jQueryMobile</a></li>
			<li><a href="#" class="main-nav nav">phoneGap</a></li>
		</ul>
	</nav>
	
	<!-- section 1 -->
	<section id="posts">
		<article>
			<header>
				<h2 id="second-header">HTML5 소개</h2>
			</header>
			<section>
				<p>
				HTML5가 인터넷 업계에서 알려지게 된 계기는 바로 2009년 구글의 웹 개발자 콘퍼런스인 
				‘구글 I/O’에서 자사의 서비스가 아닌 HTML5를 데모 로 시연하면서 차세대 웹 기술로 지원하겠다는 
				천명을 하면서부터이다. 
				특 히, 스티브 잡스가 애플 아이폰에 플래시 탑재를 거부하면서 대응 기술로 HTML5를 홍보하기 시작하였다.
				</p>
				<p>
				수 많은 HTML5 데모들에서 기존의 RIA 기술을 능가할 만한 것 을 보여줌으로써 마치 구글과 애플이 
				자사의 이익을 위해 플러그인 기반 RIA 기술의 대체 수단으로 홍보하고 있다는 생각이 널리 퍼져있다. 
				우리가 앞서 살펴 보았듯이 HTML5는 2004년 당시 시장 점유율 5% 미 만이었던 마이너 웹 브라우저들이 
				웹 개발자들과의 토론을 통해 만들어 온 개방형 웹 표준으로서 웹 개발자의 생산성과 가치를 높이기 위한 
				다양한 기술들을 담았다.
				</p>
			</section>
		</article>
	</section>
	
	<!-- section 2 -->
	<aside id="sidebar">
		<article>
			<ul class="non-list-type">
				<li><h3>다른 글들</h3>
					<ul class="non-list-type">
						<li><a href="#">Sencha Touch</a></li>
						<li><a href="#">Java</a></li>
						<li><a href="#">JSP</a></li>
						<li><a href="#">Spring</a></li>
						<li><a href="#">Android</a></li>
						<li><a href="#">IOS</a></li>
					</ul>
				</li>
			</ul>
		</article>
	</aside>
	
	<!-- footer -->
	<footer id="page_footer">
		<ul class="non-list-type">
			<li>&copy; 2018 엔코아/플레이데이터
				<ul class="non-list-type">
					<li><a href="#">홈페이지</a></li>
					<li><a href="#">회사 소개</a></li>
					<li><a href="#">서비스 항목</a></li>
					<li><a href="#">개인정보 보호 정책</a></li>
				</ul>
			</li>
		</ul>
	</footer>
</body>
</html>