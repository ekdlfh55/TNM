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
	     파일은 최대 10MB 까지만 업로드가 가능합니다.<br/>
	     파일의 용량을 확인하고 다시 등록하기시 바랍니다. 
		</div>
		
		<div style="width:600px; height: 50px; text-align: center;">
	    <input type="button" value=" 이전화면으로 이동 >> "
	              class="orange" style="width:150px; height: 25px;"
	              onclick="javascript:history.back();">
	   </div>  
	</div>	
</div>
