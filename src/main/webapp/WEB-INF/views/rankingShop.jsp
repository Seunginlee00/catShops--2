<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>LHJ | RANKING</title>
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
								<li class="dropdown"><a href="#">Kategorie<i class="fa fa-angle-down"></i></a>
									<ul role="menu" class="sub-menu">
										<li><a href="shop.jsp">??????</a></li>
										<li><a href="shop.jsp">??????</a></li>
										<li><a href="shop.jsp">????????????</a></li>
										<li><a href="shop.jsp">?????????</a></li>
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

				
					<div class="features_items">
						<!--items-->
						<h2 class="title text-center">?????? ?????? ?????? ?????????~</h2>
						<!-- ????????????... -->
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						<div class="col-sm-3">
							<div class="single-products">
								<div class="productinfo text-center">
									<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
									<h2>2600???</h2>
									<p>ANF ??????&?????? ????????? ???</p>
									<a href="can1" class="btn btn-default add-to-cart"><i
											class="fa fa-shopping-cart"></i>????????????</a>
								</div>
							</div>
						</div>
						
					</div>
					<!--features_items-->
					<div id="pagination">
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
						</ul>
					</div>
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
							<p>???????????????????????????????????????????????????????????????????????????????????? </p>
							<p><b>?????????</b> ????????? | <b>??????</b> ????????? ????????? 401???</p>
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
					<p class="pull-left">Copyright ?? 2013 E-SHOPPER Inc. All rights reserved.</p>
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