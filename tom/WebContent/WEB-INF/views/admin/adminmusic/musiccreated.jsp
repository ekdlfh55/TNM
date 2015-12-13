<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div>
	<form action="#" class="sky-form">
		<header>노래추가</header>

		<fieldset>

			<div class="row">
				<div class="col-md-4">
					<section>
						<label class="label">노래제목</label> <label class="input"> <input
							type="text">
						</label>
					</section>
				</div>

				<div class="col-md-4">
					<section>
						<label class="label">가수</label> <label class="input"> <input
							type="text">
						</label>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-md-8">
					<section>
						<label class="label">음악</label> <label for="file"
							class="input input-file">
							<div class="button">
								<input type="file" id="file"
									onchange="this.parentNode.nextSibling.value = this.value">Browse
							</div>
							<input type="text" readonly>
						</label>
					</section>
				</div>
			</div>

		</fieldset>

		<footer>
			<button type="submit" class="btn-u">등록하기</button>
			<button type="reset" class="btn-u btn-u-default">등록취소</button>
			<button type="button" class="btn-u btn-u-default"
				onclick="window.history.back();">돌아가기</button>
		</footer>
	</form>
</div>