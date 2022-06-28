<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 마이페이지 주문관리 - 주문 현황 -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>LHJ | 주문현황

    </title>
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
                <!-- 카테고리 -->
                <div class="col-sm-3">
                    <div class="left-sidebar">
                        <h2>Category</h2>
                        <div class="panel-group category-products" id="accordian">
                            <!--category-productsr-->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#myInfo">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            내정보
                                        </a>
                                    </h4>
                                </div>
                                <div id="myInfo" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="editInformation">개인정보 수정</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#subscribe">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            구독서비스
                                        </a>
                                    </h4>
                                </div>
                                <div id="subscribe" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="subhis">구독이력</a></li>

                                        </ul>
                                    </div>
                                </div>
                            </div>

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#orderManagement">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            주문관리
                                        </a>
                                    </h4>
                                </div>
                                <div id="orderManagement" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="deliveryStatus">배송현황</a></li>
                                            <li><a href="cancel">취소 / 반품 / 교환</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#myCat">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            내 고양이
                                        </a>
                                    </h4>
                                </div>
                                <div id="myCat" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="cat">내 고양이 등록</a></li>
                                            <li><a href="myCat">내 고양이</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordian" href="#myActivity">
                                            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
                                            내 활동
                                        </a>
                                    </h4>
                                </div>
                                <div id="myActivity" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="myReview">구매후기</a></li>
                                            <li><a href="qNa">Q & A</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/category-products-->




                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="box-title">주문현황 및 진행상황</h4>
                            <p>진행사항 : 결제완료 > 상품 준비 > 배송중 > 배송완료 </p>
                        </div>
                        <div class="card-body--">
                            <div class="table-stats order-table ov-h">
                                <table class="table ">
                                    <thead>
                                        <tr>
                                            <th class="serial">#</th>
                                            <th class="orderNumber">주문번호</th>
                                            <th class="ordarDate">주문일자</th>
                                            <th class="product">상품정보</th>
                                            <th class="paidMoney">결제금액</th>
                                            <th>진행상황</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="serial">1.</td>
                                            <td> <span class="orderNumber">10101010</span> </td>
                                            <td>  <span class="ordarDate">20220524</span> </td>
                                            <td> <span class="product" onclick="location.href='can1'">ANF 참치&연어 고양이 캔</span> </td>
                                            <td><span class="paidMoney">5200원</span></td>
                                            <td>
                                                <span class="badge badge-payment-complete">결제완료</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="serial">1.</td>
                                            <td> <span class="orderNumber">10101010</span> </td>
                                            <td>  <span class="ordarDate">20220524</span> </td>
                                            <td> <span class="product">야옹이 최애 캔</span> </td>
                                            <td><span class="paidMoney">6500원</span></td>
                                            <td>
                                                <span class="badge badge-product-preparation">상품준비중</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="serial">2.</td>
                                            <td> <span class="orderNumber">10101010</span> </td>
                                            <td>  <span class="ordarDate">20220524</span> </td>
                                            <td> <span class="product">야옹이 최애 캔</span> </td>
                                            <td><span class="paidMoney">6500원</span></td>
                                            <td>
                                                <span class="badge badge-shipping">배송중</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="serial">3.</td>
                                            <td> <span class="orderNumber">10101010</span> </td>
                                            <td>  <span class="ordarDate">20220524</span> </td>
                                            <td> <span class="product">야옹이 최애 캔</span> </td>
                                            <td><span class="paidMoney">6500원</span></td>
                                            <td>
                                                <span class="badge badge-shipping">배송중</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="serial">4.</td>
                                            <td> <span class="orderNumber">10101010</span> </td>
                                            <td>  <span class="ordarDate">20220524</span> </td>
                                            <td> <span class="product">야옹이 최애 캔, 플라스틱 장난감 ....</span> </td>
                                            <td><span class="paidMoney">6500원</span></td>
                                            <td>
                                                <span class="badge badge-shipping-complete">배송완료</span>
                                            </td>
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div> <!-- /.table-stats -->
                        </div>
                    </div> <!-- /.나의 최근 주문 정보 -->
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
    <script src="${pageContext.request.contextPath }/resources/js/chkNotice.js"></script>

</body>

</html>