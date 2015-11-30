 <%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<div class="bodyCreatedComplete">
	<br><Br><br><br><Br><br><br><Br><br>
    <!--=== Error V4 ===-->
    <div class="container content">
        <!--Error Block-->
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="error-v4">
                    <a href="#"><img src="<%=cp%>/res/main/assets/img/logo2-default.png" alt=""></a><br>
                    <font style="font-size: 70pt; color:orange; ">가입완료</font><br>
                    <br><Br><br><br><Br><br><br><Br><br><br><Br><br>
                    <span class="welcome" style="font-size:20pt; color: white;"><b>톰앤뮤직에 가입이 되신걸 진심으로 환영합니다.!</b></span>
                    <br><Br><br>
                    <div class="row">
                        <div class="col-md-6 col-md-offset-3">
                            <a class="btn-u btn-brd btn-u-light" href="<%=cp%>">메인홈페이지로 가기</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/container-->
    <!--End Error Block-->

    <!--=== Sticky Footer ===-->
    <div class="container sticky-footer">
        <p class="copyright-space">
            2013 &copy; Unify Template. ALL Rights Reserved.
        </p>
    </div>
    <!--=== End Sticky Footer ===-->
</div>

<%-- <script type="text/javascript">
    $.backstretch([
      "<%=cp%>/res/main/assets/img/background/background.jpg"
      ])
</script> --%>
