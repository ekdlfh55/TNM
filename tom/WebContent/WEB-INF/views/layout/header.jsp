<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<script type="text/javascript">
function sendLogin() {
    var f = document.login1Form;

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

function memberOk() {
	var f = document.join1Form;
	var str;

	str = f.userId.value;
	str = str.trim();
	if(!str) {
		alert("\n아이디를 입력하세요. ");
		f.userId.focus();
		return;
	}
	if(!/^[a-z][a-z0-9_]{4,9}$/i.test(str)) { 
		alert("아이디는 5~10자이며 첫글자는 영문자이어야 합니다.");
		f.userId.focus();
		return;
	}

	f.userId.value = str;

	str = f.userPwd.value;
	str = str.trim();
	if(!str) {
		alert("\n패스워드를 입력하세요. ");
		f.userPwd.focus();
		return;
	}
	if(!/^(?=.*[a-z])(?=.*[!@#$%^*+=-]|.*[0-9]).{5,10}$/i.test(str)) { 
		alert("패스워드는 5~10자이며 하나 이상의 숫자나 특수문자가 포함되어야 합니다.");
		f.userPwd.focus();
		return;
	}
	f.userPwd.value = str;

	if(str!= f.userPwd1.value) {
        alert("\n패스워드가 일치하지 않습니다. ");
        f.userPwd1.focus();
        return;
	}
	
    str = f.userName.value;
	str = str.trim();
    if(!str) {
        alert("\n이름을 입력하세요. ");
        f.userName.focus();
        return;
    }
    f.userName.value = str;

    str = f.birth.value;
	str = str.trim();
    if(!str ) { //|| !isValidDateFormat(str)
        alert("\n생년월일를 입력하세요[YYYY-MM-DD]. ");
        f.birth.focus();
        return;
    }

    var mode="${mode}";
    if(mode=="created") {
    	f.action = "<%=cp%>/member/join";
    } 
    f.submit();
}


</script>

<div id="header">
 <!--=== Header ===-->
    <div class="header">
    <!-- Topbar -->
                 <!-- Topbar -->
          
        <div class="topbar-v1"  style="background: #fdfdfd; border-bottom: solid 1px #f0f0f0;">
            <div class="container">
                <div class="row">
                    <div class="col-md-6" style="padding-left: 40px; margin-top: 5px; ">
                     	<ul class="list-inline top-v1-contacts">
                            <li>
                                <i class="fa fa-envelope"></i> 이메일: <a href="mailto:info@htmlstream.com">4joZZang@naver.com</a>
                            </li>
                            <li>
                                <i class="fa fa-phone"></i> 전화번호: (02)2666-6666
                            </li>
                        </ul> 
                    </div>

                    <div class="col-md-6" >
                        <ul class="list-inline top-v1-data" style="float: right; padding-right: 10px; margin-top: 5px;" >
                            <c:choose>
	                            <c:when test="${empty sessionScope.member}">  
		                            <li><a href="<%=cp%>"><i class="fa fa-home"></i>홈으로 </a></li>
		                            <li class="cd-log_reg"><a class="cd-signin" href="javascript:void(0);">로그인</a></li>
		                            <li><a href="<%=cp%>/member/join.do"> 회원가입</a></li>
		                            <li><a href="<%=cp%>/customer/main.do">고객센터</a></li>
		                        </c:when>
								
								                         
		                        
		                        <c:otherwise>
	                    			<li><font>${sessionScope.member.userName}</font>님</li>
	                            	<li><a href="<%=cp%>/member/pwd.do?mode=update"> 정보수정</a></li>
	                            	<li><a href="<%=cp%>/member/logout.do">로그아웃</a></li>                       
	                            </c:otherwise>
                            </c:choose>
                            
                            <c:if test="${sessionScope.member.userId=='admin'}">	
								<li><a href="<%=cp%>/admin/member.do">관리자</a></li>
							</c:if>
	
                        </ul>
                    </div>
                </div>        
            </div>
        </div>
        <!-- End Topbar -->
        <div class="container">
            <!-- Logo -->
            <a class="logo" href="<%=cp%>">
                <img style="width: 130px; height:55px; margin:15px;" src="<%=cp%>/res/main/assets/img/Logo.jpg" alt="Logo">
            </a>
            <!-- End Logo -->

            

            <!-- Toggle get grouped for better mobile display -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
            </button>
            <!-- End Toggle -->
        </div><!--/end container-->

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
            <div class="container" align="center">
                <ul class="nav navbar-nav">
                 	<!-- 톰앤뮤직 -->
	                    <li class="dropdown">
	                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								톰앤뮤직
	                        </a>
	                        <ul class="dropdown-menu">
	                            <li><a href="<%=cp%>/music/chat.do">톰차트</a></li>
								<li><a href="<%=cp%>/share/share.do">톰DJ</a></li>                      
	                        </ul>
	                    </li>
	                    <!-- 톰앤뮤직 -->
	
	                    <!-- 커뮤니티 -->
	                    <li class="dropdown">
	                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								톰커뮤니티
	                        </a>
	                        <ul class="dropdown-menu">
	             			 	<li><a href="<%=cp%>/genre/gayolist.do">장르게시판</a></li>
	             				<li><a href="<%=cp%>/freeBoard/list.do">자유게시판</a></li>
		                    </ul>
	                    </li>
	                   <!-- 커뮤니티 -->
	
	                    <!-- 뮤직스토리 -->
	                    <li><a href="<%=cp%>/story/story.do">뮤직스토리 </a></li>
	                    <!-- 뮤직스토리 -->
	
	                    <!-- 마이탭 -->
	                    <li class="dropdown">
	                        <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
								 마이탭
	                        </a>
	                        <ul class="dropdown-menu">              
	                            <li><a href="<%=cp%>/myalbum/mypage.do">마이앨범</a></li>
	                            <li><a href="<%=cp%>/myalbum/mypage.do">마이페이지</a></li>                                      
	                        </ul>
	                    </li>
                  		<!-- 마이탭 -->
                  		
                  		<!--  -->
	                     <li><a href="<%=cp%>/event/event.do">이벤트 </a></li>
                  		<!-- 마이탭 -->
                </ul>
            </div><!--/end container-->
        </div><!--/navbar-collapse-->
    </div>
    <!--=== End Header ===-->
    
    <div class="cd-user-modal"> <!-- this is the entire modal form, including the background -->
        <div class="cd-user-modal-container"> <!-- this is the container wrapper -->
            <ul class="cd-switcher">
                <li><a href="javascript:void(0);">로그인</a></li>
                <li><a href="javascript:void(0);">회원가입</a></li>
            </ul>

            <div id="cd-login"> <!-- log in form -->
                <form class="cd-form" name="login1Form" method="post" action="">
                    <p class="social-login">
                        <span class="social-login-facebook"><a href="#"><i class="fa fa-facebook"></i> Facebook</a></span>
                        <span class="social-login-google"><a href="#"><i class="fa fa-google"></i> Google</a></span>
                        <span class="social-login-twitter"><a href="#"><i class="fa fa-twitter"></i> Twitter</a></span>
                    </p>
                    
                    <div class="lined-text"><span>로그인</span><hr></div>

                    <p class="fieldset">
                        <label class="image-replace cd-username" for="signin-userid">아이디</label>
                        <input class="full-width has-padding has-border" id="signin-userid"  name="userId" type="text" placeholder="아이디">                     
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signin-password">비밀번호</label>
                        <input class="full-width has-padding has-border" id="signin-password" type="text" name="userPwd"  placeholder="비밀번호">
                        <a href="javascript:void(0);" class="hide-password">숨기기</a>                      
                    </p>

                    <p class="fieldset">
                        <input type="checkbox" id="remember-me" checked>
                        <label for="remember-me">아이디를 저장합니다.</label>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding" type="button" value="로그인" onclick="sendLogin();">
                    </p>
                </form>

                <p class="cd-form-bottom-message"><a href="javascript:void(0);">비밀번호를 잊어버렸습니까?</a></p>
                <!-- <a href="javascript:void(0);" class="cd-close-form">Close</a> -->
            </div> <!-- cd-login -->

            <div id="cd-signup"> <!-- sign up form -->
                <form class="cd-form" name="join1Form" method="post" >
                    <p class="social-login">
                        <span class="social-login-facebook"><a href="#"><i class="fa fa-facebook"></i> Facebook</a></span>
                        <span class="social-login-google"><a href="#"><i class="fa fa-google"></i> Google</a></span>
                        <span class="social-login-twitter"><a href="#"><i class="fa fa-twitter"></i> Twitter</a></span>
                    </p>

                    <div class="lined-text"><span>회원가입</span><hr></div>
					
					<p class="fieldset">
                        <label class="image-replace cd-username" for="signup-userId">UserId</label>
                        <input class="full-width has-padding has-border" id="signup-username"  name="userId" type="text" placeholder="아이디">         
                    </p>
                    
                    <p class="fieldset">
                        <label class="image-replace cd-username" for="signup-username">Username</label>
                        <input class="full-width has-padding has-border" id="signup-username" name="userName" type="text" placeholder="이름">         
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-password">Password</label>
                        <input class="full-width has-padding has-border" id="signup-password" type="text" name="userPwd"  placeholder="패스워드">
                        <a href="javascript:void(0);" class="hide-password">Hide</a>              
                    </p>

                    <p class="fieldset">
                        <label class="image-replace cd-password" for="signup-password1">Again Password</label>
                        <input class="full-width has-padding has-border" id="signup-password1" name="userPwd1" type="text"  placeholder="패스워드확인">
                        <a href="javascript:void(0);" class="hide-password">Hide</a>
                    </p>

                    <p class="fieldset">
                        <input type="checkbox" id="accept-terms">
                        <label for="accept-terms">위의 사항을 확인합니다.</label>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding" type="button" value="가입하기" onclick="memberOk();">
                    </p>
                </form>

                <!-- <a href="javascript:void(0);" class="cd-close-form">Close</a> -->
            </div> <!-- cd-signup -->

            <div id="cd-reset-password"> <!-- reset password form -->
                <p class="cd-form-message">비밀번호를 잊어버렸습니까? 당신의 이메일 주소를 입력해 주세요. 새로운 비밀번호를 만들 수 있는 링크를 받을 수 있습니다.</p>

                <form class="cd-form">
                    <p class="fieldset">
                        <label class="image-replace cd-email" for="reset-email">E-mail</label>
                        <input class="full-width has-padding has-border" id="reset-email" type="email" placeholder="E-mail">
                        <span class="cd-error-message">Error message here!</span>
                    </p>

                    <p class="fieldset">
                        <input class="full-width has-padding" type="submit" value="Reset password">
                    </p>
                </form>

                <p class="cd-form-bottom-message"><a href="javascript:void(0);">Back to log-in</a></p>
            </div> <!-- cd-reset-password -->
            <a href="javascript:void(0);" class="cd-close-form">Close</a>
        </div> <!-- cd-user-modal-container -->
    </div> <!-- cd-user-modal -->
</div>