<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
	<html lang="ko">
		<head>
			<%@include file="common/meta.jsp"%>
		</head>

	<body>
	<div id="wrap">
		<div class="loginWrap">
		
			<%@include file="common/header.jsp"%>

			<div class="login_box">

				<div class="txt_box">
					<div class="notice_box">
						<div class="boxarea left_box animated fadeInDown ">
							<div class="box_body">
								<div class="pop_cont">
									<button class="box_close2 close2" type="button">닫기</button>
									<img class="pop_img" alt="차량 모니터링 서비스" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/logo_mo_svc.png">
								</div>
								<div class="pop_bottom">
									<p>
										기업 차량의 운행 통계 및<br> 실시간 관리 정보를 제공해주는 서비스!
									</p>
									<a href="http://125.140.110.217:3002/" target="_blank">자세히보기</a>
								</div>
							</div>
						</div>
						<div class="boxarea aca_box animated fadeInDown delay-1">
							<div class="box_body">
								<div class="pop_cont">
									<button class="box_close close3" type="button">닫기</button>
									<img class="pop_img" alt="차량 모니터링 서비스" src="${pageContext.request.contextPath}/resources/aiaas/kr/images/logo_arrive_svc.png">
								</div>
								<div class="pop_bottom data_bottom">
									<p>
										고품질 차량 출도착 서비스를<br> 경험하세요
									</p>
									<a href="/arrSVC">자세히보기</a>
								</div>
							</div>
						</div>

					</div>
					<div class="login_area">
						<p class="animated fadeInUp">빅데이터 분석이 필요할 땐 Keti.pf</p>
						<div class="link_box">
							<a class="btn_sign animated fadeInUp delay-1"
								href="javascript:login()">Sign in with Google</a>
						</div>
						<span class="animated fadeInUp delay-2">차량별 / <strong>다양한 데이터 분석 서비스 제공</strong>

						</span>
					</div>
					<div class="stn_landing">
						<p class="stn_landing_tit">
							<span>빅데이터 분석 기반의 다양한 최신 서비스</span>
						</p>
						<div class="stn_landing_cont">
							<div class="item_set">
								<h4 class="bg_purple">카테고리A</h4>
								<ul class="item_lst">
									<li onclick="location.href='/habitSVC'" title="운전자 습관 분석 서비스 이동">
										<dl class="ico_tts">
											<dt>
												<span>운전자 습관 분석 서비스</span>
												<em>Driver Habit Analysis Service</em>
											</dt>
											<dd>운전자의 주행 습관에 기반하여 각 소속별 점수와 상세 정보를 제공합니다.</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_vf">
											<dt>
												<span>Voice Filter</span> <em>Voice Filter</em>
											</dt>
											<dd>내 목소리와 다른 사람의 목소리가 겹쳐 있는 파일을 입력하면 내 목소리를 분리해냅니다.
												마인즈랩이 구글에 이어 세계 최초로 구현에 성공한 엔진입니다. (2019년 6월)</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/4xPpFKGu3ZM" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_stt">
											<dt>
												<span>카테고리 A_미정_1</span> <em>Speech Recognition, Speech-to-Text</em>
											</dt>
											<dd>음성을 텍스트로 변환하는 엔진으로, 다양한 학습모델을 활용할 수 있고 높은 인식률과 빠른 처리
												속도를 제공합니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/HL8qoqOPcFo" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_den">
											<dt>
												<span>카테고리 A_미정_2</span> <em>Denoise</em>
											</dt>
											<dd>음성에 섞여있는 배경음과 같이, 음성 내의 다양한 잡음을 제거합니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/siu3mfWznbE" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>

										</dl>
									</li>
									
									<li>
										<dl class="ico_dia">
											<dt>
												<span>카테고리 A_미정_3</span> <em>Diarization</em>
											</dt>
											<dd>회의 음성 등 여러 사람의 음성이 포함된 음성을 입력하면 어떤 시간에 어떤 화자가 말한
												음성인지 분리해 냅니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/pj9_kLzUa2k" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>

										</dl>
									</li>
									<li>
										<dl class="ico_vr">
											<dt>
												<span>카테고리 A_미정_4</span> <em>Voice Recognition</em>
											</dt>
											<dd>사람의 음성 데이터를 Vector화하고 그 값을 대조하여 목소리를 인식합니다.</dd>
										</dl>
									</li>
								</ul>
							</div>
							<div class="item_set">
								<h4 class="bg_bGreen">카테고리B</h4>
								<ul class="item_lst">
									<li onclick="location.href='/brokenSVC'" title="차량 고장 관리 서비스 이동">
										<dl class="ico_broken">
											<dt>
												<span>차량 고장 관리 서비스</span> <em>Vehicle Failure
													Management Service</em>
											</dt>
											<dd>차량의 고장 정보와 차량 목록을 관리할 수 있는 관리자용 웹 서비스 입니다.</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_xdc">
											<dt>
												<span>카테고리 B_미정_1</span> <em>eXplainable Document Classifier</em>
											</dt>
											<dd>뉴스 기사를 입력하면 기사의 주제를 정확하게 분류해 냅니다. 더불어 분류의 근거를 문장 단위와
												단어 단위로 제공하는 '설명 가능한 AI'입니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/dCzKeF79ofU" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_nlu">
											<dt>
												<span>카테고리 B_미정_2</span> <em>Natural Language Understanding</em>
											</dt>
											<dd>문장을 입력하면 형태소 분석과 개체명 인식 결과를 제공해 줍니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/4zgfHlAdNDA" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_hmd">
											<dt>
												<span>카테고리 B_미정_3</span> <em>Hierarchical Multiple Dictionary</em>
											</dt>
											<dd>정규표현식으로 표현된 긍정, 부정 문장 패턴을 통해서 문장의 감정을 파악하고 분류합니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/W5HP0i3ZRgA" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_nlg">
											<dt>
												<span>카테고리 B_미정_4</span> <em>NLG(Natural Language Generation)</em>
											</dt>
											<dd>문장을 입력하며, 이를 이어 받아서 새로운 문장을 작문합니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/RfjUCSrnImI" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_itf">
											<dt>
												<span>카테고리 B_미정_5</span> <em>ITF(Intent Finder)</em>
											</dt>
											<dd>입력된 질문의 의도를 파악하여 알려줍니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/TllWVMmRF58" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
								</ul>
							</div>
							<div class="item_set">
								<h4 class="bg_pink">카테고리C</h4>
								<ul class="item_lst">
									<li onclick="window.open('http://keti-carbigdata.org:8891/index')" title="차량 정보 시각화 대시보드 이동">
										<dl class="ico_dash">
											<dt>
												<span>차량 정보 시각화 대시보드</span> <em>Vehicle Information
													Dashboard</em>
											</dt>
											<dd>차량에 대한 정보를 대시보드를 통해 자유롭게 시각화 합니다.</dd>
										</dl>
									</li>
									<li onclick="window.open('http://keti-carbigdata.org:8891/index?page=1')" title="차량 고장 예측 및 분석 이동">
										<dl class="ico_pre">
											<dt>
												<span>차량 고장 예측 및 분석</span> <em>Vehicle Failure
													Prediction And Analysis</em>
											</dt>
											<dd>차량 DTC 분석을 통해 고장을 예측하고 분석하여 대시보드 형태로 제공합니다.</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_tr">
											<dt>
												<span>카테고리 C_미정_1</span> <em>Text Removal</em>
											</dt>
											<dd class="txt">이미지에 있는 텍스트를 찾아 내어 제거해줍니다.</dd>
											<dd class="img">
												<img src="/aiaas/kr/images/img_tr_sample.png"
													alt="이미지에 있는 텍스트를 찾아 내어 제거해줍니다.">
											</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/77rzEwM8cvo" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_avr">
											<dt>
												<span>카테고리 C_미정_2</span> <em>AI Vehicle Recognition
													(AVR)</em>
											</dt>
											<dd>도로 상에서 달리는 차량의 이미지를 입력하면 창문의 위치, 차안에 있는 사람의 위치 그리고
												번호판의 위치를 표시해줍니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/3LfTbfod-BE" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_esr"
											style="background: url(/aiaas/kr/images/menu/ico_vis_5_fold.svg) 6px 6px no-repeat; background-size: 43px;">
											<dt>
												<span>카테고리 C_미정_3</span> <em>Enhanced Super Resolution</em>
											</dt>
											<dd>작은 크기의 이미지를 손실률을 최소화하여 확대해줍니다.</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_esr"
											style="background: url(/aiaas/kr/images/menu/ico_vis_6_fold_.svg) 10px 6px no-repeat; background-size: 32px;">
											<dt>
												<span>카테고리 C_미정_4</span> <em>Face Recognition</em>
											</dt>
											<dd>사람의 얼굴 데이터를 Vector화하고 그 값을 대조하여 얼굴을 인식합니다.</dd>
										</dl>
									</li>
								</ul>
							</div>
							<div class="item_set">
								<h4 class="bg_yell">카테고리D</h4>
								<ul class="item_lst">
									<li onclick="window.open('http://125.140.110.217:3002')"
										title="모니터링 서비스 이동">
										<dl class="ico_mo_svc">
											<dt>
												<span>차량 모니터링 서비스</span> <em>Vehicle Monitoring Service</em>
											</dt>
											<dd>기업 차량의 운행 통계 및 실시간 관리 정보를 제공해줍니다.</dd>
										</dl>
									</li>
									<li onclick="location.href='/arrSVC'" title="출 도착 서비스 이동">
										<dl class="ico_arr_svc">
											<dt>
												<span>차량 출 도착 서비스 </span> <em>Vehicle Arrival Service</em>
											</dt>
											<dd>기업 차량의 출 도착 정보와 이동경로를 제공해줍니다.</dd>
										</dl>
									</li>
									<li>
										<dl class="ico_phonics">
											<dt>
												<span>카테고리 D_미정_1</span> <em>Phonics Assessment</em>
											</dt>
											<dd class="txt">영어 단어의 특정 음소를 지정하여 음소단위의 발음평가를 제공합니다.</dd>
											<dd class="ytb_link">
												<a href="https://youtu.be/Cdza6v-kKkc" target="_blank"
													title="유튜브 데모영상 새창으로 이동">데모 영상 보기</a>
											</dd>

										</dl>
									</li>

								</ul>
							</div>
						</div>
					</div>
					<div class="add_box">
						<h5 class="">빅데이터 서비스를 위한 플랫폼</h5>
						<ul>
							<li><a href="https://data.maum.ai" target="_blank"
								title="마음 Data: 데이터 편집 툴">
									<dl class="ico_data">
										<dt>마음 Data: 데이터 편집 툴</dt>
										<dd>TTS/MRC에 필요한 학습 데이터를 편집하는 툴입니다.</dd>
									</dl>
							</a></li>
							<li><a href="https://minutes.maum.ai:9090/" target="_blank">
									<dl class="ico_mindsedu">
										<dt>마음 Minutes: 회의록 시스템</dt>
										<dd>회의 중 녹음 파일만으로 회의록 작성과 관리를 한번에!</dd>
									</dl>
							</a></li>
							<li><a href="https://voice.maum.ai" target="_blank"
								title="마음 보이스"
								onclick="alert('시범 서비스 운영중입니다. 서비스 사용을 원하시는 분은 대표메일 (hello@mindslab.ai)로 문의 바랍니다. \n\n정식 서비스 오픈까지 조금만 기다려주세요!');">
									<dl class="ico_maumvoice">
										<dt>
											마음 VoiceBot: 음성봇<span>beta</span>
										</dt>
										<dd>24/7, 상담사의 반복적이고 소모적인 I/O Call을 대신해줍니다.</dd>
									</dl>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
						<%@include file="common/footer.jsp"%>
				</div>
		</div>
	
	<!-- 2 .pop_confirm -->
	<div class="pop_confirm">
		<div class="pop_bg"></div>
		<!-- .popWrap -->
		<div class="popWrap" style="min-width: 460px">
			<button class="pop_close" type="button">닫기</button>
			<!-- .pop_bd -->
			<div class="pop_bd">
				<!--아이콘 부분-->
				<em class="fas fa-exclamation-triangle"></em>
				<!--제목 부분-->
				<p>권장 브라우저 안내</p>
				<!--내용 부분-->
				<span>마음 AI는 <strong>크롬(Chrome) 브라우저</strong>에 최적화 되어있습니다. <span
					style="display: block; margin-top: 4px;">크롬 브라우저에서 다양한 마음
						AI의 엔진을 만나보세요!</span>
				</span>
			</div>
			<!-- //.pop_bd -->
			<!--창닫기 버튼 -->
			<div class="btn">
				<button class="btn_close btn_blue">창닫기</button>
			</div>
			<!--창닫기 버튼 -->
		</div>
		<!-- //.popWrap -->
	</div>
	<!-- //.pop_confirm -->

	<script type="text/javascript">
	window.onload = function(){
		var browse = navigator.userAgent.toLowerCase();

		if( (navigator.appName == 'Netscape' && browse.indexOf('trident') != -1) || (browse.indexOf("msie") != -1)) {
			$('.pop_confirm').fadeIn();
		}

		// 공통 팝업창 닫기
		$('.pop_close, .pop_bg, .btn a, .btn button').on('click', function () {
			$('.pop_confirm').fadeOut(300);
		});

 		console.log ("로그")

	};
	</script>


	<script type="text/javascript">   
$(window).load(function() { 
	var errormsg = "";
	if(errormsg != '' && errormsg != null){
		alert(errormsg);
	}		
	
	$('.page_loading').addClass('pageldg_hide').delay(300).queue(function() { 
		$(this).remove(); 
	});


	// product layer popup
	$('.close2').on('click', function () {
		$('.left_box').fadeOut(300);
	});
	$('.close3').on('click', function () {
		$('.aca_box').fadeOut(300);
	});

}); 
</script>


</body>
</html>
	