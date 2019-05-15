
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<jsp:include page="/view/layout/header.jsp"></jsp:include>
<jsp:include page="/view/layout/sidebar.jsp"></jsp:include>


 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>홀로3kki:회원가입</title>
   
   <!-- Bootstrap -->
   <link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
   <link href="/resources/image/icon/HalfLife.ico" rel="shortcuticon">
   <!-- jQuery (부트스트랩의 자바스크립트 플러그인을 위해 필요한) -->
   <script type="text/javascript"
	       src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
   <!-- 모든 합쳐진 플러그인을 포함하거나 (아래) 필요한 각각의 파일들을 포함하세요 -->
<!--    <script src="/resources/bootstrap/js/bootstrap.min.js"></script> -->
   <!-- Respond.js 으로 IE8 에서 반응형 기능을 활성화하세요 (https://github.com/scottjehl/Respond) -->
   <script src="/resources/bootstrap/js/respond.js"></script>
   <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   

<style type="text/css">

th, td:not(:nth-child(2)) {
	text-align: center;
}
td {
	border-left: 70px solid white;
	border-right: 100px solid white;
}

</style>

</head>
<body>
<div id="wrapper" style="width:978px; margin: 0 auto;">
	<!-- div 왼쪽, 오른쪽 바깥여백을 auto로 주면 중앙정렬된다.  -->
     <div id="wrap2" style="text-align:center;">

<br> <br> <b><font size="6" color="gray">홀로3kki 회원가입</font></b> <br>
		<font size="2" color="gray">홀로세끼에 회원으로 가입하시면 맛집 결제,커뮤니티등 회원등급 별 많은 혜택을 누릴 수 있습니다.</font>
		<br> <br><br><br>
		</div>	
		
		<!-- 입력한 값을 전송하기 위해 form 태그를 사용한다 -->
		<!-- 값(파라미터) 전송은 POST 방식, 전송할 페이지는 JoinPro.jsp -->
		<div id="wrap" style="text-align:center; margin-left:50px;" >
		<form class="form-horizontal" method="post" action="/member/join" name="userInfo"
			onsubmit="return checkValue()">
			
			<table id="table" class="table table-striped">
				<tr>
					<!-- 라디오 버튼으로  사업자/일반유저 체크 -->
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>유저타입</td>
					<td><input type="radio"  name="groupName" value="1" required/>일반회원 &nbsp;&nbsp;&nbsp;&nbsp;
					    <input type="radio"  name="groupName" value="2" required/>사업자 </td>
				</tr>

				<tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>아이디</td>
					<td><input type="text" id="id" name="id" maxlength="10" /> <input type="hidden" id="checkId" name="checkId" value=0><input type="button"
						id="chkId" name="chkId" value="중복확인" style="background-color:white;" > <span id="chkMsgId"></span></td>
				</tr>

				<tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>비밀번호</td>
					<td><input type="password" name="password" minlength="10" maxlength="15" >
					</td>
				</tr>

				<tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>비밀번호 확인</td>
					<td><input type="password" name="passwordcheck" minlength="10" maxlength="15">
					</td>
				</tr>

				<tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>이름</td>
					<td><input type="text" name="name" maxlength="10"></td>
				</tr>

				<tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>닉네임</td>
					<td><input type="text" id="nickname" name="nickname" maxlength="10">
					 <input type="hidden" id="checkNick" name="checkNick" value=0>
					<input type="button" id="chkNick" value="중복확인" style="background-color:white;"/>
					<span id="chkMsgNick"></span>
					</td>
				</tr>
				
				<tr>
				 <td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>성별</td>
				 <td><input type="radio"  name="gender" value="1" required>남성 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				     <input type="radio"  name="gender" value="2" required>여성		
				 </td>    		
				</tr>
				
				<tr>
				<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>전화번호</td>
				<td><input type="text" maxlength="11" id="phone" name="phone" 
				           onkeydown="return onlyNum(event)" onkeyup='removeChar(event)' placeholder="&nbsp;-없이 숫자만 입력"/>
				</td>
                <tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>생일</td>
                   <td>
                        <input type="date" name="birthday" />
                    </td>
                </tr>

				<tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>기본주소</td>
					<td><input type="text" id="sample6_postcode" placeholder="우편번호">
                        <input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기" style="background-color:white;"><br>
                        <input type="text" id="sample6_address" size="50" name="address1" placeholder="주소">
				</tr>

				<tr>
					<td id="title"><span style="color:red; font-weight:light; font-size:20px;">* </span>상세주소</td>
					<td><input type="text" placeholder="상세주소" size="50" name="address2"/></td>
				</tr>
			</table>
			
			<div id="wrap1" style="text-align:center;  margin-right:20px;">			
			<table style="width:1400px; height:650px;">
  <tr>
    <td width="100%" height="50%">
    <p align="left">
    </p>

        
     <div style="text-align:left; position:absolute; top:110%;">홀로세끼 이용약관 안내<span style="color:red; font-weight:lighter; font-size:13px;" >(필수)</span></div>
     <br><br>
<div style="position:absolute; top:115%; left:24%; width:55%;">
     <textarea rows="10" cols="100">
본 약관(이하 ‘본 약관’이라 함)은 홀로세끼(이하 ‘당사’라 함)가 소유하고 운영하는 웹사이트(이하 ‘홀로세끼’라 함)을 통하여 제공되는 모든 제품 및 서비스(이하 ‘본 서비스’라 함)와 관련하여 본 약관에 따라 당사와 이용계약을 체결하고 본 서비스를 이용하는 고객(이하 ‘회원’이라 함)과 당사 간의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다. 당사에 회원가입을 하지 않고 단순 열람을 원하는 경우, 비회원 이용자를 위한 이용정책이 적용됩니다.
홀로세끼는 관련법을 위배하지 않는 범위에서 본 약관의 내용을 수정 할 수 있습니다. 본 약관을 개정할 경우에는 적용일자 및 개정사유를 명시하여 현행 약관과 함께 홀로세끼의 관련 화면에 그 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만, 회원에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우 당사는 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다. 회사가 개정약관을 공지 또는 통지하면서 회원에게 30일 기간 내에 의사표시를 하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 명확하게 공지 또는 통지하였음에도 회원이 명시적으로 거부의 의사표시를 하지 아니한 경우 회원이 개정약관에 동의한 것으로 봅니다. 회원이 개정약관의 적용에 동의하지 않는 경우 회사는 개정 약관의 내용을 적용할 수 없으며, 이 경우 회원은 이용계약을 해지할 수 있습니다. 또한 기존 약관을 적용할 수 없는 특별한 사정이 있는 경우에는 회사는 이용계약을 해지할 수 있습니다. 본 약관이나 개정된 내용에 동의하지 않으면 서비스를 이용하시지 말아주시기 바랍니다.

제1조 (약관 동의 및 자격 요건)
이용계약은 회원이 되고자 하는 자가 약관의 내용에 대하여 동의를 한 다음 회원가입신청을 하고 당사가 이러한 신청에 대하여 승낙함으로써 체결됩니다. 당사는 이러한 신청에 대하여 이용을 승낙함을 원칙으로 합니다. 다만, 당사는 실명이 아니거나 타인의 명의를 이용한 경우, 허위의 정보를 기재하거나 당사가 제시하는 내용을 기재하지 않은 경우 등의 경우에 해당하는 신청에 대하여는 승낙을 하지 않거나 사후에 이용계약을 해지할 수 있습니다.
(1) 회원은 본 서비스 이용시 본 약관의 규정된 내용을 따라야 하고 관련법규를 준수해야 합니다.
(2) 서비스 이용을 위하여 회원이 제공하는 모든 정보는 정확하고 사실이며 회원은 이 정보들의 정확성을 유지하도록 정보 변경시 변경된 정보를 제공하여야 합니다.
(3) 회원은 최소 14세 이상이어야 하며 회원이 14세 미만이라고 의심되는 경우 회원 계정과 관련 정보는 별도의 통지나 예고 없이 삭제 될 수 있습니다.

제2조 (계정)
회원은 홀로세끼 결제 시스템, 게시판 글쓰기등을 이용하기 위하여 계정을 만들어야 합니다. 계정을 만들기 위해 제공되는 회원의 개인정보는 관련법과 당사의 개인보호 정책에 의하여 보호됩니다. 회원은 개인정보 변경 시 변경된 정보를 입력하여야 하며 계정의 보안과 기밀을 유지하기 위하여 노력합니다. 홀로세끼는 적절한 이유가 있을 경우 회원의 계정을 폐쇄하거나 접속을 제한할 수 있습니다.

제3조 (정보의 취급)
당사는 본 서비스 회원의 전화번호등의 정보를 수집합니다. 수집된 정보는 회원의 동의 없이는 다른 회원을 포함한 제3자에게는 절대 공개되지 않습니다. 구체적인 내용은 당사의 개인정보보호 정책을 통하여 확인하실 수 있습니다.

제4 조 (지적 재산권 및 서비스 내용물의 소유권 및 사용권)
(1) '내용물' 이라 함은 문자, 그림, 사진, 동영상, 리뷰, 위치 및 기타 데이터 또는 모든 다른 형태의 송신 및 커뮤니케이션된 정보를 뜻합니다.  홀로세끼에 있는 모든 내용물 (이하 ‘서비스 내용물’ 이라 함)은 오직 서비스 이용 목적을 위해서만 회원에게 제공되며, 관련 지적재산권의 보호를 받습니다. 회원은 당사의 서면 승인 없이 서비스 내용물을 변경, 수집, 복제, 송신, 출판 (온라인, 오프라인 포함), 배포, 방송 기타 방법에 의하여 이용하거나 제3자에게 이용하게 하여서는 아니 됩니다.
(2) 서비스 내용물에는 회원 내용물, 홀로세끼 내용물과 제3자 내용물이 모두 포함됩니다.  '회원 내용물' 이라 함은 평점, 리뷰, 사진, 좋아요, 가고싶다, 체크인, 댓글, 이벤트 참여, 혹은 닉네임 등 프로필에 기재하는 정보 등 회원이 홀로세끼를 이용하면서 등록하거나 그 외 당사 서버에 송신하는 모든 내용물을 의미합니다.  '홀로세끼 내용물' 이라 함은 망고픽, 페이스북 포스팅, 기타 온라인 및 오프라인 제작물 등 홀로세끼가 직접 제작하는 내용물 혹은 당사 서버에 송신하거나 페이스북 페이지에 등록하는 모든 내용물을 의미합니다.  '제3자 내용물' 이라 함은 회원 혹은 홀로세끼에게서 창조되거나 유래되는 내용물은 아니지만 홀로세끼 서비스를 통해 회원에게 제공되는 내용물을 의미합니다.
(3) 홀로세끼 내용물에 대한 저작권 및 기타 지적 재산권은 당사에 귀속됩니다.  당사는 적절한 이유가 있을 경우 모든 서비스 내용물을 자의적으로 삭제, 수정, 편집, 복제 혹은 재등록 할 수 있습니다. 본 계약에서 달리 명시된 바를 제외하고 당사는 회원에게 어떠한 라이선스나 사용권도 부여하지 않습니다. 본 약관은 당사 또는 당사로부터 라이선스를 받은 자가 서비스 내용물이나 서비스에 대해 가지고 있는 권리, 또 이와 연관된 특허, 상표, 저작권 또는 다른 지적재산권에 영향을 주지 않습니다. 본 약관은 홀로세끼의 상표나 다른 제3자의 상표권과 관련 라이선스나 다른 권리를 부여하지 않습니다.
(4) 회원 (이하 '해당 회원'이라 함)가 직접 작성 및 등록한 평가점수, 리뷰, 답글, 사진 등의 게시물 (이하 '해당 회원 내용물'이라 함)에 대한 저작권 및 지적 재산권은 해당 회원에게 있으며, 해당 회원 내용물이 타인의 저작권을 침해하는 경우 그에 대한 책임은 해당 회원 본인이 부담합니다. 해당 회원은 당사에게 해당 회원 내용물을 독점적으로 이용할 수 있는 권리를 부여합니다. 이에 따라 당사는 홀로세끼 어플리케이션, 모바일 및 PC 웹사이트, 페이스북 페이지, 광고물, 검색노출, 판촉, 홍보 등의 기타 매체에 해당 회원 내용물을 무상으로 영구적으로 이용할 수 있으며, 필요한 범위 내에서 해당 회원 내용물의 일부를 수정, 복제 및 편집할 수 있습니다. 또한, 해당 회원은 당사가 커뮤니티 가이드라인 혹은 기타 당사 내부의 적절한 이유에 따라 언제든지 해당 회원 내용물을 삭제, 수정 혹은 재등록할 권한이 있음에 동의합니다. 단, 해당 회원은 해당 회원 내용물에 대하여 마케팅, 판촉, 홍보 및 기타 자료로 사용되지 않을 것을 요청할 수 있으며, 홀로세끼 서비스 내의 기능을 이용하여 해당 회원 내용물을 수정 혹은 삭제할 수 있습니다. 
(5) 제3자 (해당 회원이 아닌 회원 포함)가 해당 회원 내용물에 대한 저작권 및 지적 재산권을 침범했을 가능성이 있는 적절한 판단 근거가 있을 경우, 해당 회원은 본인을 대리하여 해당 회원의 저작권 및 지적 재산권을 행사하고 적절한 법적 조치를 취할 권리를 독점적으로 당사에 위임합니다. 단, 해당 회원 본인이 저작권 및 지적 재산권을 직접 행사할 것을 당사에 요청할 수 있으나, 그와 같은 요청이 없을 경우 본 조항의 위임권에 동의한 것으로 간주합니다.

제 5 조 ("게시물"의 관리)  
①"회원"의 "게시물"이 "정보통신망법" 및 "저작권법"등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 "게시물"의 게시중단 및 삭제 등을 요청할 수 있으며, "회사"는 관련법에 따라 조치를 취하여야 합니다.
②"회사"는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 "게시물"에 대해 임시조치 등을 취할 수 있습니다.
③본 조에 따른 세부절차는 "정보통신망법" 및 "저작권법"이 규정한 범위 내에서 "회사"가 정한 절차에 따릅니다.

제 6 조 (접근 및 간섭)
본 서비스를 이용함에 있어서, 회원은 다음에 동의합니다:
(1) 로봇, 스파이더, 스크래퍼, 크롤러 또는 기타 자동 장치를, 당사의 서면 허가 없이 어떠한 목적으로든지 홀로세끼 웹사이트 및 서비스 내용물에 접근하는데 사용되는 프로세스 및 수단을 사용하지 않기로 동의합니다.
(2) 홀로세끼의 기반 시설에 비합리적인 또는 비례에 맞지 않게 큰 부하를 가중시키거나 가중시킬 수 있는 (당사의 단독 재량 하에) 어떠한 조치도 취하지 않기로 동의합니다.
(3) 당사의 서면 동의 없이 당사가 제공하는 서비스 가운데 어떤 내용물을 감시하거나 복사하는 모든 매뉴얼 프로세스를 시행하지 않기로 동의합니다.
(4) 당사 서비스의 기능 및 내용물을 간섭하거나 간섭하려고 하는 모든 장치, 소프트웨어 또는 루틴을 활용하지 않기로 동의합니다.
(5) 다른 사람들이 불쾌감을 느낄 수 있는 내용이나 사진을 올리지 않기로 동의합니다. 문제가 생길 시에는 회원자격이 정지되거나 탈퇴될 수 있음을 동의합니다.

제 7 조 (손해배상)
(1) 당사와 회원은 서비스 이용과 관련하여 고의 또는 과실로 상대방에게 손해를 끼친 경우에는 이를 배상하여야 합니다.
(2) 당사는 무료로 제공하는 서비스의 이용과 관련하여 개인정보보호정책에서 정하는 내용에 위반하지 않는 한 어떠한 손해도 책임을 지지 않습니다.

제 8 조 (면책조항)
(1) 당사는 천재지변, 전쟁, 기간통신사업자의 서비스 중지 및 기타 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 대한 책임이 면제됩니다.
(2) 당사는 서비스용 설비의 보수, 교체, 정기점검, 공사 등 부득이한 사유로 발생한 손해에 대한책임이 면제됩니다.
(3) 당사는 회원의 컴퓨터 오류에 의해 손해가 발생한 경우, 또는 회원이 신상정보 및 전자우편 주소를 부실하게 기재하여 손해가 발생한 경우 책임을 지지 않습니다.
(4) 당사는 회원의 게시물을 등록 전에 사전심사 하거나 상시적으로 게시물의 내용을 확인 또는 검토하여야 할 의무가 없으며, 그 결과에 대한 책임을 지지 아니합니다.
(5) 중복가입한 회원이 부적절한 방법으로 다른 회원에게 피해를 입힐 시 형사처벌을 받을 수 있으며, 당사는 그 결과에 대한 책임은 지지 아니합니다.

제 9 조 (재판권 및 준거법)
(1) 이 약관에 명시되지 않은 사항은 전기통신사업법 등 대한민국의 관계법령과 상관습에 따릅니다.
(2) 당사의 유료 서비스를 이용하는 회원의 경우 해당 서비스와 관련하여서는 당사가 별도로 정한 약관 및 정책에 따릅니다.
(3) 서비스 이용으로 발생한 분쟁에 대해 소송이 제기되는 경우 대한민국 서울중앙지방법원을 관할 법원으로 합니다.  
</textarea><br>
</div>     

 <div style="text-align:right; position:absolute; top:145%; left:24%; width:55%;">
<h5>이용약관에 동의하십니까?&nbsp;<input type="checkbox" id="req1" name="req1"></h5>
</div>  
  </td>
  </tr>
  
  <tr>
    <td width="100%" height="50%" align="center">
    <p align="left">
    </p>
      <div style="text-align:left; positon:absolute; top:115%;">&nbsp;개인정보 수집 및 이용에 대한 안내<span style="color:red; font-weight:lighter; font-size:13px;" >(필수)</span></div>
    <br><br><br>
    
    <div style="position:absolute; top:170%; left:24%; width:55%;">
    <textarea rows="10" cols="100">정보통신망법 규정에 따라 홀로세끼에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.

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
    
    </textarea></div>
    
<div style="text-align:right; position:absolute; top:195%; left:24%; width:55%;">
<br><h5>개인정보 수집 및 이용에 동의하십니까?&nbsp;<input type="checkbox" id="req2"></h5>
</div>  
  <br></br>
  
  </table>
  </div>
	
			<br><br><br><br><br><br><br><br><br>
			<label><button type="submit" class="btn btn-default btn-lg">가입</button>
			       <button class="btn btn-default btn-lg" type="button"onclick="history.go(-1);">취소</button>
		    </label>
		</form>
	</div> 

</div><!-- wrapper끝 -->
	
	
	<script type="text/javascript">
	
	
	function checkValue() { // 회원가입 제약사항
		
			
		if (!document.userInfo.id.value) {
			alert("아이디를 입력하세요.");
			userInfo.id.focus();
			return false;
		} 

		if (!document.userInfo.password.value) {
			alert("비밀번호를 입력하세요.");
			userInfo.password.focus();
			return false;
		}
		
		if(document.userInfo.password.value == document.userInfo.id.value){
			alert("아이디와 비밀번호는 동일 할 수 없습니다.")
			userInfo.password.focus();
			return false;
		}
		
		if(document.userInfo.password.value == document.userInfo.nickname.value){
			alert("아이디와 닉네임은 동일 할 수 없습니다.")
			userInfo.password.focus();
			return false;
		}

		// 비밀번호와 비밀번호 확인에 입력된 값이 동일한지 확인
		if (document.userInfo.password.value != document.userInfo.passwordcheck.value) {
			alert("비밀번호를 동일하게 입력하세요.");
			userInfo.passwordcheck.focus();
			return false;
		}

		if (!document.userInfo.name.value) {
			alert("이름을 입력하세요.")
			userInfo.name.focus();
			return false;
		}
		if (!document.userInfo.nickname.value) {
			alert("닉네임을 입력하세요.")
			userInfo.nickname.focus();
			return false;
		}
		if (!document.userInfo.birthday.value) {
			alert("생년월일를 입력하세요.")
			userInfo.birthday.focus();
			return false;
		}
		if (!document.userInfo.phone.value) {
			alert("핸드폰번호를 입력하세요.")
			userInfo.phone.focus();
			return false;
		}
		if (!document.userInfo.sample6_address.value) {
			alert("기본주소를 입력하세요")
			userInfo.sample6_address.focus();
			return false;
		}
		if (!document.userInfo.address2.value) {
			alert("상세주소를 입력하세요.")
			userInfo.address2.focus();
			return false;
		}
		
		 var req1 = document.getElementById("req1").checked;
		 var req2 = document.getElementById("req2").checked;

		 if( req1 == true && req2 == true ){
			 
		 }else{
			 alert("이용약관과 개인정보약관 모두 체크해주세요");
			 return false;
            
		 } 
		 
		 var chkId = document.all.checkId.value;
		 if(chkId==0){
			 alert("아이디 중복체크 부탁드립니다.")
			 return false;
		 }
		 
		 var chkNick = document.all.checkNick.value;
		 if(chkNick==0){
			 alert("닉네임 중복체크 부탁드립니다.")
			 return false;
		 }
	    
	}
	
	function onlyNum(event){ // 숫자만 입력하기 위한 함수
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
			return;
		else
			return false;
	}
	function removeChar(event) { // 글자수 초과시 최대 글자 수만큼 자르는 함수 
		event = event || window.event;
		var keyID = (event.which) ? event.which : event.keyCode;
		if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
			return;
		else
			event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}
	

	
	$(document).ready(function() {
		  $("#chkId").click(function() { // 아이디 중복체크
			  
			  var id = $('#id').val();
			  
			$.ajax({
				type : 'POST',
	            url : '/member/IdCheck', 
	            data : {"id" : id}, //id이름에 id데이터 값을 넣어서 보낸다
	            dataType: "json", 
		    success : function(result) {
	  
			if ( result==1  ) {
				$('#chkMsgId').html('<b style="font-size:12px; color:gray">사용가능한 아이디입니다.</b>');
				$('#checkId').val(1); 
				
				} else { $('#chkMsgId').html('<b style="font-size:12px; color:red">중복된 아이디입니다.</b>');
				$("input[name=id]").val("");
					    
			    }
				
		     } 
		     
		     
			});

			});
			  });
			
	$(document).ready(function() { // 닉네임 중복체크
		     $("#chkNick").click(function() {
				var nickname = $('#nickname').val();

				$.ajax({
					type : 'POST',
		            url : '/member/NickCheck',
		            data : {"nickname" : nickname}, 
			    success : function(result) {
				if (result==1 ) {
				  $('#chkMsgNick').html('<b style="font-size:12px; color:gray">사용가능한 닉네임입니다.</b>');
				  $('#checkNick').val(1)
				} else { 
				  $('#chkMsgNick').html('<b style="font-size:12px; color:red">중복된 닉네임입니다.</b>');
				  $("input[name=nickname]").val("");
			    }
				}
			});

			});  
		  
		}); 
	
			
			
	    $(document).ready(function(){ 
	    $('#password').keyup(function(){	        
	    	 
	    	if ($(this).val().length > $(this).attr('maxlength')) {
	            $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
	        } 
	    	
	    });
	    });
	    
	    $(document).ready(function(){
	    $('#passwordcheck').keyup(function(){
	    	    	
	    	if ($(this).val().length > $(this).attr('maxlength')) {
	            $(this).val($(this).val().substr(0, $(this).attr('maxlength')));

	        }
	        
	    });
	    });
	    
	    $(document).ready(function(){	    
	    $('#name').keyup(function(){
	        if ($(this).val().length > $(this).attr('maxlength')) {
	            $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
	        }
	    });
	    });
	    
	    $(document).ready(function(){	
	    $('#nickname').keyup(function(){
	        if ($(this).val().length > $(this).attr('maxlength')) {
	            $(this).val($(this).val().substr(0, $(this).attr('maxlength')));
	        }
	    });
	    });
	

	 function sample6_execDaumPostcode() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		            var fullAddr = ''; // 최종 주소 변수
		            var extraAddr = ''; // 조합형 주소 변수

		            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                fullAddr = data.roadAddress;

		            } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                fullAddr = data.jibunAddress;
		            }

		            // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
		            if(data.userSelectedType === 'R'){
		                //법정동명이 있을 경우 추가한다.
		                if(data.bname !== ''){
		                    extraAddr += data.bname;
		                }
		                // 건물명이 있을 경우 추가한다.
		                if(data.buildingName !== ''){
		                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                }
		                // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
		                fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
		            }

		            // 우편번호와 주소 정보를 해당 필드에 넣는다.
		            document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
		            document.getElementById('sample6_address').value = fullAddr;
		       
		            // 커서를 상세주소 필드로 이동한다.
		            document.getElementById('sample6_address2').focus();
		        }
		    }).open();
		}
	  
</script>

<jsp:include page="/view/layout/footer.jsp"></jsp:include>
</body>
</html>


