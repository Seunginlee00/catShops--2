<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login | can1</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">

    <style>
        div {
            text-align: center;
        }
        #productImg{
            width: 400px;
            height: 400px;
        }
        h2 {
            text-align: center;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }

        #price {
            font-weight: bold;
        }

        #NoticeTable {
            margin-top: 50px;
            margin-bottom: 100px;
            margin-left: auto;
            margin-right: auto;
            border: 1px solid;
            width: 500px;
        }
        #NoticeTableTd {
            border: 1px solid;

        }

        #inquiryTable{
            margin-left: auto;
            margin-right: auto;
            border : 1px solid gray;
            border-collapse : collapse;
            width: 700px;
            margin-bottom: 100px;
            text-align: center;
        }
        #inquiryTh{
            text-align: center;
            border : 1px solid ;
            border-collapse : collapse;
            background-color: rgb(212, 234, 255);
        }
        #inquiryTd{
            border : 1px solid;
            border-collapse : collapse;
        }
        #inquiryTdDetail{
            text-align: left;
        }
        #inquiryButton{
            margin-left: auto;
        }
        #reviewImg{
            width: 100px;
            height: 100px;
        }
        #foot{
            margin-bottom: 50px;
        }
    </style>
</head>
<!--/head-->

<body onload="init();">
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
    <div class="row">
        <section id="can1_detail">
            <div class="container">
                <div class="cart_info col-sm-6">
                    <img id="productImg" src="${pageContext.request.contextPath }/${pdto.p_r_image}" alt="">
                </div>
                <!-- ???????????? ??? ??????(+????????????) -->
                <div class="col-sm-6">
                    <table class="table">
                        <thead>
                            <br>
                                <h2>${pdto.p_name}</h2>
                                <br>
                                <div id="price">????????? : ${pdto.p_price} ???</div>
                                <div id="shippingFee">????????? : 3000???</div>
                                <div id="count">
                                    <form name="form" method="get">
                                        ?????? :
                                        <input type=hidden name="sell_price" value="${pdto.p_price}">
                                        <input type="button" value=" - " onclick="del();">
                                        <input type="text" name="amount" value="1" size="3" onchange="change();">
                                        <input type="button" value=" + " onclick="add();">
                                        <br>
                                        ?????? : <input type="text" name="sum" size="11" readonly>???
                                        <p>??????????????? ???????????? ???????????? ?????? ???????????????.</p>
                                        
                                    </form>
                                </div>
                        </thead>
                        <br>
                        
                        <form action="inputCart" method="post">
                        <input type="hidden" name="id" value= "${dto.m_id}" />
						<input type="hidden" name="pNumber" value= ${pdto.p_number} />
						<input type="hidden" name="name" value= "${pdto.p_name}" /> 
						<input type="hidden" name="price" value= ${pdto.p_price} /> 
						<input type="hidden" name="image" value= "${pdto.p_r_image}" />
                            <button type="submit" class="btn btn-default">????????????</button>
                        </form>
                        <form action="payment">
                            <button type="submit" class="btn btn-default">????????????</button>
                        </form>
                    </table>
                </div>
            </div>
        </section>
    </div>
    <!--/#do_action-->

    <section>
        <div class="container">
            <div class="row">
                <div class="col-sm-12 padding-right">
                    <div class="category-tab">
                        <!--category-tab-->
                        <div class="col-sm-12">
                            <ul class="nav nav-tabs">
                                <li class="active"><a href="#productdetails" data-toggle="tab">?????? ????????????</a></li>
                                <li><a href="#shippingExchangeReturn" data-toggle="tab">??????/??????/??????</a></li>
                                <li><a href="#Reviews" data-toggle="tab">????????????</a></li>
                                <li><a href="inquiry" data-toggle="tab">????????????</a></li>
                            </ul>
                        </div>
                        <div id="imgCenter" class="tab-content">
                            <!-- ?????????????????? -->
                            <div class="tab-pane fade active in" id="productdetails">
                                <div class="col-sm-12 ">
                                    <img src="${pageContext.request.contextPath }/resources/images/product-details/can1_detail.jpg" alt="">
                                    ${pdto.p_content}
                                </div>
                            </div>
                            <!-- ??????/??????/?????? -->
                            <div class="tab-pane fade" id="shippingExchangeReturn">
                                <div class="col-sm-12">
                                    <table id="NoticeTable">
                                        <tr>
                                            <td id="NoticeTableTd">??????</td>
                                            <td id="NoticeTableTd">????????? ??????2????????? ?????? ??? ????????????.</td>
                                        </tr>
                                        <tr>
                                            <td id="NoticeTableTd">??????</td>
                                            <td id="NoticeTableTd">????????? ????????? 5000??? ????????????.</td>
                                        </tr>
                                        <tr>
                                            <td id="NoticeTableTd">??????</td>
                                            <td id="NoticeTableTd">????????? ????????? 3000??? ????????????. </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
					      <div class="tab-pane fade" id="Reviews">
                                <div class="col-sm-12">
                                    <div class="col-sm-1"></div>

                                    <table id="reviewTable" class="col-sm-9">
                                        <tr>
                                            <th id="inquiryTh">??? ??????</th>
                                            <th id="inquiryTh">?????????</th>
                                            <th id="inquiryTh">????????????</th>

                                        </tr>
                                        

                                            <c:forEach var="result" items="${rdtos}" varStatus="status">
                                        <tr style="text-align:center;">
                                            <td><a href="contentView4?r_number=${result.r_number}"><c:out value="${result.r_number}"/></a></td>
                                                <c:if test="${result.r_open eq 'n'}" >
                                                      <td> ???????????? ???????????? ???????????? ??? ??? ????????????. </td>
                                                </c:if>
                                                <c:if test="${result.r_open eq 'y'}" >
                                                    <td><c:out value="${result.m_id}"/></td>
                                                    <td><c:out value="${result.r_content}"/></td
                                                </c:if>
                                            </td>
                                        </tr>
                                        </c:forEach>

                                        
                                        
                                    </table>
                                    <div class="col-sm-2">
                                        <form action="contentView4">
                                            <button id="reviewMore" type="submit" class="btn btn-default">???????????? </button>
                                            <input type="hidden" name="m_id" value="${dto.m_id  }">
                                        </form>
                                    </div>
                                </div>
                            </div>

                            <!-- ???????????? -->
                            <div class="tab-pane fade" id="inquiry">
                                <div class="col-sm-1"></div>
                                    <table id="inquiryTable" class="col-sm-9">
                                        <tr>
                                          <th id="inquiryTh">????????? ??????</th>
                                          <th id="inquiryTh">????????????</th>
                                          <th id="inquiryTh">??????</th>
                                        </tr>

                                        <tr>
                                          <td id="inquiryTd">?????????</td>
                                          <td id="inquiryTd">??????</td>
                                          <td id="inquiryTd">?????? ?????????????</td>              
                                        </tr>
                                        <tr>
                                            <td id="inquiryTd">?????????</td>
                                            <td id="inquiryTd">?????????</td>
                                            <td id="inquiryTd">???????????? ?????? ???????????????.</td>
                                        </tr>
                                        <tr>
                                            <td id="inquiryTd">?????????</td>
                                            <td id="inquiryTd">??????</td>
                                            <td id="inquiryTd">????????? ?????? ????????????..</td>
                                        </tr>
                                      </table>
                                <div class="col-sm-2">
                                    <form  action="inquiryMore">
                                        <button id="inquiryButton" type="submit" class="btn btn-default">?????????</button>
                                    </form>
                                    <form action="inquiry">
                                        <button id="inquiryButton" type="submit" class="btn btn-default">????????????</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--/category-tab-->
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
    <script src="${pageContext.request.contextPath }/resources/js/count.js"></script>
</body>

</html>