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
    <title>Login 1 | Unify - Responsive Website Template</title>

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

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/animate.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/plugins/font-awesome/css/font-awesome.min.css">

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/pages/page_log_reg_v2.css">

    <!-- CSS Customization -->
    <link rel="stylesheet" href="<%=cp%>/res/main/assets/css/custom.css">
</head>

<body>
<!--=== Content Part ===-->
<div class="container">
    <!--Reg Block-->
    <form  name="loginForm" method="post" action="">
	    <div class="reg-block">
	        <div class="reg-block-header">
	            <h2>로 그 인 </h2>
	            <ul class="social-icons text-center">
	                <li><a class="rounded-x social_facebook" data-original-title="Facebook" href="#"></a></li>
	                <li><a class="rounded-x social_twitter" data-original-title="Twitter" href="#"></a></li>
	                <li><a class="rounded-x social_googleplus" data-original-title="Google Plus" href="#"></a></li>
	                </ul>
	            <p>계정이 없으신가요? <a class="color-green" href="<%=cp%>/member/join.do">여기를</a> 눌러주세요.</p>
	        </div>
	
	        <div class="input-group margin-bottom-20">
	            <span class="input-group-addon"><i class="fa fa-user"></i></span>
	            <input type="text" name="userId"  placeholder="아이디" class="form-control">
	        </div>
	        <div class="input-group margin-bottom-20">
	            <span class="input-group-addon"><i class="fa fa-lock"></i></span>
	            <input type="password" name="userPwd"  class="form-control" placeholder="패스워드">
	        </div>
	        <hr>
	
	        <div class="checkbox">
	            <label>
	                <input type="checkbox">
	                <p>아이디를 저장 합니다.</p>
	            </label>
	        </div>
			<div align="center">
				<span style="color: blue;">${message}</span>
			</div>
	        <div class="row">
	            <div class="col-md-10 col-md-offset-1">
	                <button type="button" class="btn-u btn-block" onclick="sendLogin();">로그인</button>
	            </div>
	        </div>
	    </div>
	    <!--End Reg Block-->
    </form>
</div><!--/container-->
<!--=== End Content Part ===-->

<!-- JS Global Compulsory -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="<%=cp%>/res/main/assets/plugins/backstretch/jquery.backstretch.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="<%=cp%>/res/main/assets/js/app.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function() {
        App.init();
    });
</script>
<script type="text/javascript">
    $.backstretch([
      "<%=cp%>/res/main/assets/img/bg/19.jpg",
      "<%=cp%>/res/main/assets/img/bg/18.jpg",
      ], {
        fade: 1000,
        duration: 7000
    });
    $(function(){
 	   $("input").not($(":button")).keypress(function (evt) {
 	        if (evt.keyCode == 13) {
 	            var fields = $(this).parents('form:eq(0),body').find('button,input,textarea,select');
 	            var index = fields.index(this);
 	            if ( index > -1 && ( index + 1 ) < fields.length ) {
 	                fields.eq( index + 1 ).focus();
 	            }
 	            return false;
 	        }
 	     });
 });
    
    function sendLogin() {
        var f = document.loginForm;

    	var str = f.userId.value;
        if(!str) {
            alert("\n아이디를 입력하세요. ");
            f.userId.focus();
            return;
        }

        str = f.userPwd.value;
        if(!str) {
            alert("\n패스워드를 입력하세요. ");
            f.userPwd.focus();
            return;
        }

        f.action = "<%=cp%>/member/login.do";
        f.submit();
	}
</script>
<!--[if lt IE 9]>
    <script src="<%=cp%>/res/main/assets/plugins/respond.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/html5shiv.js"></script>
    <script src="<%=cp%>/res/main/assets/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

</body>
</html>