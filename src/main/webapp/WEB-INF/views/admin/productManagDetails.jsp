<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 관리자 : 상품 관리-디테일 페이지 -->
<!doctype html>

<html>

<head>
    <meta charset="utf-8">
    <title>LHJ | M.상품상세</title>

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/admin/assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!-- 차트 링크 -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>

</head>

<body>
    <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">

                    <!-- /.menu-title -->
                    <li class="menu-title">ADMIN PAGE</li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i
                                class="menu-icon fa fa-user"></i>회원/관리자 관리</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-user"></i><a href="memberManagement.jsp">회원 관리</a></li>
                            <li><i class="fa fa-user"></i><a href="adminManagement.jsp">관리자 관리</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-archive"></i>상품</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="fa fa-archive"></i><a href="productManagement.jsp">상품 관리</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-bell "></i>구독</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-bell "></i><a href="subscriptionManagement.jsp">구독관리</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-truck "></i>배송</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-truck"></i><a href="shippingManagement.jsp">배송관리</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-building"></i>업체</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-building"></i><a href="businessManagement.jsp">업체관리</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-mobile"></i>SNS</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-mobile"></i><a href="snsManagement.jsp">SNS관리</a></li>
                        </ul>
                    </li>
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-book"></i>상담</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-book"></i><a href="consultationHistory.jsp">상담내역</a></li>
                            <li><i class="menu-icon fa fa-plus-circle"></i><a href="newConsultation.jsp">새로운 상담</a></li>
                        </ul>
                    </li>


                    <li class="menu-title">Extras</li><!-- /.menu-title -->
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false"> <i class="menu-icon fa fa-plus-square-o"></i>Pages</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="login.jsp">Login</a></li>
                            <li><i class="menu-icon fa fa-cog"></i><a href="settings.jsp">Settings</a></li>

                    </li>
                </ul>
                </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->

    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
            <div class="top-left">
                <div class="navbar-header" id="logoImg">
                    <a class="navbar-brand" href="index.jsp"><img src="${pageContext.request.contextPath }/resources/admin/images/logo.jpeg" alt="Logo"></a>
                    <a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
                </div>
            </div>
            <div class="top-right">
                <div class="header-menu">
                    <div class="header-left">
                        <button class="search-trigger"><i class="fa fa-search"></i></button>
                        <div class="form-inline">
                            <form class="search-form">
                                <input class="form-control mr-sm-2" type="text" placeholder="Search ..."
                                    aria-label="Search">
                                <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                            </form>
                        </div>
                    </div>

                    <div class="user-area dropdown float-right">
                        <a href="#" class="dropdown-toggle active" data-toggle="dropdown" aria-haspopup="true"
                            aria-expanded="false">
                            <img class="user-avatar rounded-circle" src="${pageContext.request.contextPath }/resources/admin/images/admin.jpg" alt="User Avatar">
                        </a>

                        <div class="user-menu dropdown-menu">
                            <a class="nav-link" href="#"><i class="fa fa-user"></i>My Profile</a>
                            <a class="nav-link" href="#"><i class="fa fa-cog"></i>Settings</a>
                            <a class="nav-link" href="#"><i class="fa fa-power-off"></i>Logout</a>
                        </div>
                    </div>

                </div>
            </div>
        </header>
        <!-- /#header -->


        <!-- Content -->
        <div class="content">
            <div class="container-fluid">
                <div class="card">

                    <div class="card-header">
                        <strong>상품상세</strong>
                    </div>
                    <div class="card-body">
                        <form action="#" method="post" enctype="multipart/form-data" class="form-horizontal">
                            <div class="row form-group">
                                <div class="col col-md-3"><label class=" form-control-label">고유번호 : ${pdto.p_number}</label>
                                    <img src="${pageContext.request.contextPath }/${pdto.p_r_image}" alt="">
                                </div>
                                <div class="col-12 col-md-9">
                                    <p class="form-control-static"><strong> ${pdto.p_name}</strong></p>
                                    <!-- 
                                    <form>
                                        <select name="language">
                                            <option value="none">업체선택</option>
                                            <option value="company1">업체1</option>
                                            <option value="company2">업체2</option>
                                            <option value="company3">업체3</option>
                                            <option value="company4">4</option>
                                        </select>
                                    </form>
                                    -->
                                    <br>
                                    <br>
                                    가격 : ${pdto.p_price} 원
                                    <br>
                                    수량 : ${pdto.p_stock} 개
                                    <br>
                                    구독가능여부 : ${pdto.p_subscription}
                                    <!--  
                                    <input type="radio" name="subscribeOrNot" value="가능">가능
                                    <input type="radio" name="subscribeOrNot" value="불가능">불가능
                                    -->
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <strong class="card-title">구매자명</strong>
                                        </div>
                                        <div class="card-body">
                                            <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>아이디</th>
                                                        <th>이름</th>
                                                        <th>이메일</th>
                                                        <th>수량</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>jjungjj!</td>
                                                        <td>황정민</td>
                                                        <td>hjm311jj@gmail.com</td>
                                                        <td>3</td>
                                                    </tr> 
                                                    <tr>
                                                        <td>jjungjj!</td>
                                                        <td>황정민</td>
                                                        <td>hjm311jj@gmail.com</td>
                                                        <td>3</td>
                                                    </tr> 
                                                    <tr>
                                                        <td>jjungjj!</td>
                                                        <td>황정민</td>
                                                        <td>hjm311jj@gmail.com</td>
                                                        <td>3</td>
                                                    </tr> 
                                                    <tr>
                                                        <td>jjungjj!</td>
                                                        <td>황정민</td>
                                                        <td>hjm311jj@gmail.com</td>
                                                        <td>3</td>
                                                    </tr>                                 
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <!--  -->
                                <!-- 구독 가능 상품에만 출력 -->
                                <!--  -->
                                <div class="col col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <strong class="card-title">구매자명</strong>
                                        </div>
                                        <div class="card-body">
                                            <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                                <thead>
                                                    <tr>
                                                        <th>아이디</th>
                                                        <th>이름</th>
                                                        <th>이메일</th>
                                                        <th>수량</th>
                                                        <th>첫구독날짜</th>
                                                        <th>마지막결제일</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>jjungjj!</td>
                                                        <td>황정민</td>
                                                        <td>hjm311jj@gmail.com</td>
                                                        <td>3</td>
                                                        <td>2021.03.03</td>
                                                        <td>2021.06.03</td>
                                                    </tr>
                                                    <tr>
                                                        <td>jjungjj!</td>
                                                        <td>황정민</td>
                                                        <td>hjm311jj@gmail.com</td>
                                                        <td>3</td>
                                                        <td>2021.03.03</td>
                                                        <td>2021.06.03</td>
                                                    </tr>
                                                    <tr>
                                                        <td>jjungjj!</td>
                                                        <td>황정민</td>
                                                        <td>hjm311jj@gmail.com</td>
                                                        <td>3</td>
                                                        <td>2021.03.03</td>
                                                        <td>2021.06.03</td>
                                                    </tr>                                
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                        </form>
                    </div>
                </div>
                <!--  -->

            </div>
            <!-- /.content -->
            <div class="clearfix"></div>
            <!-- Footer -->
            <footer class="site-footer">
                <div class="footer-inner bg-white">
                    <div class="row">
                        <div class="col-sm-6">
                            Copyright &copy; 2018 Ela Admin
                        </div>
                        <div class="col-sm-6 text-right">
                            Designed by <a href="https://colorlib.com">Colorlib</a>
                        </div>
                    </div>
                </div>
            </footer>
            <!-- /.site-footer -->
        </div>
        <!-- /#right-panel -->

        <!-- Scripts -->
        <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/assets/js/main.js"></script>

        <!--  Chart js -->
        <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

        <!--Chartist Chart-->
        <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/assets/js/init/weather-init.js"></script>

        <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
        <script src="${pageContext.request.contextPath }/resources/admin/assets/js/init/fullcalendar-init.js"></script>

        <!--Local Stuff-->

        <!-- Chart -->
        <script src="assets/js/myChart.js"></script>


</body>

</html>
</body>

</html>