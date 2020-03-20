<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    		<div class="common_header">
				<!--로그아웃 버튼 작동하는것 -->
			<form id="logout"  action="/logout"method="post">
		  		<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
			</form>
			<div class="header_box">
				<h1><a href="/"><img src="${pageContext.request.contextPath}/resources/aiaas/kr/images/keti_logo.jpg" alt="keti.pf logo"></a>
					<span>다양한 빅데이터 분석 플랫폼</span>
				</h1>
				<!--.sta-->
				<div class="sta">
					<a href="/login/pricingPage?lang=ko" class="go_price">가격정책 <span>자세히 보기</span></a>					
					<!--.etcMenu-->

					<a href="javascript:document.getElementById('logout').submit()" class="logout"><span>로그아웃</span></a>
					
					<div class="etcMenu">
						<ul>
							<li class="lang">
								<p class="lang_select">한국어 <em class="fas fa-chevron-down"></em></p>
								<ul class="lst">
									<li><a href="/login/loginForm?lang=en" target="_self"><em>English</em></a></li>
								</ul>
							</li>
						</ul>
					</div>
					
					<!--//.etcMenu-->
				</div>
				<!--//.sta-->
			</div>
		</div>
    