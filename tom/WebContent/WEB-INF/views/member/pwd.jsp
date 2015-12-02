 <%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<div class="body3">
    <!--=== Breadcrumbs ===-->
    <div class="breadcrumbs">
        <div class="container">           
            <ul class="pull-right breadcrumb">
                <li><a href="<%=cp%>">main</a></li>
                <li><a href="<%=cp%>/member/login.do">login</a></li>
                <li class="active">Registration</li>
            </ul>
        </div><!--/container-->
    </div><!--/breadcrumbs-->
    <!--=== End Breadcrumbs ===-->

    <!--=== Content Part ===-->
    <div class="container content">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <form name="pwdForm" method="post" class="reg-page">
                    <div class="reg-header">
                        <h2> 정보보호를 위해 패스워드를 다시 한 번 입력해주세요.</h2>
                    </div>

                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-user"></i></span>
                        <input type="text" name="userId"  placeholder="Username" class="form-control">
                    </div>
                    <div class="input-group margin-bottom-20">
                        <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                        <input type="password" name="userPwd" placeholder="Password" class="form-control">
                    </div>

                    <div class="row">
                        <div class="col-md-6 checkbox">
                            <label><input type="checkbox"> Stay signed in</label>
                        </div>
                        <div class="col-md-6">
                            <button class="btn-u pull-right" type="button"  onclick="sendOk();">Login</button>
                        </div>
                    </div>

                    <hr>

                    <h4>Forget your Password ?</h4>
                    <p>no worries, <a class="color-green" href="#">click here</a> to reset your password.</p>
                </form>
                
            </div>
        </div>
    </div><!--/container-->
  
</div>

<script type="text/javascript">
function sendOk() {
    var f = document.pwdForm;

    var str = f.userPwd.value;
    if(!str) {
        alert("\n패스워드를 입력하세요. ");
        f.userPwd.focus();
        return;
    }

    f.action = "<%=cp%>/member/pwd.do";
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