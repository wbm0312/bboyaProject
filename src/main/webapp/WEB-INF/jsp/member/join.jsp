<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 폼</title>
   <!-- jQuery -->
   <script type="text/javascript"src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
</head>
<body>

    <!-- [발전 필요사항] -->
    <!-- 휴대폰 번호 인증하기 서비스 javaScript 작성 -->
    <!-- 회원유형 선택 할 때 사업자, 일반사용자 등 각 사용자 특성에 맞게 join_form이 떠야 함 ! -->
    <!-- js 파일만 따로 분리해서 사용하는 방법, onclick은 웹 표준에 맞지 않다. -->
    <!-- 부족 기능 -- 아이디와 비밀번호가 같을 경우 form 넘기면 안됨 근데, 이건 그냥 공부니까 비밀번호 재 확인이랑 같은 기능이기 때문에 따로 구현하지 않았음  -->

	<!-- Container -->
	<div id="container">

		<!-- Content -->
		<div id="content">
			<!-- Sub_title -->
			<div id="sub_title">
				<h2>회원가입</h2>
			</div>

	    <!-- Join_area -->
		<div>
		  <ol>
		     <li class="join_step1">
			    <dl>
				<dt class="active">개인정보 입력</dt>
		<dd>
	    <form id="actionForm" name="actionForm" action="/join/register" method="post" onsubmit="return false;">

		<div class="join_info_guide">
	       <dl>
		   <dt>약관동의</dt>
		   <dd>회원 가입 시, 먼저 이용약관을 읽어보신 후 동의하신 다음 필요한 정보를 입력하세요.</dd>
		   <dd>각 회원의 신상정보에 대해서는 "신용정보의 이용 및 보호에 관한 법률"에 의거 완벽한 보안을 유지합니다.</dd>
		   </dl>
           <span class="custom_form"> 
             <input type="checkbox" id="agree_all" name="areeAll" onclick="checkAll();" value="0"> 
             <label for="agree_all" class="ip_chk"> 
             <em></em> <span>전체약관동의</span>
			 </label>
		   </span>
		</div>

        <div class="lst_agree">
        
          <!-- 이용약관 동의 시작 -->
		  <dl>
		   <dd>
         <div class="agree_info">
         
<textarea rows="8" cols="130">
   본 약관(이하 ‘본 약관’이라 함)은 홀로세끼(이하 ‘당사’라 함)가 소유하고 운영하는 웹사이트(이하 ‘홀로세끼’라 함)을 통하여 제공되는 모든 제품 및 서비스(이하 ‘본 서비스’라 함)와 관련하여 본 약관에 따라 당사와 이용계약을 체결하고 본 서비스를 이용하는 고객(이하 ‘회원’이라 함)과 당사 간의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다. 당사에 회원가입을 하지 않고 단순 열람을 원하는 경우, 비회원 이용자를 위한 이용정책이 적용됩니다.
   홀로세끼는 관련법을 위배하지 않는 범위에서 본 약관의 내용을 수정 할 수 있습니다. 본 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 홀로세끼의 관련 화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 당사는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다. 회사가 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다. 회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 또한 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다. 본 약관이나 개정된 내용에 동의하지 않으면 서비스를 이용하시지 말아주시기 바랍니다.

   제1조 (약관 동의 및 자격 요건)
     이용계약은 회원이 되고자 하는 자가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 당사가 이러한 신청에 대하여 승낙함으로써 체결됩니다. 당사는 이러한 신청에 대하여 이용을 승낙함을 원칙으로 합니다. 
     다만, 당사는 실명이 아니거나 타인의 명의를 이용한 경우, 허위의 정보를 기재하거나 당사가 제시하는 내용을 기재하지 않은 경우 등의 경우에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.
     (1) 회원은 본 서비스 이용시 본 약관의 규정된 내용을 따라야 하고 관련법규를 준수해야 합니다.
     (2) 서비스 이용을 위하여 회원이 제공하는 모든 정보는 정확하고 사실이며 회원은 이 정보들의 정확성을 유지하도록 정보 변경시 변경된 정보를 제공하여야 합니다.
     (3) 회원은 최소 14세 이상이어야 하며 회원이 14세 미만이라고 의심되는 경우 회원 계정과 관련 정보는 별도의 통지나 예고 없이 삭제 될 수 있습니다.

   제2조 (계정)
      회원은 홀로세끼 결제 시스템, 게시판 글쓰기등을 이용하기 위하여 계정을 만들어야 합니다. 계정을 만들기 위해 제공되는 회원의 개인정보는 관련법과 당사의 개인보호 정책에 의하여 보호됩니다. 
      회원은 개인정보 변경 시 변경된 정보를 입력하여야 하며 계정의 보안과 기밀을 유지하기 위하여 노력합니다. 홀로세끼는 적절한 이유가 있을 경우 회원의 계정을 폐쇄하거나 접속을 제한할 수 있습니다.

   제3조 (정보의 취급)
     당사는 본 서비스 회원의 전화번호등의 정보를 수집합니다. 수집된 정보는 회원의 동의 없이는 다른 회원을 포함한 제3자에게는 절대 공개되지 않습니다. 
     구체적인 내용은 당사의 개인정보보호 정책을 통하여 확인하실 수 있습니다.
                  
   제4 조 (지적 재산권 및 서비스 내용물의 소유권 및 사용권)
     (1) '내용물' 이라 함은 문자, 그림, 사진, 동영상, 리뷰, 위치 및 기타 데이터 또는 모든 다른 형태의 송신 및 커뮤니케이션된 정보를 뜻합니다.  홀로세끼에 있는 모든 내용물 (이하 ‘서비스 내용물’ 이라 함)은 오직 서비스 이용 목적을 위해서만 회원에게 제공되며, 관련 지적재산권의 보호를 받습니다. 회원은 당사의 서면 승인 없이 서비스 내용물을 변경, 수집, 복제, 송신, 출판 (온라인, 오프라인 포함), 배포, 방송 기타 방법에 의하여 이용하거나 제3자에게 이용하게 하여서는 아니 됩니다.
     (2) 서비스 내용물에는 회원 내용물, 홀로세끼 내용물과 제3자 내용물이 모두 포함됩니다.  '회원 내용물' 이라 함은 평점, 리뷰, 사진, 좋아요, 가고싶다, 체크인, 댓글, 이벤트 참여, 혹은 닉네임 등 프로필에 기재하는 정보 등 회원이 홀로세끼를 이용하면서 등록하거나 그 외 당사 서버에 송신하는 모든 내용물을 의미합니다.  '홀로세끼 내용물' 이라 함은 망고픽, 페이스북 포스팅, 기타 온라인 및 오프라인 제작물 등 홀로세끼가 직접 제작하는 내용물 혹은 당사 서버에 송신하거나 페이스북 페이지에 등록하는 모든 내용물을 의미합니다.  '제3자 내용물' 이라 함은 회원 혹은 홀로세끼에게서 창조되거나 유래되는 내용물은 아니지만 홀로세끼 서비스를 통해 회원에게 제공되는 내용물을 의미합니다.
     (3) 홀로세끼 내용물에 대한 저작권 및 기타 지적 재산권은 당사에 귀속됩니다.  당사는 적절한 이유가 있을 경우 모든 서비스 내용물을 자의적으로 삭제, 수정, 편집, 복제 혹은 재등록 할 수 있습니다. 본 계약에서 달리 명시된 바를 제외하고 당사는 회원에게 어떠한 라이선스나 사용권도 부여하지 않습니다. 본 약관은 당사 또는 당사로부터 라이선스를 받은 자가 서비스 내용물이나 서비스에 대해 가지고 있는 권리, 또 이와 연관된 특허, 상표, 저작권 또는 다른 지적재산권에 영향을 주지 않습니다. 본 약관은 홀로세끼의 상표나 다른 제3자의 상표권과 관련 라이선스나 다른 권리를 부여하지 않습니다.
     (4) 회원 (이하 '해당 회원'이라 함)가 직접 작성 및 등록한 평가점수, 리뷰, 답글, 사진 등의 게시물 (이하 '해당 회원 내용물'이라 함)에 대한 저작권 및 지적 재산권은 해당 회원에게 있으며, 해당 회원 내용물이 타인의 저작권을 침해하는 경우 그에 대한 책임은 해당 회원 본인이 부담합니다. 해당 회원은 당사에게 해당 회원 내용물을 독점적으로 이용할 수 있는 권리를 부여합니다. 이에 따라 당사는 홀로세끼 어플리케이션, 모바일 및 PC 웹사이트, 페이스북 페이지, 광고물, 검색노출, 판촉, 홍보 등의 기타 매체에 해당 회원 내용물을 무상으로 영구적으로 이용할 수 있으며, 필요한 범위 내에서 해당 회원 내용물의 일부를 수정, 복제 및 편집할 수 있습니다. 또한, 해당 회원은 당사가 커뮤니티 가이드라인 혹은 기타 당사 내부의 적절한 이유에 따라 언제든지 해당 회원 내용물을 삭제, 수정 혹은 재등록할 권한이 있음에 동의합니다. 단, 해당 회원은 해당 회원 내용물에 대하여 마케팅, 판촉, 홍보 및 기타 자료로 사용되지 않을 것을 요청할 수 있으며, 홀로세끼 서비스 내의 기능을 이용하여 해당 회원 내용물을 수정 혹은 삭제할 수 있습니다. 
     (5) 제3자 (해당 회원이 아닌 회원 포함)가 해당 회원 내용물에 대한 저작권 및 지적 재산권을 침범했을 가능성이 있는 적절한 판단 근거가 있을 경우, 해당 회원은 본인을 대리하여 해당 회원의 저작권 및 지적 재산권을 행사하고 적절한 법적 조치를 취할 권리를 독점적으로 당사에 위임합니다. 단, 해당 회원 본인이 저작권 및 지적 재산권을 직접 행사할 것을 당사에 요청할 수 있으나, 그와 같은 요청이 없을 경우 본 조항의 위임권에 동의한 것으로 간주합니다.
</textarea>

         </div>
		   </dd>  
		  </dl>
		  
		  <span class="custom_form"> 
             <input type="checkbox" id="check1" name="checkRow" value="0"> 
             <label for="agree_all" class="ip_chk"> 
             <em></em> <span>이용약관 동의 (필수)</span>            
			 </label>
		   </span> 

          <!-- 개인정보 수집 및 이용동의 시작 -->
		  <dl>
		   <dd>
		<div class="agree_info">
<textarea rows="8" cols="130">		
   1. 수집하는 개인정보
   이용자는 회원가입을 하지 않아도 정보 검색, 게시판 열람 등 대부분의 홀로세끼 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 결제,게시글 쓰기 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 홀로세끼는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.

   회원가입 시점에 네이버가 이용자로부터 수집하는 개인정보는 아래와 같습니다.
   - 회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 성별, 휴대폰번호 , 주소’를 필수항목으로 수집합니다. 
   서비스 이용 과정에서 이용자로부터 수집하는 개인정보는 아래와 같습니다.
   홀로세끼 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.

   서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다.
   구체적으로 1) 서비스 이용 과정에서 이용자에 관한 정보를 정보통신서비스 제공자가 자동화된 방법으로 생성하여 이를 저장(수집)하거나, 
   2) 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환한 후에 수집하는 경우를 의미합니다.
   홀로세끼 위치기반서비스 이용 시 수집·저장되는 위치정보의 이용 등에 대한 자세한 사항은 ‘홀로세끼 위치정보 이용약관’에서 규정하고 있습니다.

   2. 수집한 개인정보의 이용
   홀로세끼 및 홀로세끼 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.

   - 회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.
   - 콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.
   - 법령 및 네이버 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.
   - 유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.
   - 이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.
   - 서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.
   - 보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.
   3. 개인정보의 파기
   회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
   단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.

   이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우는 아래와 같습니다.
   부정가입 및 징계기록 등의 부정이용기록은 부정 가입 및 이용 방지를 위하여 수집 시점으로부터 6개월간 보관하고 파기하고 있습니다. 부정이용기록 내 개인정보는 가입인증 휴대폰 번호(만 14세 미만 회원의 경우 법정대리인 DI)가 있습니다.
   결제도용, 불법할인대출(일명 '카드깡') 등 관련 법령 및 이용약관을 위반하는 네이버페이의 부정거래기록(아이디, 이름, 휴대폰번호, 배송지 주소, IP주소, 쿠키, 기기정보)은 부정거래 방지 및 다른 선량한 이용자의 보호, 안전한 거래 환경 보장을 위하여 수집 시점으로부터 3년간 보관하고 파기합니다.
   부정이용으로 징계를 받기 전에 회원 가입 및 탈퇴를 반복하며 서비스를 부정 이용하는 사례를 막기 위해 탈퇴한 이용자의 휴대전화번호를 복호화가 불가능한 일방향 암호화(해시 처리)하여 6개월간 보관합니다.

   전자상거래 등에서의 소비자 보호에 관한 법률, 전자금융거래법, 통신비밀보호법 등 법령에서 일정기간 정보의 보관을 규정하는 경우는 아래와 같습니다. 네이버는 이 기간 동안 법령의 규정에 따라 개인정보를 보관하며, 본 정보를 다른 목적으로는 절대 이용하지 않습니다.
   - 전자상거래 등에서 소비자 보호에 관한 법률 
   계약 또는 청약철회 등에 관한 기록: 5년 보관 
   대금결제 및 재화 등의 공급에 관한 기록: 5년 보관 
   소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관
   - 전자금융거래법 
   전자금융에 관한 기록: 5년 보관
   - 통신비밀보호법 
   로그인 기록: 3개월
</textarea>

		</div>   
		   </dd>
		  </dl>
		  <span class="custom_form"> 
             <input type="checkbox" id="check2" name="checkRow" value="0"> 
             <label for="agree_all" class="ip_chk"> 
             <em></em> <span>개인정보 수집 및 이용 동의 (필수)</span>
			 </label>
		   </span>
		   
        </div><!-- // lst_agree -->
	    
	    <div class="join_info_guide">
	    
	      <dl>
	         <dt>정보 입력</dt>
	         <dd>온라인 주문 서비스와 다양한 혜택을 받으시려면 정보를 정확히 입력해 주세요.</dd>
	      </dl>
	      
	      <div class="join_content">
	      
	        <!-- 유저타입 선택 -->
	        <div>
	          <input type="radio"  name="mem_case_no" value="1" required/>일반회원
	          <input type="radio"  name="mem_case_no" value="2" required/>사업자 
	        </div>
	      
            <div class="join_row">
              <h4 class="join_title">
                               아이디 <label for="id"><input type="text" class="int" id="id_for_join" name="mem_id" maxlength="10"><span id="valid_id"></span></label>
              </h4>  
            </div>
            
             <div class="join_row">
              <h4 class="join_title">
                               비밀번호 <label for="password"><input type="password" id="pw_for_join" name="mem_pw" class="int" maxlength="20"><span id="valid_pw"></span></label>
              </h4> 
              <h4 class="join_title">
                               비밀번호 확인 <label for="passwordChk"><input type="password" id="repw_for_join" name="mem_pwChk" class="int" maxlength="20"><span id="valid_repw"></span></label>
              </h4>  
            </div>           
       
             <div class="join_row">
              <h4 class="join_title">
                               이름 <label for="name"><input type="text" id="name_for_join" name="mem_name" class="int" maxlength="10"><span id="valid_name"></span></label>
              </h4> 
            </div>              
            
             <div class="join_row">
              <h4 class="join_title">
                              생년원일 <label for="birth"><input type="date" id="birth_for_join" name="mem_birth" class="int"><span id="valid_birth"></span></label>
              </h4> 
            </div>   
            
             <div class="join_row">
              <h4 class="join_title">
                              핸드폰 번호 <label for="phone"><input type="text" id="phone_for_join" name="mem_phone" class="int" maxlength="11" placeholder=" '-' 없이 숫자만 입력해주세요"></label>
                <button id="mobile-certi">인증번호 받기</button>
              </h4> 
                <input type="text" id="inputKey" placeholder="인증번호 입력">
                   <span id="min"></span>
                   <span id="sec"></span>
                <button id="joinBtn2">확인</button> 
            </div> 
                                
	      </div><!-- // join_content -->
	    </div><!-- //join_info_guide -->
		
		<div id="subForm">   
		    <label><button type="submit" id="submit">가입</button>
			       <button onclick="history.go(-1);">취소</button>
		    </label>
		</div>
		         </form>
			    </dd>
			  </dl>  
		     </li>
		  </ol>
		</div><!-- //Join_area -->

		</div>
	</div>


  <script type="text/javascript">
  	

  // [ 전체 이용약관 동의 ] -- 체크박스 전체 체크 / 해제
  function checkAll() {
	  
	  // checkbox들
	  var $checkboxes = $("input:checkbox[name='checkRow']");

	  //  전체 이용약관 동의 체크 상태 (true:전체선택, false:전체해제)
	  var check_status = $("#agree_all").is(":checked");

	  if( check_status ) {
		  // 전체 체크박스들 checked로 바꾸기
		  $checkboxes.each(function() {
			 this.checked = true; 
		  });

	  } else {		  
		  // 전체 체크박스를 checked 해제하기
		  $checkboxes.each(function() {
			 this.checked = false; 
		  });
		  
	  }	 
	  

  }  
 
  
  
  $(document).ready(function() {
	  	  
	  // 형태 변수 
 	  var form1 = /[a-zA-Z]/;
	  var form2 = /[0-9]/;
	  var form3 = /[~!@#$%^&*+-=?]/;	  

	  // 회원가입 승인 여부 변수
	  var validId = false, validName = false, validPw = false, validRepw = false, validBirth = false; validPhone = false;

	  // =============================================================================================
		   	  
	  // [ 아이디 중복 체크 ] -- DB에 존재하는 데이터와 동일한지,특수문자와 NULL값 제한
	  
	  $("#id_for_join").focus(function(){
		 $("#valid_id").html(""); 
	  });
	  
	  $("#id_for_join").focusout(function(){
		  
		 var mem_id = $("#id_for_join").val();
         var pattern = /[~!@#$%^&*\+=|(){}:;＃＆＆＠§※☆★○●◎◇◆□■△▲▽▼→←←↑↓↔〓◁◀▷▶♤♠♡♥♧♣⊙◈▣◐◑▒▤▥▨▧▦▩♨☏☎☜☞¶†‡↕↗↙↖↘♭♩♪♬㉿㈜№㏇™㏂㏘℡®]/;
		 
		 if(mem_id != null && mem_id != "" && !pattern.test(mem_id)) {
			 $.ajax({
				type: "POST",
				url : "/join/checkId",
				data : {"mem_id" : mem_id},
				dataType : "json",
			success : function(data) {
				
				if(data==1) {
					$("#valid_id").css("color", "red");
					$("#valid_id").html(" 이미 가입된 아이디 입니다.");	
				} else {
					$("#valid_id").css("color", "green");
					$("#valid_id").html(" 사용 가능한 아이디 입니다.");		
					validId = true;
				}
			},
			error : function() {
				console.log("[Error] 아이디중복검사");
				return;
			}
			 }); // ajax 끝
		 } else {
				$("#valid_id").css("color", "red");
				$("#valid_id").html(" 아이디는 빈칸과 특수문자를 지원하지 않습니다.");
		 }
	  }); // 아이디 중복체크 끝
   
   
	  // [ 비밀번호 유효성 검사 ] -- 비밀번호 자릿수,특수문자와 숫자 포함,NULL값 검사
	  
	  $('#pw_for_join').focus(function(){
		 $('#valid_pw').html(""); 
	  });
   
      $('#pw_for_join').focusout(function(){
    	 var mem_pw = $('#pw_for_join').val();
    	     	 
 		 if(mem_pw.length < 8){
			$('#valid_pw').css("color", "red");
			$('#valid_pw').html(" 비밀번호는 최소 8자 이상이어야 합니다.");
 		 } else {
 			 if( !(form1.test(mem_pw) && form2.test(mem_pw) && form3.test(mem_pw)) ){
 				$('#valid_pw').css("color", "red");
				$('#valid_pw').html(" 비밀번호는 숫자와 특수문자를 최소 1자리 이상 포함해야 합니다.");				
 			 } else {
 				$('#valid_pw').css("color", "green");
				$('#valid_pw').html(" 사용가능한 비밀번호입니다."); 
				validPw = true;
 			 }
 		 }   	 
 	  }); 
      
      
      // [ 비밀번호 재입력 검사 ] -- 비밀번호와 동일한지,NULL값 검사
      
      $("#repw_for_join").focus(function(){
    	 $("#valid_repw").html("");
      });
      
      $("#repw_for_join").focusout(function() {
    	  
    	 var pw = $("#pw_for_join").val(); 
    	 var repw = $("#repw_for_join").val();
    	 
    	 if(validPw){
    		 if( pw == repw ){
	 			 $('#repw_for_join').css("background-color", "#E0F8E6");  
    			 validRepw = true;
    		 } else {
    			 if(repw == null && repw == "") {
    	 				$('#repw_for_join').css("background-color", "#F8E0E0"); 
    					$('#valid_repw').css("color", "red");
    					$('#valid_repw').html(" 비밀번호 재확인을 하셔야 합니다.");  
    		 } else if (pw != repw) {
   				$('#repw_for_join').css("background-color", "#F8E0E0"); 
				$('#valid_repw').css("color", "red");
				$('#valid_repw').html(" 비밀번호가 일치하지 않습니다.");     			 
    		 }
    	 }
    		 
    	 }  
		 
      });
      
      // [ 이름 유효성 검사 ] -- 특수문자,숫자 사용 불가      
      
      $("#name_for_join").focus(function(){
    	  $("#valid_name").html("");
      });
      
      $("#name_for_join").focusout(function(){
    	 var name = $("#name_for_join").val();
    	 
		 if ( form2.test(name) || form3.test(name) ) {
				$('#valid_name').css("color", "red");
				$('#valid_name').html(" 이름에는 숫자와 특수문자를 지원하지 않습니다.");         			 
 		 }else {
 			validName = true; 
 		 }
      });
      
      // [ 생일 유효성 검사 ] -- 18세이상인지 검사
      
      $("#birth_for_join").focus(function(){
    	 $("#valid_name").html(""); 
      });    

      $("#birth_for_join").focusout(function(){
     	 var mem_birth = new Date($('#birth_for_join').val());
     	 var today = new Date();
     	 var years = today.getFullYear() - mem_birth.getFullYear();
     	 
     	 mem_birth.setFullYear(today.getFullYear());
     	 
     	 if(today < mem_birth)
     		 years--;
     	 if($("#birth_for_join").val() == ""){
     		 $("#valid_birth").css("color","red");
     		 $("#valid_birth").html(" 생년월일을 정확하게 입력해주세요.");
     	 } else if (years < 18){
     		 $("#valid_birth").css("color", "red");
     		 $("#valid_birth").html(" 만 18세 미만은 가입하실 수 없습니다.");
     	 } else {
     		 $('#valid_birth').html("");
     		 validBirth = true;
     	 }
     	 
       });
      
       // [ 휴대폰 번호 유효성 검사 ] -- 숫자 이외의 문자등을 발견하면 공백처리 후 폼 제출 불가
       
       $("#phone_for_join").focusout(function(){
    	   var mem_phone = $("#phone_for_join").val();

    	   if( !(form2.test(mem_phone)) ){
    		   $("#phone_for_join").val('');
    	   } else{
    		   validPhone = true;
    	   }
       });
                                 
       // [ 회원가입 폼 넘기기 ] 
       
       $("#submit").click(function(){
    	   
    		  // 체크박스 선택 여부를 위한 변수
    		  var chk1 = $("#check1").is(":checked");
    		  var chk2 = $("#check2").is(":checked");
    	      
    		  if( chk1 == true && chk2 == true && validId && validName && validPw && validRepw && validBirth){
    	    	   $("#actionForm").attr("onsubmit", "return true;");
    	    	   $("#actionForm").submit();
    		  } else{
    				alert("이용약관과 개인정보약관 체크와 빈칸 여부를 살펴주세요.");
         		    return true; 
    			    } 	 
       });
       
       
       
  });
  
  
  
  </script>
  

</body>
</html>