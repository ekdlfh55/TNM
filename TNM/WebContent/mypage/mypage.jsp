<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
   String cp=request.getContextPath();
%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Tabels | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel="stylesheet" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/headers/header-default.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/footers/footer-v1.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/animate.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">

    <!--=== Content Part ===-->
    <div class="container content">
    	<div class="row">
            <div>
            <!-- Begin Sidebar Menu -->
           <div class="headline"><h2>마이 페이지</h2></div>
            <div class="col-md-3">
                <ul class="list-group sidebar-nav-v1" id="sidebar-nav">
                    
                    <!-- Components -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-components" data-toggle="collapse">맴버관리</a>
                        <ul id="collapse-components" class="collapse">
                            <li><a href="#"><i class="fa fa-comment"></i>회원관리</a></li>                      
                        </ul>
                    </li>
                    <!-- End Components -->
                    
                    <!-- 앨범 -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-typography">앨범관리</a>
                        <ul id="collapse-typography" class="collapse">
                            <li><a href="#"><i class="fa fa-sort-alpha-asc"></i>아티스트앨범</a></li>                  
                            <li><a href="#"><i class="fa fa-align-justify"></i>유저엘범</a></li>
                        </ul>
                    </li>
                    <!-- End 앨범 -->

                    <!-- 아티스트 -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-buttons">아티스트관리</a>
                        <ul id="collapse-buttons" class="collapse">
                            <li><a href="#"><i class="fa fa-flask"></i> 아티스트리스트</a></li>                               
                        </ul>
                    </li>
                    <!-- End 아티스트-->

                    <!-- 이밴트-->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-icons">이벤트</a>
                        <ul id="collapse-icons" class="collapse">
                            <li><a href="shortcode_icon_general.html"><i class="fa fa-chevron-circle-right"></i> 공연 관리</a></li>
                            <li><a href="shortcode_icon_fa.html"><i class="fa fa-chevron-circle-right"></i> 이용권 관리</a></li>
                            <li><a href="shortcode_icon_line.html"><i class="fa fa-chevron-circle-right"></i> 콘서트 관리</a></li>                           
                        </ul>
                    </li>
                    <!-- End 이벤트 -->

                    <!-- 결제 -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-timeline" data-toggle="collapse">결제관리</a>
                        <ul id="collapse-timeline" class="collapse">
                            <li><a href="#"><i class="fa fa-dot-circle-o"></i>이용권</a></li>
                            <li><a href="#"><i class="fa fa-dot-circle-o"></i>CD제작</a></li>
                        </ul>
                    </li>
                    <!-- End 결제 -->

                    <!-- Forms -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-forms" data-toggle="collapse">뮤직스토리</a>
                        <ul id="collapse-forms" class="collapse">
                            <li><a href="#"><i class="fa fa-bars"></i> 뮤직스토리 관리</a></li>                           
                        </ul>
                    </li>
                    <!-- End Forms -->

                    <!-- Tables -->
                    <li class="list-group-item"><a href="shortcode_table_general.html">Tables</a></li>
                    <!-- End Tables -->

                    <!-- Maps -->
                    <li class="list-group-item list-toggle">
                        <a class="accordion-toggle" href="#collapse-maps" data-toggle="collapse">Maps</a>
                        <ul id="collapse-maps" class="collapse">
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_maps_google.html"><i class="fa fa-map-marker"></i> Google Maps</a>
                            </li>
                            <li>
                                <span class="badge badge-u">New</span>
                                <a href="shortcode_maps_vector.html"><i class="fa fa-align-center"></i> Vector Maps</a>
                            </li>
                        </ul>
                    </li>
                    <!-- End Maps -->

                    <!-- Charts -->
                    <li class="list-group-item">
                        <span class="badge badge-u">New</span>
                        <a href="shortcode_compo_charts.html">Charts &amp; Countdowns</a>
                    </li>
                    <!-- End Charts -->
                </ul>
            </div>
            </div>
            <!-- End Sidebar Menu -->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
            <!-- Begin Content -->
            <div class="col-md-9">
                <!--Basic Table-->
				<div class="panel panel-grey margin-bottom-40">
                    <div class="panel-heading">
                        <h3 class="panel-title"><i class="fa fa-user"></i> 마이페이지</h3>
                    </div>
                    <div>
                    <div class="panel-body">
 					<div class="col-md-2" align="center">
                    	<img class="rounded-x" src="<%=cp%>/res/main/assets/img/testimonials/img2.jpg" alt="">
					</div>
                    	<div class="col-md-7" style="padding: 20px;">
									<!-- <div class="headline"><h2>Horizontal Description</h2></div> -->
									<dl class="dl-horizontal">
									
										<dt>아이디</dt>
										<dd>뭐뭐뭐님</dd>
										<dt>마일리지</dt>
										<dd>5000</dd>
										<dt>캐쉬</dt>
										<dd>7000</dd>
										<dt>보유이용권</dt>
										<dd>2015.11.23</dd>
									</dl>
						</div>
                    </div>
                </div>
                </div>
             </div>
          </div>
    </div>
                <!--End Basic Table-->       

      	</div><!-- /row -->
    </div><!--/container-->
    <!--=== End Content Part ===-->
</div><!--/End Wrapepr-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>