<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div>
	<form action="#" class="sky-form">
		<header>앨범추가</header>

		<fieldset>

			<div class="row">
				<div class="col-md-4">
					<section>
						<label class="label">앨범제목</label> <label class="input"> <input
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
				<div class="col-md-4">
					<section>
						<label class="label">발매사</label> <label class="input"> <input
							type="text">
						</label>
					</section>
				</div>

				<div class="col-md-4">
					<section>
						<label class="label">기획사</label> <label class="input"> <input
							type="text">
						</label>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-md-8">
					<label class="label">발매일</label>
					<section>
						<label class="input"> <i
							class="icon-append fa fa-calendar"></i> <input type="date"
							name="#" id="#" placeholder="Start date">
						</label>
					</section>

				</div>
			</div>

			<div class="row">
				<div class="col-md-8">
					<section>
						<label class="label">종류</label> <label class="select"> <select>
								<option value="0">종류선택</option>
								<option value="1">정규</option>
								<option value="2">싱글/미니</option>
								<option value="3">OST/방송</option>
								<option value="4">참여</option>
						</select> <i></i>
						</label>
					</section>
				</div>
			</div>

			<div class="row">
				<div class="col-md-4">
					<section>
						<label class="label">장르1</label> <label class="select"> <select>
								<option value="0">Choose name</option>
								<option value="1">Alexandra</option>
								<option value="2">Alice</option>
								<option value="3">Anastasia</option>
								<option value="4">Avelina</option>
						</select> <i></i>
						</label>
					</section>
				</div>

				<div class="col-md-4">
					<section>
						<label class="label">장르2</label> <label class="select"> <select>
								<option value="0">Choose name</option>
								<option value="1">Alexandra</option>
								<option value="2">Alice</option>
								<option value="3">Anastasia</option>
								<option value="4">Avelina</option>
						</select> <i></i>
						</label>
					</section>
				</div>

			</div>

			<div class="row">
				<div class="col-md-8">
					<section>
						<label class="label">앨범 사진</label> <label for="file"
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

			<div class="row">
				<div class="col-md-8">
					<section>
						<label class="label">앨범내용</label> <label class="textarea">
							<textarea rows="3"></textarea>
						</label>
						<div class="note">
							<strong>Note:</strong> height of the textarea depends on the rows
							attribute.
						</div>
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