<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
	request.setCharacterEncoding("UTF-8");
%>
<script type="text/javascript">
var active="${active}";
$(function(){
	$('#myTab a[href="#${active}"]').tab('show');
	
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
	if(active=="main")
	    url="<%=cp%>/main/list.do";
    else	if(active=="notice")
	    url="<%=cp%>/notice/list.do";
    else	if(active=="ovo")
	    url="<%=cp%>/ovo/list.do";
	    
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

<div class="bodynotice">

	<!--=== Breadcrumbs ===-->
	<div class="breadcrumbs">
		<div class="container">
		<div role="tabpannel">
			<ul id="myTab" class="pull-right breadcrumb">
				  <li role="presentation"  class="active"><a href="#main" aria-controls="main" role="tab" data-toggle="tab">홈</a></li>
			      <li role="presentation"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab">공지사항</a></li>
			      <li role="presentation"><a href="#board" aria-controls="board" role="tab" data-toggle="tab">1:1게시판</a></li>
			</ul>
			 <div class="tab-content">
			      <div role="tabpanel" class="tab-pane active" id="main"></div>
			      <div role="tabpanel" class="tab-pane" id="notice"></div>
			      <div role="tabpanel" class="tab-pane" id="board"></div>
			  </div>
		</div>
		</div>
	</div>
	<!--/breadcrumbs-->
</div>

