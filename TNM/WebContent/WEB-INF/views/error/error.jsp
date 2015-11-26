<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   String cp = request.getContextPath();
   response.setStatus(HttpServletResponse.SC_OK);
%>

<link rel="stylesheet" href="<%=cp%>/res/css/button.css" type="text/css"/>

<div>
    <div style="width:600px; min-height: 400px; margin: 10px auto; margin-top: 30px;">
		<div style="width:600px; min-height: 50px; text-align: center;">
          시스템에 오류가 발생했습니다.<br/>
	     잠시후 다시 시도 해보시기 바랍니다. 
		</div>
		
		<div style="width:600px; height: 50px; text-align: center;">
	        <input type="button" value=" 메인화면으로 이동 >> "
	              class="orange" style="width:150px; height: 25px;"
	              onclick="javascript:location.href='<%=cp%>/main.do';">
	   </div>  
	</div>	
</div>
