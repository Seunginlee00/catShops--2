
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- 고객지원-help -->
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>LHJ | 고객지원</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath }/resources/js/html5shiv.js"></script>
    <script src="${pageContext.request.contextPath }/resources/js/respond.min.js"></script>

    <style>
        img {
            height: 150px;
            width: 150px;
        }

        #btn {
            text-align: center;
        }
        #faqStyle{
            min-height: calc(100vh - 136px);
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
                    <div class="category-tab">
                        <!--category-tab-->
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#questions" data-toggle="tab">1:1질문</a></li>
                                <li><a href="#faq" data-toggle="tab">FAQ</a></li>
                            </ul>
                        </div>
                        <div class="tab-content">
                            <!-- 정기배송상품-->
                            <div class="tab-pane fade active in" id="questions">
                                <div class="card col-sm-12">
                                    <div id='my_div'>
                                        <div class="card col-sm-10">
                                            <div class="table-stats order-table ov-h">
                                                <table class="table ">
                                                    <thead>
                                                        <tr>
                                                            <th class="number">#</th>
                                                            <th class="title">제목</th>
                                                            <th class="date">날짜</th>
                                                            <th class="answerOrNot">답변여부</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                    <c:forEach items="${list}" var="row">
                                                        <tr>
                                                            <td><a href="contentView3?s_number=${row.s_number}">${row.s_number}</a></td>
                                                         
                                                            <td class="title">${row.s_type}</td>
                                                            <td>${row.s_dates }</td>
                                                            <td>
                                                                <span class="badge badge-waiting">${row.s_check}</span>
                                                            </td>
                                                        </tr>
                                                        </c:forEach>
                                                    </tbody>
                                                </table>
                                            </div> <!-- /.table-stats -->
                                        </div>
                                        <!--  -->
                                        <div class="col-sm-2">
                                            <button class="btn btn-primary" type="submit" onclick="location='inquiry'">문의하기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 정기배송취소-->
                            <div class="tab-pane fade" id="faq">
                                <div class="card col-sm-12">

                                    <div class="container-fluid" id="faqStyle">
                                        <div class="panel-group" id="accordion" role="tablist"
                                            aria-multiselectable="true">
                                            <div class="panel panel-default">
                                                <div class="panel-heading " role="tab">
                                                    <a role="button" data-toggle="collapse" data-parent="#accordion"
                                                        href="#subService" aria-expanded="false" class="fa fa-angle-down">
                                                        구독 서비스
                                                    </a>
                                                </div>
                                                <div id="subService" class="panel-collapse collapse" role="tabpanel">
                                                    <div class="panel-body">
                                                        여기에 뭘 적어야 하는데..... 뭘 적을까???

                                                    </div>
                                                </div>
                                            </div>
                                            <!--  -->
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab">
                                                    <a role="button" data-toggle="collapse" data-parent="#accordion"
                                                        href="#deliveryDate" aria-expanded="false" class="fa fa-angle-down">
                                                        배송 기한
                                                    </a>
                                                </div>
                                                <div id="deliveryDate" class="panel-collapse collapse" role="tabpanel">
                                                    <div class="panel-body">
                                                        배송 기한은 주문하신 날짜에서 날씨 또는 예상치 못한 교통 상황으로 인해 최대 1~2주 정도 걸릴 수 있습니다.
                                                    </div>
                                                </div>
                                            </div>
                                            <!--  -->
                                            <div class="panel panel-default">
                                                <div class="panel-heading" role="tab">
                                                    <a role="button" data-toggle="collapse" data-parent="#accordion"
                                                        href="#deliveryDelay" aria-expanded="false" class="fa fa-angle-down"> 
                                                        배송지연
                                                    </a>
                                                </div>
                                                <div id="deliveryDelay" class="panel-collapse collapse" role="tabpanel">
                                                    <div class="panel-body">
                                                        약속드린 시간 내 배송해 드리기 위해 최선을 다 하고 있으나, 날씨(태풍, 장마, 폭설, 지진 등) 또는 예상치 못한 교통 상황으로 인해 부득이 지연이 발생할 수 있습니다. 
                                                        <br>
                                                        배송 지연 시에는 문자로 안내해 드리고 있으며, 최대한 빠른 시간 내에 배송 될 수 있도록 노력하겠습니다.
                                                        <br>
                                                        더욱 자세한 내용은  고양이대통령 고객센터로 문의해 주시면 배송 상황 확인 후 정성껏 안내해 드리겠습니다.                                                    </div>
                                                </div>
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