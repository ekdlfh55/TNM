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
    <title>Profile Me | Unify - Responsive Website Template</title>

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
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
	<link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/brand-buttons/brand-buttons.css">
	<link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/brand-buttons/brand-buttons-inversed.css">
	
    <!-- CSS Page Style -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/profile.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/shortcode_timeline2.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<div class="wrapper">
    

    <!--=== Profile ===-->
    <div class="container content profile">
    	<div class="row">
            <!--Left Sidebar-->
            <div class="col-md-3 md-margin-bottom-40">
                <img class="img-responsive profile-img margin-bottom-20" src="<%=cp%>/res/main/assets/img/testimonials/img5.jpg" alt="" style="width: 100%;">

                    <ul class="list-group sidebar-nav-v1" id="sidebar-nav">
                    
                    <!-- 음악 리스트 -->
 					<li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-musiclist">리스트</a>
                        <ul id="collapse-musiclist" class="collapse">
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>스트리밍 리스트</a></li>
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>CD제작 리스트</a></li>
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>공유음악 리스트</a></li>                     
                        </ul>
                    </li>
                    <!-- End 회원정보수정 -->
                    
                    <!-- 기본정보관리 -->
 					<li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-profile">회원정보</a>
                        <ul id="collapse-profile" class="collapse">
                            <li><a href="<%=cp%>/mypage/edit profile.jsp"><i class="fa fa-chevron-circle-right"></i>정보변경</a></li>
                            <li><a href="<%=cp%>/mypage/changepwd.jsp"><i class="fa fa-chevron-circle-right"></i>비밀번호변경</a></li>
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>회원탈퇴</a></li>                     
                        </ul>
                    </li>
                    <!-- End 회원정보수정 -->
                    
                    <!-- 메세지 -->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-message">메세지함</a>
                        <ul id="collapse-message" class="collapse">
                        	<li><a href="#"><i class="fa fa-chevron-circle-right"></i>메세지 보내기</a></li>           
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>보낸 메세지</a></li>
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>받은 메세지</a></li>       
                        </ul>
                    </li>
                    <!-- End 메세지 -->
                    
                    <!-- 이용권/CD 결제정보-->
 					<li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-account">이용권/CD</a>
                        <ul id="collapse-account" class="collapse">
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>이용권 보유현황</a></li>
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>CD제작 예약현황</a></li>                  
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>결제내역</a></li>
                        </ul>
                    </li>
                    <!-- End 이용권/CD 결제정보 -->

                    <!-- 이밴트-->
 					<li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-event">이벤트</a>
                        <ul id="collapse-event" class="collapse">
                            <li><a href="shortcode_icon_general.html"><i class="fa fa-chevron-circle-right"></i> 응모내역</a></li>
                            <li><a href="shortcode_icon_fa.html"><i class="fa fa-chevron-circle-right"></i> 당첨내역</a></li>                           
                        </ul>
                    </li>
                    <!-- End 이벤트 -->
                    <!-- 이밴트-->
                    <li class="list-group-item list-toggle">
                        <a data-toggle="collapse" data-parent="#sidebar-nav" href="#collapse-qna">문의</a>
                        <ul id="collapse-qna" class="collapse">
                            <li><a href="shortcode_icon_general.html"><i class="fa fa-chevron-circle-right"></i> 1:1문의 보내기</a></li>
                            <li><a href="shortcode_icon_fa.html"><i class="fa fa-chevron-circle-right"></i>문의내역보기</a></li>                           
                        </ul>
                    </li>
                    <!-- End 이벤트 -->
                </ul>

                <hr>

                <!--Notification-->
                <div class="panel-heading-v2 overflow-h">
                    <h2 class="heading-xs pull-left"><i class="fa fa-bell-o"></i> Notification</h2>
                    <a href="#"><i class="fa fa-cog pull-right"></i></a>
                </div>
                <ul class="list-unstyled mCustomScrollbar margin-bottom-20" data-mcs-theme="minimal-dark">
                    <li class="notification">
                        <i class="icon-custom icon-sm rounded-x icon-bg-red icon-line icon-envelope"></i>
                        <div class="overflow-h">
                            <span><strong>Albert Heller</strong> has sent you email.</span>
                            <small>Two minutes ago</small>
                        </div>
                    </li>
                    <li class="notification">
                        <img class="rounded-x" src="<%=cp%>/res/main/assets/img/testimonials/img6.jpg" alt="">
                        <div class="overflow-h">
                            <span><strong>Taylor Lee</strong> started following you.</span>
                            <small>Today 18:25 pm</small>
                        </div>
                    </li>
                    <li class="notification">
                        <i class="icon-custom icon-sm rounded-x icon-bg-yellow icon-line fa fa-bolt"></i>
                        <div class="overflow-h">
                            <span><strong>Natasha Kolnikova</strong> accepted your invitation.</span>
                            <small>Yesterday 1:07 pm</small>
                        </div>
                    </li>
                    <li class="notification">
                        <img class="rounded-x" src="<%=cp%>/res/main/assets/img/testimonials/img1.jpg" alt="">
                        <div class="overflow-h">
                            <span><strong>Mikel Andrews</strong> commented on your Timeline.</span>
                            <small>23/12 11:01 am</small>
                        </div>
                    </li>
                    <li class="notification">
                        <i class="icon-custom icon-sm rounded-x icon-bg-blue icon-line fa fa-comments"></i>
                        <div class="overflow-h">
                            <span><strong>Bruno Js.</strong> added you to group chating.</span>
                            <small>Yesterday 1:07 pm</small>
                        </div>
                    </li>
                    <li class="notification">
                        <img class="rounded-x" src="<%=cp%>/res/main/assets/img/testimonials/img6.jpg" alt="">
                        <div class="overflow-h">
                            <span><strong>Taylor Lee</strong> changed profile picture.</span>
                            <small>23/12 15:15 pm</small>
                        </div>
                    </li>
                </ul>
                <button type="button" class="btn-u btn-u-default btn-u-sm btn-block">Load More</button>
                <!--End Notification-->

                <div class="margin-bottom-50"></div>

                <!--Datepicker-->
                <form action="#" id="sky-form2" class="sky-form">
                    <div id="inline-start"></div>
                </form>
                <!--End Datepicker-->
            </div>
            <!--End Left Sidebar-->

            <!-- Profile Content -->
            <div class="col-md-9">
                <div class="profile-body">
                    <div class="profile-bio">
                        <div class="row">
                            <div class="col-md-5">
                                <img class="rounded-x" src="<%=cp%>/res/main/assets/img/testimonials/img5.jpg" style="width: 70%;">
                                <button class="btn-u btn-brd btn-brd-hover rounded-4x btn-u-orange btn-u-sm" type="button" style="float: right;"><i class="fa fa-envelope-o"></i>사진 변경</button>
                            </div>
                            <div class="col-md-7">
                                <h2>woohs0930</h2>
                                <span style="font-size: 18px;"><strong>우효식</strong> 님</span>
                                <hr>
                                <h4>이용권 기간</h4>
                                <span style="font-size: 18px;">2015-12-08 ~ 2016-01-08</span><br>
                                <span>
                    			 <button class="btn btn-block btn-bitcoin-inversed rounded" style="width: 40%">
                      				<i class="fa fa-money"></i> 이용권구매
                    			</button>
                  				</span>
                            </div>
                        </div>
                    </div><!--/end row-->

                    <hr>

                    <div class="row">
                        <!--현황-->
                        <div class="col-sm-6 sm-margin-bottom-30">
                            <div class="panel panel-profile">
                                <div class="panel-heading overflow-h">
                                    <h2 class="panel-title heading-sm pull-left"><i class="fa fa-briefcase"></i> 보관함 </h2>
                                    <a href="#"><i class="fa fa-cog pull-right"></i></a>
                                </div>
                                <div class="panel-body">
                          <div class="row">
                                    <div class="col-sm-2">
                                        <ul class="list-unstyled social-contacts-v2">
                                            <li><i class="fa fa-krw"></i> </li>
                                            <li><i class="fa fa-copyright"></i> </li>
                                            <li><i class="fa fa-truck"></i> </li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-5" align="right">
                                        <ul class="list-unstyled social-contacts-v2">
                                            <li>6000</li>
                                            <li>450</li>
                                            <li>0</li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-4">
                                        <ul class="list-unstyled social-contacts-v2">
                                            <li>캐쉬</li>
                                            <li>마일리지</li>
                                            <li>건</li>
                                        </ul>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <!--End 현황-->

                        <!--메시지쪽-->
                        <div class="col-sm-6 sm-margin-bottom-30">
                            <div class="panel panel-profile">
                                <div class="panel-heading overflow-h">
                                    <h2 class="panel-title heading-sm pull-left"><i class="fa fa-envelope"></i> 메세지함</h2>
                                    <a href="#"><i class="fa fa-cog pull-right"></i></a>
                                </div>
                                <div class="panel-body">
                          <div class="row">
                                    <div class="col-sm-5">
                                        <ul class="list-unstyled social-contacts-v2">
                                            <li>받은 메세지 </li>
                                            <li>이벤트 내역</li>
                                            <li>문의 내역 </li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-3" align="right">
                                        <ul class="list-unstyled social-contacts-v2">
                                            <li>0</li>
                                            <li>3</li>
                                            <li>0</li>
                                        </ul>
                                    </div>
                                    <div class="col-sm-3">
                                        <ul class="list-unstyled social-contacts-v2">
                                            <li>건</li>
                                            <li>건</li>
                                            <li>건</li>
                                        </ul>
                                    </div>
                                </div>
                                </div>
                            </div>
                        </div>
                        <!--End 메세지쪽-->
                    </div><!--/end row-->

                    <hr>

                    <!--Timeline-->
                    <div class="panel panel-profile">
                        <div class="panel-heading overflow-h">
                            <h2 class="panel-title heading-sm pull-left"><i class="fa fa-briefcase"></i> CD 제작</h2>
                            <a href="#"><i class="fa fa-cog pull-right"></i></a>
                        </div>
                        <div class="panel-body margin-bottom-40">
                            
                        </div>
                    </div>
                    <!--End Timeline-->

                    <!--Timeline-->
                    <div class="panel panel-profile">
                        <div class="panel-heading overflow-h">
                            <h2 class="panel-title heading-sm pull-left"><i class="fa fa-mortar-board"></i> 음악 리스트</h2>
                            <a href="#"><i class="fa fa-cog pull-right"></i></a>
                        </div>
                        <div class="panel-body">
                        </div>
                    </div>
                    <!--End Timeline-->

                    <hr>

                    <div class="row">
                        <!--Social Contacts v2-->
                        <div class="col-sm-6">
                            <div class="panel panel-profile">
                                <div class="panel-heading overflow-h">
                                    <h2 class="panel-title heading-sm pull-left"><i class="fa fa-lightbulb-o"></i> Social Contacts <small>(option 2)</small></h2>
                                    <a href="#"><i class="fa fa-cog pull-right"></i></a>
                                </div>
                                <div class="panel-body">
                                    <ul class="list-unstyled social-contacts-v3">
                                        <li><i class="rounded-x tw fa fa-twitter"></i> <a href="#">edward.rooster</a></li>
                                        <li><i class="rounded-x fb fa fa-facebook"></i> <a href="#">Edward Rooster</a></li>
                                        <li><i class="rounded-x sk fa fa-skype"></i> <a href="#">edwardRooster77</a></li>
                                        <li><i class="rounded-x gp fa fa-google-plus"></i> <a href="#">rooster77edward</a></li>
                                        <li><i class="rounded-x gm icon-envelope"></i> <a href="#">edward77@gmail.com</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!--End Social Contacts v2-->

                        <!--Design Skills-->
                        <div class="col-sm-6">
                            <div class="panel panel-profile">
                                <div class="panel-heading overflow-h">
                                    <h2 class="panel-title heading-sm pull-left"><i class="fa fa-pencil"></i> Language Skills</h2>
                                    <a href="#"><i class="fa fa-cog pull-right"></i></a>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                         <div class="p-chart col-sm-6 col-xs-6 sm-margin-bottom-10">
                                            <div class="circle margin-bottom-20" id="circle-4"></div>
                                            <h3 class="heading-xs">Engagement Score</h3>
                                            <p>Celery coriander bitterleaf epazote radicchio shallot.</p>
                                        </div>
                                        <div class="p-chart col-sm-6 col-xs-6">
                                            <div class="circle margin-bottom-20" id="circle-5"></div>
                                            <h3 class="heading-xs">Progfile Completness</h3>
                                            <p>Celery coriander bitterleaf epazote radicchio shallot.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End Design Skills-->
                    </div><!--/end row-->
                </div>
            </div>
            <!-- End Profile Content -->
        </div>
    </div>
    <!--=== End Profile ===-->

    <!--=== Footer Version 1 ===-->
    <div class="footer-v1">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- About -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <a href="index.html"><img id="logo-footer" class="footer-logo" src="<%=cp%>/res/main/assets/img/logo2-default.png" alt=""></a>
                        <p>About Unify dolor sit amet, consectetur adipiscing elit. Maecenas eget nisl id libero tincidunt sodales.</p>
                        <p>Duis eleifend fermentum ante ut aliquam. Cras mi risus, dignissim sed adipiscing ut, placerat non arcu.</p>
                    </div><!--/col-md-3-->
                    <!-- End About -->

                    <!-- Latest -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="posts">
                            <div class="headline"><h2>Latest Posts</h2></div>
                            <ul class="list-unstyled latest-list">
                                <li>
                                    <a href="#">Incredible content</a>
                                    <small>May 8, 2014</small>
                                </li>
                                <li>
                                    <a href="#">Best shoots</a>
                                    <small>June 23, 2014</small>
                                </li>
                                <li>
                                    <a href="#">New Terms and Conditions</a>
                                    <small>September 15, 2014</small>
                                </li>
                            </ul>
                        </div>
                    </div><!--/col-md-3-->
                    <!-- End Latest -->

                    <!-- Link List -->
                    <div class="col-md-3 md-margin-bottom-40">
                        <div class="headline"><h2>Useful Links</h2></div>
                        <ul class="list-unstyled link-list">
                            <li><a href="#">About us</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Portfolio</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Latest jobs</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Community</a><i class="fa fa-angle-right"></i></li>
                            <li><a href="#">Contact us</a><i class="fa fa-angle-right"></i></li>
                        </ul>
                    </div><!--/col-md-3-->
                    <!-- End Link List -->

                    <!-- Address -->
                    <div class="col-md-3 map-img md-margin-bottom-40">
                        <div class="headline"><h2>Contact Us</h2></div>
                        <address class="md-margin-bottom-40">
                            25, Lorem Lis Street, Orange <br />
                            California, US <br />
                            Phone: 800 123 3456 <br />
                            Fax: 800 123 3456 <br />
                            Email: <a href="mailto:info@anybiz.com" class="">info@anybiz.com</a>
                        </address>
                    </div><!--/col-md-3-->
                    <!-- End Address -->
                </div>
            </div>
        </div><!--/footer-->

        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p>
                            2015 &copy; All Rights Reserved.
                           <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                        </p>
                    </div>

                    <!-- Social Links -->
                    <div class="col-md-6">
                        <ul class="footer-socials list-inline">
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Facebook">
                                    <i class="fa fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Skype">
                                    <i class="fa fa-skype"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Google Plus">
                                    <i class="fa fa-google-plus"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Linkedin">
                                    <i class="fa fa-linkedin"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Pinterest">
                                    <i class="fa fa-pinterest"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Twitter">
                                    <i class="fa fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#" class="tooltips" data-toggle="tooltip" data-placement="top" title="" data-original-title="Dribbble">
                                    <i class="fa fa-dribbble"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- End Social Links -->
                </div>
            </div>
        </div><!--/copyright-->
    </div>
    <!--=== End Footer Version 1 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/circles-master/circles.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/plugins/datepicker.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/plugins/circles-master.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
        App.initScrollBar();
        Datepicker.initDatepicker();
        CirclesMaster.initCirclesMaster1();
    });
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>