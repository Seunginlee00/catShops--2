<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>LHG | HOME</title>
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
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/resources/images/ico/apple-touch-icon-57-precomposed.png">
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
                                <li><a href="login"><i class="fa fa-lock"></i> Logout</a></li>
                                <li><a href="cart?id=${dto.m_id}"><i class="fa fa-shopping-cart"></i> Cart</a></li>
                                <li><a href="myPage?id=${dto.m_id}"><i class="fa fa-user"></i> MyPage </a></li>
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
                                        <li><a href="shop">??????</a></li>
                                        <li><a href="shop">??????</a></li>
                                        <li><a href="shop">????????????</a></li>
                                        <li><a href="shop">?????????</a></li>
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

	<section id="slider">
		<!--slider-->
      <div class="container">
         <div class="row">
            <div class="col-sm-12">
               <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                     <!-- <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                     <li data-target="#slider-carousel" data-slide-to="1"></li>
                     <li data-target="#slider-carousel" data-slide-to="2"></li> -->
                  </ol>

                  <div class="carousel-inner">
                     <div class="carousel-item active">
                        <img src="${pageContext.request.contextPath }/resources/images/home/sli01.png" style= " width:100%;" class="girl img-responsive" alt="" />                           
                     </div>   
                  </div>

                  <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                     <i class="fa fa-angle-left"></i>
                  </a>
                  <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                     <i class="fa fa-angle-right"></i>
                  </a>
               </div>

            </div>
         </div>
      </div>
   </section>
   <!--/slider-->

	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 padding-right">
					<div class="category-tab">
						<!--category-tab-->
						<div class="col-sm-12">
							<ul class="nav nav-tabs">
								<li class="active"><a href="#newItem" data-toggle="tab">???????????????</a></li>
								<li><a href="#popularItem" data-toggle="tab">??????????????????</a></li>
								<li><a href="#Reviews" data-toggle="tab">????????????</a></li>
							</ul>
						</div>
						<!-- ????????? ?????? -->
						<div class="tab-content">
							<div class="tab-pane fade active in" id="newItem">
								
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/can/can5.jpeg" alt="" />
												<h2>3000???</h2>
												<p>????????? ???</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>????????????</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/feed/feed5.jpeg" alt="" />
												<h2>12500???</h2>
												<p>?????? ??????</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>????????????</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/sand/sand5.jpeg" alt="" />
												<h2>20000???</h2>
												<p>????????????</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>????????????</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/snack/snack5.jpeg" alt="" />
												<h2>3000???</h2>
												<p>????????? ??????</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>????????????</a>
											</div>

										</div>
									</div>
								</div>
							</div>
							<!-- ???????????? ?????? -->
							<div class="tab-pane fade" id="popularItem">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/can/can1.jpeg" alt="" />
												<h2>2600???</h2>
												<p>????????????</p>
												<a href="can1.jsp" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/can/can2.jpeg" alt="" />
												<h2>3000???</h2>
												<p>??? 2???~</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/feed/feed1.jpeg" alt="" />
												<h2>30000???</h2>
												<p>??????</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/sand/sand.jpeg" alt="" />
												<h2>30000???</h2>
												<p>??????</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
							</div>
							<!-- ???????????? : ???????????? ????????????~ -->
							<div class="tab-pane fade" id="Reviews">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/product/snack/snack1.jpeg" alt="" />
												<h2>1300???</h2>
												<p>????????? ?????? 1???</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="kids">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="poloshirt">
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery2.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery4.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery3.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
								<div class="col-sm-3">
									<div class="product-image-wrapper">
										<div class="single-products">
											<div class="productinfo text-center">
												<img src="${pageContext.request.contextPath }/resources/images/home/gallery1.jpg" alt="" />
												<h2>$56</h2>
												<p>Easy Polo Black Edition</p>
												<a href="#" class="btn btn-default add-to-cart"><i
														class="fa fa-shopping-cart"></i>Add to cart</a>
											</div>

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/category-tab-->
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
							<p>????????????????????????????????????????????????????????????????????????????????????	</p>
							<p><b>?????????</b>  ????????? | <b>??????</b>  ????????? ????????? 401???</p>
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
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
</body>

</html>