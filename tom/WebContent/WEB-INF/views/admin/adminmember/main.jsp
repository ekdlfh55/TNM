<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String cp=request.getContextPath();
%>
<script type="text/javascript">
var active="${active}";

$(function(){
	$('#adminTab a[href="#${active}"]').tab('show');

	listPage(1);
});
 
$(function(){
	$('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
		// var url=e.target;
		active=$(this).attr("aria-controls");

		listPage(1);
	});	
});

function listPage(page) {
	var url;
	if(active=="list")
	    url="<%=cp%>/admin/member/memberlist.do";
	var params="pageNo="+page;
	$.ajax({
		type:"post"
		,url:url
		,data:params
		,success:function(data) {
			var id="#"+active;
			$(id).html(data);
		}
	    ,error:function(e) {
	    	alert(e.responseText);
	    }
	});
}

</script>


<div class="col-md-9">
              <!-- Tabs -->
	<div class="tab-v1">
		<div role="tabpanel">
	    	<ul id="adminTab" class="nav nav-tabs" role="tablist">
	        	<li role="presentation" class="active"><a href="#list" aria-controls="list" role="tab" data-toggle="tab">맴버 리스트</a></li>	           
	        </ul>
	        
	        <div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="list"></div>
			</div> 
		</div>               
	</div>    
</div>   
