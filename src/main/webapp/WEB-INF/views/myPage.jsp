<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>LHJ | MYPAGE</title>
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

</head><!--/head-->

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
	
    <section>
		<div class="container">
			<div class="row">
				<!-- ???????????? -->
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#myInfo">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											?????????
										</a>
									</h4>
								</div>
								<div id="myInfo" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="editInformation.jsp">???????????? ??????</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#subscribe">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											???????????????
										</a>
									</h4>
								</div>
								<div id="subscribe" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="subscribeHistory?id=${dto.m_id}">????????????</a></li>

										</ul>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#orderManagement">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											????????????
										</a>
									</h4>
								</div>
								<div id="orderManagement" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="deliveryStatus.jsp">????????????</a></li>
											<li><a href="cancelReturnExchange.jsp">?????? / ?????? / ??????</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#myCat">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											??? ?????????
										</a>
									</h4>
								</div>
								<div id="myCat" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="cat">??? ????????? ??????</a></li>
											<li><a href="myCat">??? ?????????</a></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#myActivity">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											??? ??????
										</a>
									</h4>
								</div>
								<div id="myActivity" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="myReview.jsp">????????????</a></li>
											<li><a href="qNa">Q & A</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div><!--/category-products-->
					
						
						
						
					</div>
				</div>
				<div class="col-sm-9">
					<!-- Orders -->
					<div class="orders">
						<div class="row">
							<div class="col-xl-8">
								<!-- ?????? ???????????? -->
								<div class="card">
									<div class="card-body">
										<h4 class="box-title">?????? ???????????? </h4>
										
									</div>
									<div class="card-body--">
										<div class="table-stats sub-order-table ov-h">
											<table class="table ">
												<thead>
													<tr>
														<th class="serial">#</th>
														<th class="product">????????????</th>
														<th class="price">??????</th>
														<th class="quantity">??????</th>
														<th class="subRound">???????????????</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach items="${sddtos}" var="row">
													<tr>
														<td class="serial">1.</td>
														<td> <span class="product">${row.p_name}</span> </td>
														<td><span class="paidMoney">??? ${row.c_sum_price}???</span></td>
														<td><span class="quantity">${row.sd_amount}???</span></td>
														<td><span class="subRound">${row.sd_next_date}</span></td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div> <!-- /.table-stats -->
									</div>
								</div> <!-- /.?????? ???????????? -->
								<!-- ?????? ?????? ?????? ?????? -->
								<div class="card">
									<div class="card-body">
										<h4 class="box-title">?????? ?????? ?????? ?????? </h4>
										<p>???????????? : ???????????? > ?????? ?????? > ????????? > ???????????? </p>
									</div>
									<div class="card-body--">
										<div class="table-stats order-table ov-h">
											<table class="table ">
												<thead>
													<tr>
														<th class="serial">#</th>
														<th class="orderNumber">????????????</th>
														<th class="ordarDate">????????????</th>
														<th class="product">????????????</th>
														<th class="paidMoney">????????????</th>
														<th>????????????</th>
													</tr>
												</thead>
												<tbody>
												<c:forEach items="${ddtos}" var="row">
													<tr>
														<td class="serial">1.</td>
														<td> <span class="orderNumber">${row.d_number}</span> </td>
														<td>  <span class="ordarDate">${row.d_date}</span> </td>
														<td> <span class="product">${row.p_name} ???</span> </td>
														<td><span class="paidMoney">??? ${row.c_sum_price}???</span></td>
														<td>
															<span class="badge badge-payment-complete">${row.d_state}</span>
														</td>
													</tr>
													</c:forEach>
												</tbody>
											</table>
										</div> <!-- /.table-stats -->
									</div>
								</div> <!-- /.?????? ?????? ?????? ?????? -->
							</div>  <!-- /.col-lg-8 -->
	
							<div class="col-xl-4">
								<div class="row">
									<div class="col-lg-6 col-xl-12">
										<div class="card br-0">
											<div class="card-body">
												<div class="chart-container ov-h">
													<div id="flotPie1" class="float-chart"></div>
												</div>
											</div>
										</div><!-- /.card -->
									</div>
								</div>
							</div> <!-- /.col-md-4 -->
						</div>
					</div>
					<!-- /.orders -->
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
	<script src="${pageContext.request.contextPath }/resources/js/price-range.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
	<script src="${pageContext.request.contextPath }/resources/js/chkNotice.js"></script>

</body>
</html>