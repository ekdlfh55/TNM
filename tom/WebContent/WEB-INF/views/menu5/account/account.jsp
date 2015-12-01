<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	String cp = request.getContextPath();
%>
<div class="bodyAccount">

	<div class="container">


			<div class="col-md-9">
				<div class="profile-body">
					<div class="panel panel-grey margin-bottom-40">
						<div class="panel-heading">
							<h3 class="panel-title">
								<i class="fa fa-user"></i>결제 수단 선택
							</h3>
						</div>
						<div class="panel-body">
							<!------------------------------------------ 최근들은곡 -------------------------------------->

							<!-- Profile Content -->
							<div class="col-md-10" style="margin-left: 100px;">
								<div class="profile-body margin-bottom-20">
									<div class="tab-v1" style="margin-top: 30px;">
										<ul class="nav nav-justified nav-tabs">
											<li class="active"><a data-toggle="tab" href="#payment">신용카드결제</a></li>
											<li><a data-toggle="tab" href="#bank">무통장입금</a></li>
											<li><a data-toggle="tab" href="#phone">핸드폰결제</a></li>
											<li><a data-toggle="tab" href="#milege">마일리지결제</a></li>
											<li><a data-toggle="tab" href="#cash">캐쉬결제</a></li>
										</ul>
										<div class="tab-content">
											<!--------------------------------------  신용카드 시작 ---------------------------------->
											<div id="payment"
												class="profile-edit tab-pane fade in active">
												<h2 class="heading-md">신용카드 결제입니다!</h2>
												<p>카드 정보를 입력해 주세요^^</p>
												<br>

												<form class="sky-form" id="sky-form" action="#">

													<dl class="dl-horizontal"
														style="text-align: left; padding-top: 10px;">
														<dt style="width: 80px;">
															<strong> 이름 : &nbsp;&nbsp;</strong>
														</dt>
														<dd>
															떨보미 <span> <a class="pull-right" href="#"> </a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 아이디 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															hbm1300 <span> <a class="pull-right" href="#">

															</a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 가격 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															25000원 <span> <a class="pull-right" href="#">

															</a>
															</span>
														</dd>
														<dt style="width: 80px;">
															<strong> 상품명 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															30일 스트리밍 이용권 <span> <a class="pull-right" href="#">

															</a>
															</span>
														</dd>
														<hr>
													</dl>

													<!--Checkout-Form-->
													<section>
														<div class="inline-group">
															<label class="label col col-4" style="width: 20%">카드
																구분 :</label> <label class="radio"><input type="radio"
																style="padding-top: 10px;" checked=""
																name="radio-inline"><i class="rounded-x"></i>개인</label>
															<label class="radio"><input type="radio"
																style="padding-top: 10px;" name="radio-inline"><i
																class="rounded-x"></i>법인</label>

														</div>
													</section>

													<section>
														<label class="input"> <input type="text"
															name="card" id="card" placeholder="카드번호  (번호만 입력해 주세요^^)">
														</label>
													</section>

													<div class="row">
														<section class="col col-10">
															<label class="input"> <input type="text"
																name="name" placeholder="생년월일  (예)910314">
															</label>
														</section>
														<section class="col col-2">
															<label class="input"> <input type="text"
																name="cvv" id="cvv" placeholder="앞2자리">
															</label>
														</section>
													</div>

													<div class="row">
														<label class="label col col-4">카드 유효 기간 :</label>
														<section class="col col-5">
															<label class="select"> <select name="month">
																	<option disabled="" selected="" value="0">월</option>
																	<option value="1">1월</option>
																	<option value="1">2월</option>
																	<option value="3">3월</option>
																	<option value="4">4월</option>
																	<option value="5">5월</option>
																	<option value="6">6월</option>
																	<option value="7">7월</option>
																	<option value="8">8월</option>
																	<option value="9">9월</option>
																	<option value="10">10월</option>
																	<option value="11">11월</option>
																	<option value="12">12월</option>
															</select> <i></i>
															</label>
														</section>
														<section class="col col-3">
															<label class="input"> <input type="text"
																placeholder="Year" id="year" name="년도">
															</label>
														</section>
													</div>
													<hr>
													<!---------------------------약관에 동의합니다----------------------------------- -->
													<div class="row margin-bottom-10">
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 판매자 제공에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, CS가 제한됩니다.
																	<br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>제공받는자</b><br> &nbsp;[톰 물류&유통] <br>
																	-<b>목적</b><br> &nbsp;주문상품의 배송(예약), 고객상담 및 불만처리 <br>
																	-<b>항목</b><br> &nbsp;성명, 주소, 연락처(안심번호 적용 시 연락처는
																	제외), 개인통관고유부호(선택시) <br> -<b>보유기간</b><br>
																	&nbsp;구매확정 후 3개월까지
																</p>
															</div>
														</div>
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 수집 및 이용에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, 구매 및 결제가
																	제한됩니다. <br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>수집이용목적</b><br> &nbsp;대금 결제 서비스 제공
																	신용카드 정보<br> -<b>수집 항목</b><br> &nbsp;계좌 정보
																	결제완료 후<br> -<b>보유기간</b><br> &nbsp;5년 보관 <br>
																	<br>
																	<br>
																	<br>
																	<br>
																</p>
															</div>
														</div>
													</div>
													<!--/row-->
													<!-------------------약관에 동의합니다 끝---------------------- -->
													<div align="center">
														<button class="btn-u btn-u-orange" type="submit"
															style="margin-right: 10px;">결제하기</button>
														<button type="button" class="btn-u btn-u-orange">취소하기</button>
													</div>
													<!--End Checkout-Form-->
												</form>
											</div>
											<!--------------------------------------  첫번째 신용카드 끝 -------------------------------------->





											<!--------------------------------------  두번째 무통장입금 시작 -------------------------------------->

											<div id="bank" class="profile-edit tab-pane fade">
												<h2 class="heading-md">무통장 입금입니다!</h2>
												<p>입금자 정보를 입력해주세요^^</p>
												<br>
												<form class="sky-form" id="sky-form1" action="#">
													<dl class="dl-horizontal"
														style="text-align: left; padding-top: 10px;">
														<dt style="width: 80px;">
															<strong> 이름 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															떨보미 <span> <a class="pull-right" href="#"> </a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 아이디 : &nbsp;&nbsp;</strong>
														</dt>
														<dd>
															hbm1300 <span> <a class="pull-right" href="#">
															</a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 가격 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															25000원 <span> <a class="pull-right" href="#">

															</a>
															</span>
														<dt style="width: 80px;">
															<strong> 상품명 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															30일 스트리밍 이용권 <span> <a class="pull-right" href="#">

															</a>
															</span>
														</dd>
														<hr>
													</dl>

													<div class="inline-group">
														<label class="label col col-4" style="width: 20%">입금
															은행 :</label>
														<section class="col col-5">
															<label class="select"> <select name="month">
																	<option disabled="" selected="" value="0">은행명</option>
																	<option value="1">농협</option>
																	<option value="1">국민은행</option>
																	<option value="3">우리은행</option>
																	<option value="4">신한은행</option>
																	<option value="5">하나은행</option>
																	<option value="6">기업은행</option>
																	<option value="7">부산은행</option>
																	<option value="8">외환은행</option>
																	<option value="9">광주은행</option>
																	<option value="10">sc제일은행</option>
																	<option value="11">경남은행</option>
															</select> <i></i>
															</label>
														</section>
													</div>
													<hr>
													<!-------------------------약관에 동의합니다------------------------------- -->
													<div class="row margin-bottom-10">
														<div class="col-md-6">
															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>
															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 판매자 제공에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, CS가 제한됩니다.
																	<br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>제공받는자</b><br> &nbsp;[톰 물류&유통] <br>
																	-<b>목적</b><br> &nbsp;주문상품의 배송(예약), 고객상담 및 불만처리 <br>
																	-<b>항목</b><br> &nbsp;성명, 주소, 연락처(안심번호 적용 시 연락처는
																	제외), 개인통관고유부호(선택시) <br> -<b>보유기간</b><br>
																	&nbsp;구매확정 후 3개월까지
																</p>
															</div>
														</div>
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 수집 및 이용에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, 구매 및 결제가
																	제한됩니다. <br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>수집이용목적</b><br> &nbsp;대금 결제 서비스 제공
																	신용카드 정보<br> -<b>수집 항목</b><br> &nbsp;계좌 정보
																	결제완료 후<br> -<b>보유기간</b><br> &nbsp;5년 보관 <br>
																	<br>
																	<br>
																	<br>
																	<br>
																</p>
															</div>
														</div>
													</div>
													<!--/row-->
													<!-------------------------약관에 동의합니다 끝----------------------------- -->
													<!--Checkout-Form-->
													<div align="center">
														<button class="btn-u btn-u-orange" type="submit"
															style="margin-right: 10px;">결제하기</button>
														<button type="button" class="btn-u btn-u-orange">취소하기</button>
													</div>
												</form>
											</div>
											<!-----------------------------------두번째 무통장입금 끝-------------------------------------------- -->








											<!---------------------------------------- 세번 째 핸드폰 결제 ---------------------------------------->
											<div id="phone" class="profile-edit tab-pane fade">
												<h2 class="heading-md">핸드폰 결제입니다!</h2>
												<p>핸드폰 결제 확인 후 정보를 입력해주세요^^</p>
												<br>
												<form class="sky-form" id="sky-form3" action="#">
													<dl class="dl-horizontal"
														style="text-align: left; padding-top: 10px;">
														<dt style="width: 80px;">
															<strong> 이름 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															떨보미 <span> <a class="pull-right" href="#"> </a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 아이디 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															hbm1300 <span> <a class="pull-right" href="#">
															</a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 가격 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															25000원 <span> <a class="pull-right" href="#">

															</a>
															</span>
														<dt style="width: 80px;">
															<strong> 상품명 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															30일 스트리밍 이용권 <span> <a class="pull-right" href="#">

															</a>
															</span>
														</dd>
														<hr>
													</dl>

													<div class="inline-group">
														<label class="label col col-4" style="width: 20%">핸드폰
															번호 :</label>
														<section class="col col-2">
															<label class="input"> <input type="text"
																placeholder="앞" maxlength="4">
															</label>
															<!--   <span>
					                                <i class="fa fa-minus"></i>
					                                </span>
					                                -->
														</section>

														<section class="col col-2">
															<label class="input"> <input type="text"
																placeholder="중간" maxlength="4">
															</label>
														</section>

														<section class="col col-2">
															<label class="input"> <input type="text"
																placeholder="끝" maxlength="4">
															</label>
														</section>
													</div>

													<br>
													<!--------------------------약관에 동의합니다-------------------------------- -->
													<div class="row margin-bottom-10">
														<div class="col-md-6">
															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>
															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 판매자 제공에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, CS가 제한됩니다.
																	<br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>제공받는자</b><br> &nbsp;[톰 물류&유통] <br>
																	-<b>목적</b><br> &nbsp;주문상품의 배송(예약), 고객상담 및 불만처리 <br>
																	-<b>항목</b><br> &nbsp;성명, 주소, 연락처(안심번호 적용 시 연락처는
																	제외), 개인통관고유부호(선택시) <br> -<b>보유기간</b><br>
																	&nbsp;구매확정 후 3개월까지
																</p>
															</div>
														</div>
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 수집 및 이용에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, 구매 및 결제가
																	제한됩니다. <br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>수집이용목적</b><br> &nbsp;대금 결제 서비스 제공
																	신용카드 정보<br> -<b>수집 항목</b><br> &nbsp;계좌 정보
																	결제완료 후<br> -<b>보유기간</b><br> &nbsp;5년 보관 <br>
																	<br>
																	<br>
																	<br>
																	<br>
																</p>
															</div>
														</div>
													</div>
													<!--/row-->
													<!-------------------약관에 동의합니다 끝--------------------------------- -->
													<div align="center">
														<button class="btn-u btn-u-orange" type="submit"
															style="margin-right: 10px;">결제하기</button>
														<button type="button" class="btn-u btn-u-orange">취소하기</button>
													</div>
												</form>
											</div>
											<!---------------------------------------- 세번째 핸드폰 결제 끝---------------------------------------->






											<!---------------------------------------- 네번째 마일리지 결제 시작---------------------------------------->

											<div id="milege" class="profile-edit tab-pane fade">
												<h2 class="heading-md">마일리지 결제입니다!</h2>
												<p>마일리지 결제할 정보를 확인 후 입력해 주세요^^</p>
												<br>
												<form class="sky-form" id="sky-form4" action="#">
													<dl class="dl-horizontal"
														style="text-align: left; padding-top: 10px;">
														<dt style="width: 80px;">
															<strong> 이름 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															떨보미 <span> <a class="pull-right" href="#"> </a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 아이디 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															hbm1300 <span> <a class="pull-right" href="#">
															</a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 가격 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															25000원 <span> <a class="pull-right" href="#">

															</a>
															</span>
														<dt style="width: 80px;">
															<strong> 상품명 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															30일 스트리밍 이용권 <span> <a class="pull-right" href="#">

															</a>
															</span>
														</dd>
														<hr>
														<!------------ 캐쉬 정보 ------------>
														<dt style="width: 120px;">
															<strong> 잔여 마일리지 : &nbsp;&nbsp; </strong>
														<dd>
															10000원 <span> <a class="pull-right" href="#">
															</a>
															</span>
														</dd>
														</dt>
														<dt style="width: 120px;">
															<strong> 결제 할 마일리지 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															<input type="text" name="" placeholder="결제할 금액">
															<span> <a class="pull-right" href="#"> </a>
															</span>
														</dd>
													</dl>
													<hr>

													<!-------------------------약관에 동의합니다------------------------------- -->
													<div class="row margin-bottom-10">
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 판매자 제공에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, CS가 제한됩니다.
																	<br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>제공받는자</b><br> &nbsp;[톰 물류&유통] <br>
																	-<b>목적</b><br> &nbsp;주문상품의 배송(예약), 고객상담 및 불만처리 <br>
																	-<b>항목</b><br> &nbsp;성명, 주소, 연락처(안심번호 적용 시 연락처는
																	제외), 개인통관고유부호(선택시) <br> -<b>보유기간</b><br>
																	&nbsp;구매확정 후 3개월까지
																</p>
															</div>
														</div>
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 수집 및 이용에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, 구매 및 결제가
																	제한됩니다. <br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>수집이용목적</b><br> &nbsp;대금 결제 서비스 제공
																	신용카드 정보<br> -<b>수집 항목</b><br> &nbsp;계좌 정보
																	결제완료 후<br> -<b>보유기간</b><br> &nbsp;5년 보관 <br>
																	<br>
																	<br>
																	<br>
																	<br>
																</p>
															</div>
														</div>
													</div>
													<!--/row-->
													<!-------------------------약관에 동의합니다 끝----------------------------- -->
													<div align="center">
														<button class="btn-u btn-u-orange" type="submit"
															style="margin-right: 10px;">결제하기</button>
														<button type="button" class="btn-u btn-u-orange">취소하기</button>
													</div>
												</form>

											</div>
											<!---------------------------------------- 네번째 마일리지 결제 끝---------------------------------------->





											<!---------------------------------------- 다섯번째 캐쉬결제 시작 ---------------------------------------->

											<div id="cash" class="profile-edit tab-pane fade">
												<h2 class="heading-md">캐쉬 결제입니다!</h2>
												<p>캐쉬 결제할 정보를 입력해 주세요^^</p>
												<br>
												<form class="sky-form" id="sky-form5" action="#">
													<dl class="dl-horizontal"
														style="text-align: left; padding-top: 10px;">
														<dt style="width: 80px;">
															<strong> 이름 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															떨보미 <span> <a class="pull-right" href="#"> </a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 아이디 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															hbm1300 <span> <a class="pull-right" href="#">
															</a>
															</span>
														</dd>

														<dt style="width: 80px;">
															<strong> 가격 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															25000원 <span> <a class="pull-right" href="#">

															</a>
															</span>
														<dt style="width: 80px;">
															<strong> 상품명 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															30일 스트리밍 이용권 <span> <a class="pull-right" href="#">

															</a>
															</span>
														</dd>
														<hr>
														<!------------ 캐쉬 정보 ------------>
														<dt style="width: 100px;">
															<strong> 잔여 캐쉬 : &nbsp;&nbsp; </strong>
														<dd>
															10000원 <span> <a class="pull-right" href="#">
															</a>
															</span>
														</dd>
														</dt>
														<dt style="width: 100px;">
															<strong> 결제 할 캐쉬 : &nbsp;&nbsp; </strong>
														</dt>
														<dd>
															<input type="text" name="" placeholder="결제할 금액">
															<span> <a class="pull-right" href="#"> </a>
															</span>
														</dd>
													</dl>
													<hr>



													<!-------------------------약관에 동의합니다------------------------------- -->
													<div class="row margin-bottom-10">
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 판매자 제공에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, CS가 제한됩니다.
																	<br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>제공받는자</b><br> &nbsp;[톰 물류&유통] <br>
																	-<b>목적</b><br> &nbsp;주문상품의 배송(예약), 고객상담 및 불만처리 <br>
																	-<b>항목</b><br> &nbsp;성명, 주소, 연락처(안심번호 적용 시 연락처는
																	제외), 개인통관고유부호(선택시) <br> -<b>보유기간</b><br>
																	&nbsp;구매확정 후 3개월까지
																</p>
															</div>
														</div>
														<div class="col-md-6">

															<label class="checkbox"><input type="checkbox"
																id="terms" name="terms"><i></i><a href="#">약관에
																	동의합니다.</a></label>

															<div class="bg-light">
																<!-- You can delete "bg-light" class. It is just to make background color -->
																<h5>
																	<i class="fa fa-align-justify"></i>개인정보 수집 및 이용에 동의합니다.
																</h5>
																<p>
																	고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부시 상품 배송, 구매 및 결제가
																	제한됩니다. <br>
																	<br> <b>개인정보 수집 내용</b> <br>
																	<br> -<b>수집이용목적</b><br> &nbsp;대금 결제 서비스 제공
																	신용카드 정보<br> -<b>수집 항목</b><br> &nbsp;계좌 정보
																	결제완료 후<br> -<b>보유기간</b><br> &nbsp;5년 보관 <br>
																	<br>
																	<br>
																	<br>
																	<br>
																</p>
															</div>
														</div>
													</div>
													<!--/row-->
													<!-------------------------약관에 동의합니다 끝----------------------------- -->
													<div align="center">
														<button class="btn-u btn-u-orange" type="submit"
															style="margin-right: 10px;">결제하기</button>
														<button type="button" class="btn-u btn-u-orange">취소하기</button>
													</div>
												</form>
											</div>
											<!---------------------------------------- 다섯번째 캐쉬결제 끝 ---------------------------------------->

										</div>
									</div>
								</div>
							</div>
							<!-- End Profile Content -->
						</div>
						<!--/end row-->
					</div>
					<!--=== End Profile ===-->


				</div>
				<!-- panel panel-grey margin-bottom-40 -->

			</div>
			<!-- profile-body -->


		</div>
		<!--/container-->
	</div>
	<!--=== End Content Part ===-->

