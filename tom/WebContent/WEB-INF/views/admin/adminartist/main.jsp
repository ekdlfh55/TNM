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
	$('#adminartistTab a[href="#${active}"]').tab('show');

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
	    url="<%=cp%>/admin/artist/artistlist.do";
	else if(active=="created")
		url="<%=cp%>/admin/artist/artistcreatedform.do";
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
	    	<ul id="adminartistTab" class="nav nav-tabs" role="tablist">
	        	<li role="presentation" class="active"><a href="#list" aria-controls="list" role="tab" data-toggle="tab">아티스트 리스트</a></li>
	        	<li role="presentation"><a href="#created" aria-controls="created" role="tab" data-toggle="tab">아티스트 추가/수정</a></li>	           
	        </ul>
	        
	        <div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="list"></div>
				<div role="tabpanel" class="tab-pane" id="created"></div>
			</div> 
		</div>               
	</div>    
</div>   

