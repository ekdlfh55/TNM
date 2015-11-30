<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyArtist">

	<div class="container">

		<!-- 프로필 본문 시작 -->
		<div class="col-md-9">
			<!--    <div class="profile-body"> -->
			<!--Basic Table-->
			<div class="panel panel-grey margin-bottom-40">

				<div class="panel-heading">
					<h3 class="panel-title">
						<i class="fa fa-music color-orange"></i> 곡
					</h3>

				</div>

				<div class="panel-body">
					<p style="margin: 0px;">
						<!-- <input type="button" class="btn btn-xs rounded btn-default" value="전체선택">
                             <i class="fa fa-check-square-o "></i>  -->
						<button type="submit" name=""
							class="btn btn-xs rounded btn-default">
							<i class="fa  fa-check color-orange"></i> 전체선택
						</button>

						<button type="submit" name=""
							class="btn btn-xs rounded btn-default">
							<i class="fa fa-caret-square-o-right color-orange"></i> 듣기
						</button>

						<button type="submit" name=""
							class="btn btn-xs rounded btn-default">
							<i class="fa  fa-plus-square color-orange"></i> 담기 <br>
						</button>
					</p>
				</div>

				<table class="table">
					<thead style="text-align: center;">
						<tr>
							<th><input type="checkbox" name="check_all" /></th>
							<th>No</th>
							<th></th>
							<th>곡명</th>
							<th class="hidden-sm">아티스트</th>
							<th>앨범</th>
							<th>좋아요</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" name="input_check" value="1" /></td>
							<td>1</td>
							<td><a href=""> <i
									class="fa fa-caret-square-o-right color-orange">&nbsp;&nbsp;&nbsp;</i></a>
								<a href=""> <i class="fa  fa-plus-square color-orange"></i></a></td>
							<td>곡이름</td>
							<td>가수이름</td>
							<td>앨범이름</td>
							<td>
								<!-- <button type="submit" name="" class="btn btn-xs rounded btn-default"> -->
								<a href=""> <i class="fa fa-heart color-orange"></i></a>1234<br>
							<!-- </button> -->
							</td>

						</tr>
						<tr>
							<td>1</td>
							<td>2</td>
							<td></td>
							<td>Jacob</td>
							<td class="hidden-sm">Thornton</td>
							<td>@fat</td>
							<td><span class="label label-success">Success</span></td>

						</tr>
					</tbody>
				</table>

			</div>
			<!-- panel panel-grey -->


		</div>

	</div>
	<!--=== End Content Part ===-->
</div>
<!--/End Wrapepr-->
