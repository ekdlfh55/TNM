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
    <title>Profile Settings | Unify - Responsive Website Template</title>

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

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/profile.css">

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
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>정보변경</a></li>
                            <li><a href="#"><i class="fa fa-chevron-circle-right"></i>비밀번호변경</a></li>
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
            
            <!-- 정보 변경 -->
<!-- Profile Content -->
            <div class="col-md-9">
                <div class="profile-body margin-bottom-20">
                    <div class="tab-v1">
                            <div id="passwordTab" class="profile-edit tab-pane fade in active">
                                <h2 class="heading-md">비밀번호변경</h2>
                                <br>
                                <form class="sky-form" id="sky-form4" action="#">
                                    <dl class="dl-horizontal">
                                        <dt>UserID</dt>
                                        <dd>
                                            <section>
                                                <label class="input">
                                                    <i class="icon-append fa fa-user"></i>
                                                    <input type="text" placeholder="Username" name="username">
                                                    <b class="tooltip tooltip-bottom-right">Needed to enter the website</b>
                                                </label>
                                            </section>
                                        </dd>
                                        <dt>Email address</dt>
                                        <dd>
                                            <section>
                                                <label class="input">
                                                    <i class="icon-append fa fa-envelope"></i>
                                                    <input type="email" placeholder="Email address" name="email">
                                                    <b class="tooltip tooltip-bottom-right">Needed to verify your account</b>
                                                </label>
                                            </section>
                                        </dd>
                                        <dt>Enter your password</dt>
                                        <dd>
                                            <section>
                                                <label class="input">
                                                    <i class="icon-append fa fa-lock"></i>
                                                    <input type="password" id="password" name="password" placeholder="Password">
                                                    <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                                                </label>
                                            </section>
                                        </dd>
                                        <dt>Confirm Password</dt>
                                        <dd>
                                            <section>
                                                <label class="input">
                                                    <i class="icon-append fa fa-lock"></i>
                                                    <input type="password" name="passwordConfirm" placeholder="Confirm password">
                                                    <b class="tooltip tooltip-bottom-right">Don't forget your password</b>
                                                </label>
                                            </section>
                                        </dd>
                                    </dl>
                                    <button type="button" class="btn-u btn-u-default">Cancel</button>
                                    <button class="btn-u" type="submit">Save Changes</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Profile Content -->
            <!-- End 정보변경 -->
        </div><!--/End row-->
    </div>
    <!--=== End Profile ===-->

   
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