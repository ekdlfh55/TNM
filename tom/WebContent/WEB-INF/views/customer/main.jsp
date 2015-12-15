<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%
	String cp = request.getContextPath();
%>

<script type="text/javascript">
var active="${active}";
$(function(){
	$('#customerTab a[href="#${active}"]').tab('show');
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
	if(active=="home")
	    url="<%=cp%>/home/list.do";
    else	if(active=="notice")
	    url="<%=cp%>/notice/list.do";
    else	if(active=="ovonotice")
	    url="<%=cp%>/ovonotice/list.do";

		var params = "pageNum=" + page;
		$.ajax({
			//type:"post",
			url : url,
			data : params,
			success : function(data) {
				var id = "#" + active;
				$(id).html(data);
			},
			error : function(e) {
				alert(e.responseText);
			}
		});
	}
</script>

<div class="wrap">
<div class="container content">
	<div class="tab-v2">
	
		<div role="tabpanel" style="margin-top: 30px;">
		
			<ul id="customerTab" class="nav nav-tabs" role="tablist">
				<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">홈</a></li>
				<li role="presentation"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab">공지사항</a></li>
				<li role="presentation"><a href="#ovonotice" aria-controls="ovonotice" role="tab" data-toggle="tab">1:1질문게시판</a></li>
			</ul>
			
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="home"></div>
				<div role="tabpanel" class="tab-pane" id="notice"></div>
				<div role="tabpanel" class="tab-pane" id="ovonotice"></div>
			</div>
			
		</div>
	</div>
</div>
</div>
