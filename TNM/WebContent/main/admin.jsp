<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<!DOCTYPE html>
<!--[if IE 7]> <html lang="en" class="ie7"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Clients | Unify - Responsive Website Template</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

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

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/page_clients.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">
   
    <!--=== Breadcrumbs ===-->
    <!-- <div class="breadcrumbs">
        <div class="container">
            <h1 class="pull-left">Clients</h1>
            <ul class="pull-right breadcrumb">
                <li><a href="index.html">Home</a></li>
                <li><a href="">Pages</a></li>
                <li class="active">Clients</li>
            </ul>
        </div>
    </div> --><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
    	<div class="row">
            <div>
            <!-- Begin Sidebar Menu -->
           <div class="headline"><h2>관리자 페이지</h2></div>
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
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-typography">음반관리</a>
                        <ul id="collapse-typography" class="collapse">
                            <li><a href="#"><i class="fa fa-sort-alpha-asc"></i>아티스트음반</a></li>                  
                            <li><a href="#"><i class="fa fa-align-justify"></i>유저음반</a></li>
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
        	<div class="col-md-7">
            	<div class="headline"><h2>최신 앨범</h2></div>
  
	             <div class="row">
	             
	             </div>
           <!--   -->

               <%--  <!-- Clients Block-->
                <div class="row clients-page">
                    <div class="col-md-2">
                        <img src="<%=cp%>/res/main/assets/img/clients2/emirates.png" class="img-responsive hover-effect" alt="" />
                    </div>
                    <div class="col-md-10">
                        <h3>The Coca-Cola Company</h3>
                        <ul class="list-inline">
                            <li><i class="fa fa-map-marker color-green"></i> USA</li>
                            <li><i class="fa fa-globe color-green"></i> <a class="linked" href="#">http://www.example.com</a></li>
                            <li><i class="fa fa-briefcase color-green"></i> Web Design &amp; Development</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati</p>
                        <p>Olerano ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna edetquam lacus. Fusce condimentum eleifend enim a sint occaecati feugiat..</p>
                    </div>
                </div>
                <!-- End Clients Block-->

                <!-- Clients Block-->
                <div class="row clients-page">
                    <div class="col-md-2">
                        <img src="<%=cp%>/res/main/assets/img/clients2/inspiring.png" class="img-responsive hover-effect" alt="" />
                    </div>
                    <div class="col-md-10">
                        <h3>Game Cast TV</h3>
                        <ul class="list-inline">
                            <li><i class="fa fa-map-marker color-green"></i> Europe</li>
                            <li><i class="fa fa-globe color-green"></i> <a class="linked" href="#">http://www.example.com</a></li>
                            <li><i class="fa fa-briefcase color-green"></i> Web Design &amp; HTML/CSS</li>
                        </ul>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati. Olerano ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna edetquam lacus. Fusce condimentum eleifend enim a sint occaecati feugiat..</p>
                    </div>
                </div>
                <!-- End Clients Block--> --%>

                <!-- Pagination -->
                <!-- div class="text-center md-margin-bottom-30">
                    <ul class="pagination">
                        <li><a href="#">«</a></li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li class="active"><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">»</a></li>
                    </ul>
                </div> -->
                <!-- End Pagination -->
            </div><!--/col-md-9-->
       
        </div><!--/row-->
    </div><!--/container-->
    <!--=== End Content Part ===-->

 
</div><!--/wrapper-->

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
