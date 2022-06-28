<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>LHJ | CART</title>
    <link href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/prettyPhoto.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/price-range.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath }/resources/css/animate.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath }/resources/css/responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/cart.css">
	<style>
		#totalPrice{
			width: 900px;
			height: 600px;
		}
        img{
        margin-top: -25px;
            width: 50px;
            height: 50px;
        }
        .orderform .p_num{
        font-size: 0.8em;
    	height: 50px;
        }
        .updown{
            margin-top: -15px;
            }
	</style>
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
    <form name="orderform" id="orderform" method="post" class="orderform col-sm-12" action="crDeleteOk" onsubmit="return false;">
    
            <input type="hidden" name="cmd" value="order">
            <div class="basketdiv" id="basket">
                <div class="row head">
                    <div class="subdiv">
                        <div class="check">선택</div>
                        <div class="img">이미지</div>
                        <div class="pname">상품명</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketprice">가격</div>
                        <div class="num">수량</div>
                        <div class="sum">합계</div>
                    </div>
                    <div class="subdiv">
    
                        <div class="basketcmd">삭제</div>
                    </div>
                    <div class="split"></div>
                </div>
        		<!-- 상품 내용물 -->
        		<c:forEach items="${crdtos}" var="row">
        		<input type="hidden" name="id" value="${row.m_id}" />
        		<input type="hidden" name="number" value="${row.cr_number}" />
                <div class="row data">          
                    <div class="subdiv">
                        <div class="check"><input type="checkbox" name="buy" id="260" checked="checked" onclick="javascript:basket.checkItem();">&nbsp;</div>
                        <div class="img" ><img src="${pageContext.request.contextPath }/${row.p_r_image}"></div>
                        
                        <div class="pname">
                            <span><a href="pUserDetail?number=${row.p_number}">${row.p_name}</a></span>
                        </div>
                    </div>
                    
                    <div class="subdiv">
                        <div class="basketprice">${row.p_price}</div>
                        <div class="num">
                            <div class="updown">
                                <input type="text" name="p_num1" id="p_num1" size="2" maxlength="4" class="p_num" value="${row.cr_amount}" onkeyup="javascript:basket.changePNum(1);">
                                <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-up up"></i></span>
                                <span onclick="javascript:basket.changePNum(1);"><i class="fas fa-arrow-alt-circle-down down"></i></span>
                            </div>
                        </div>
                        <div class="sum">${row.p_sum_price}</div>
                    </div>
                    <div class="subdiv">
                        <div class="basketcmd"><a href="crDeleteOk?number=${row.cr_number}&id=${row.m_id}" class="abutton" onclick="javascript:basket.delItem();">삭제</a></div>
                    </div>
                </div>
                <!-- 여기까지 -->
                </c:forEach>
                
            </div>
    
            <div class="right-align basketrowcmd">
                <a href="javascript:void(0)" class="abutton" onclick="javascript:basket.delCheckedItem();">선택상품삭제</a>
                <a href="crDeleteAllOk?id=${dto.m_id}" class="abutton" onclick="javascript:basket.delCheckedItem();">장바구니비우기</a>
            </div>
    
            <div class="bigtext right-align sumcount" id="sum_p_num">상품갯수: ${sum}개</div>
            <div class="bigtext right-align box blue summoney" id="sum_p_price">합계금액: ${total}원</div>
    
            <div id="goorder" class="">
                <div class="clear"></div>
                <div class="buttongroup center-align cmd">
                    <a href="payment">선택한 상품 주문</a>
                </div>
            </div>
        </form>

        <footer id="footer">
            <!--Footer-->
            <div class="footer-top">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="companyinfo">
                                <h2>LHJ</h2>
                                <p>회사설명회사설명회사설명회사설명회사설명회사설명회사설명	</p>
                                <p><b>대표자</b>  김꼬미 | <b>주소</b>  경민대 효행관 401호</p>
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
        <script src="${pageContext.request.contextPath }/resources/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/jquery.scrollUp.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/jquery.prettyPhoto.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/main.js"></script>
        <script src="${pageContext.request.contextPath }/resources/js/cart.js"></script>
    </body>
    </html>
