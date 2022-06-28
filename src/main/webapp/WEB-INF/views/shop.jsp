<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>LHJ | SHOP</title>
	<link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
	<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
	<link rel="shortcut icon" href="images/ico/favicon.ico">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">

	<style>
		#pagination{
			text-align: center;
		}
	</style>
</head>
<!--/head-->

<body>
	<header id="header">
		<!--header-->
		<div class="header_top">
			<!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="login"><i class="fa fa-lock"></i> Login</a></li>
								<li><a href="cart"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="myPage"><i class="fa fa-user"></i> MyPage </a></li>
								<li><a href="help"><i class="fa fa-user"></i> Help </a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header_top-->

		<div class="header-middle">
			<!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index"><img src="${pageContext.request.contextPath }/resources/images/home/logo.png" alt="" /></a>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<div class="col-sm-3">
								<div class="search_box pull-right">
									<input type="text" placeholder="Search" />
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--/header-middle-->

		<div class="header-bottom">
			<!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse"
								data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li class="dropdown"><a href="#">Categorie<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop">사료</a></li>
										<li><a href="shop">간식</a></li>
										<li><a href="shop">생활용품</a></li>
										<li><a href="shop">장난감</a></li>
									</ul>
								</li>
								<li><a href="subShop" class="active">subShop</a></li>
                                <li><a href="rankingShop">rankingShop</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!--/header-bottom-->
	</header>
	<!--/header-->

	<section>
		<div class="container">
			<div class="row">
				
				<div class="col-sm-12 padding-right">

					<!-- 보기방법 선택 -->
					<div class="mainmenu pull-left">
						<ul class="nav navbar-nav collapse navbar-collapse">
							<li class="dropdown"><a href="#">선택<i class="fa fa-angle-down"></i></a>
								<ul role="menu" class="sub-menu">
									<li><a href="#">많이 팔린순</a></li>
									<li><a href="#">낮은 가격순</a></li>
									<li><a href="#">높은 가격순</a></li>								
								</ul>
							</li>
						</ul>
					</div>

					<div class="features_items">
						<!--items-->
						<h2 class="title text-center">Items</h2>
						<!-- 제품줄줄... -->
						<c:forEach items="${pdtos}" var="row">
							<div class="col-sm-3">
								<div class="single-products">
									<div class="productinfo text-center">
										<img src="${pageContext.request.contextPath }/${row.p_r_image}" alt="" />
										<h2>${row.p_price}원</h2>
										<p>${row.p_name}</p>
										<a href="pUserDetail?number=${row.p_number}" class="btn btn-default add-to-cart"><i
												class="fa fa-shopping-cart"></i>구매하기</a>
									</div>
								</div>
							</div>
						</c:forEach>	
						<!--  
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600원</h2>
									<p>ANF 참치&연어 고양이 캔</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>구매하기</a>
								</div>
							</div>
						</div>
					<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600원</h2>
									<p>ANF 참치&연어 고양이 캔</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>구매하기</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600원</h2>
									<p>ANF 참치&연어 고양이 캔</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>구매하기</a>
								</div>
							</div>
						</div>
					<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600원</h2>
									<p>ANF 참치&연어 고양이 캔</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>구매하기</a>
								</div>
							</div>
						</div>
					<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600원</h2>
									<p>ANF 참치&연어 고양이 캔</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>구매하기</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600원</h2>
									<p>ANF 참치&연어 고양이 캔</p>
									<a href="can1.jsp" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>구매하기</a>
								</div>
							</div>
						</div>
					<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600원</h2>
									<p>ANF 참치&연어 고양이 캔</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>구매하기</a>
								</div>
							</div>
						</div>
					</div>
					
					<!--features_items
					<div id="pagination">
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
						</ul>
					</div>
				-->
					
				</div>
			</div>
		</div>
	</section>

	<footer id="footer">
		<!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="companyinfo">
							<h2>LHJ</h2>
							<p>회사설명회사설명회사설명회사설명회사설명회사설명회사설명 </p>
							<p><b>대표자</b> 김꼬미 | <b>주소</b> 경민대 효행관 401호</p>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-3">

						</div>
						<div class="col-sm-3">

						</div>

						<div class="col-sm-3">

						</div>

						<div class="col-sm-3">

						</div>
					</div>
					<div class="col-sm-3">

					</div>
				</div>
			</div>
		</div>

		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">

					</div>
					<div class="col-sm-2">

					</div>
					<div class="col-sm-2">

					</div>
					<div class="col-sm-2">

					</div>
					<div class="col-sm-3 col-sm-offset-1">

					</div>

				</div>
			</div>
		</div>

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2013 E-SHOPPER Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank"
								href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>

	</footer>
	<!--/Footer-->



	<script src="${pageContext.request.contextPath }/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>

</html>