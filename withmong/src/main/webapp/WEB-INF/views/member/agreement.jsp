<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="current_page" value="agree"/>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
	
	img.pro-img {width: 200px; height: 200px;}
	img.aa {width: 80px; height: 80px;}
	

	.ex-company {
	color: white;
	top: 0; left: 0;
	border;
	}
	
	strong {
	color: red;
	top: 0; left: 0;
	}
	
	.footer { 
	position: absolute;	
	bottom : 0;
	width: 100%;
	height: 50px;
	}
	
	.navbar-form navbar-left {
	text-align: center;
	}
	
	#foot-alpabet {
	color: white; 
	}
	
	#logo {
	width: 156px;
	height: 75px;
	padding-bottom: 0px;
	}

</style>
<title>Insert title here</title>
</head>
<header>
	<%@ include file="../header.jsp" %>
</header>
<body>
	
<div class="container" style="margin-top: 150px;">
		<!-- 이용/개인정보 약관 동의 폼 -->
	<h2>회원 가입</h2>
	
	<br/>
	<h4>이용 약관 동의</h4>
 		<form name="check">
 		 <div>
  		<div class="agreeArea">
  			<div class="agreeIndex">
			<textarea name="memo" style="width:100%;height:250px;border:1 solid #333333;overflow:visible;text-overflow:ellipsis;">
제 1조 (목적)
이 약관은 ㈜클래스업(이하 당사)이 제공하는 과외 연결 서비스를 이용함에 있어 당사와 이용자의 권리, 의무 및 책임사항을 규정한다. 이를 통하여 당사와 이용자는 알아야 할 사항을 숙지, 상호 신뢰의 증진을 목적으로 한다.
제 2조 (약관의 효력 및 변경)
① 이 약관은 위드몽 사이트에 회원으로 등록, 조회 등 이용순간부터 효력이 발생된다.
② 당사에서 사정상 중요한 사유가 발생될 경우 사전 고지 없이 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 회원가입 시 공지 또는 전자우편 등의 기타 방법으로 공지함으로써 효력이 발생된다.
③ 회원은 변경된 약관에 동의하지 않을 경우 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 10일 이후에도 거부 의사를 표하지 않고 서비스를 계속 이용할 경우 약관의 변경 사항에 동의한 것으로 간주된다.
제 3조 (약관 외 사항의 처리)
본 약관과 개인정보취급방침에 명시되지 않은 사항에 대해서는 관련 법령 및 회사가 정한 서비스 이용 안내에 따른다.
제 4조 (용어의 정리)
이 약관에서 사용하는 주요한 용어의 정의는 다음과 같다.
① 학생회원 : 선생님을 구하기 위해 당사의 약관에 동의하고 학생회원 양식에 따라 등록한 자.
② 선생님회원 : 학생을 구하기 위해 당사의 약관에 동의하고 선생님회원 양식에 따라 등록한 자.
③ 시범수업 : 정식으로 과외를 결정하기 이전에 사전 미팅 시 학생과 선생님이 협의한 내용에 따라 1회 모의수업을 하는 것을 의미한다. 시범과외는 선택 사항이며 시범과외 비용의 유/무료 여부는 학생과 선생님의 협의에 의해 결정된다.
제 5조 (학생회원의 권리)
① 학생회원은 자신의 개인 신상정보를 보호 받을 권리가 있다.
② 학생회원은 사이트에서 필요에 의해 구매한 유료 서비스를 제외하고, 어떠한 수수료나 비용도 당사에 지급하지 않는다.
③ 학생회원은 자신의 과외조건에 적합한 선생님회원을 직접 검색하고 과외를 신청할 수 있다.
④ 학생회원 중 과외여부가 확인된 학생만이 학생리스트에 모집중으로 등록되며, 해당 학생의 연락처를 열람한 선생님회원과 직접 전화 상담을 통해 과외연결에 대한 협의를 한다.
⑤ 학생회원은 과외가 연결되어 더 이상 과외상담을 원하지 않을 경우, 사이트의 마이페이지에서 본인의 과외 모집 상태를 모집 안함으로 변경하여 과외상담을 받지 않도록 한다.
⑥ 학생회원은 선생님의 개인적인 사유로 과외수업이 중단된 경우, 선불로 지급한 과외비 중 남은 기간에 대한 금액을 선생님회원에게 환불 받을 수 있다.
제 6조 (학생회원의 의무)
① 학생회원은 관계법령, 본 약관의 규정, 이용안내 및 서비스 상에 공지한 주의사항, 당사가 통지한 사항을 준수해야 하며, 기타 회사의 업무에 방해되는 행위를 해서는 안된다.
② 학생회원은 선생님회원의 사전 동의 없이 과외수업에 관한 조건(과외횟수, 과외비, 시간 등)을 일방적으로 변경할 수 없다.
③ 학생회원은 자신의 신상정보가 변경되었을 경우, 즉시 자신의 회원정보를 수정하여야 한다.
④ 학생회원은 선생님의 신분을 증명할 수 있는 서류(각종 신분증 사본, 재학증명서, 졸업증명서 등)를 반드시 확인 또는 보관해야 한다.
제 7조 (선생님회원의 권리)
① 선생님회원은 자신의 개인 신상정보를 보호 받을 권리가 있다.
② 선생님회원은 사이트에서 필요에 의해 구매한 유료 서비스를 제외하고, 어떠한 수수료나 비용도 당사에 지급하지 않는다.
③ 선생님회원은 자신의 과외조건에 적합한 학생회원을 직접 검색하고 과외를 신청할 수 있다.
④ 선생님회원은 자신의 프로필이 선생님 리스트에 등록되어 학생회원들이 열람 할 수 있도록 하며, 학생회원이 직접 본인에 대해 과외를 신청할 수 있도록 요구할 권리가 있다.
⑤ 선생님회원은 과외가 연결되어 더 이상 과외상담을 원하지 않을 경우, 본인의 과외 모집 상태 를 모집 안함으로 두어 과외 상담을 받지 않도록 한다.
제8조 (선생님회원의 의무)
① 선생님회원은 관계법령, 본 약관의 규정, 이용안내 및 서비스 상에 공지한 주의사항, 당사가 통지한 사항을 준수해야 하며, 기타 회사의 업무에 방해되는 행위를 해서는 안된다.
② 선생님회원은 모든 과외수업에 있어 성심과 성의를 다하여 학생을 지도해야 한다.
③ 선생님회원은 학생회원의 사전 동의 없이 과외수업에 관한 조건(과외횟수, 과외비, 시간 등)을 일방적으로 변경할 수 없다.
④ 선생님회원은 자신의 신상정보가 변경되었을 경우, 즉시 자신의 회원정보를 수정하여야 한다.
⑤ 선생님회원은 서비스와 관련하여 다음 사항을 해서는 안된다.
가. 다른 이용자의 ID를 부정 사용하는 행위
나. 다른 이용자의 개인정보를 수집, 저장하는 행위
다. 회사 직원, 운영자 등을 포함한 타인을 사칭하는 행위
라. 서비스의 운영에 지장을 주거나 줄 우려가 있는 일체의 행위
마. 본 약관을 포함하여 기타 당사가 정한 규정 또는 이용조건을 위반하는 행위
바. 범죄와 결부된다고 객관적으로 판단되는 행위
사. 당사와 학생회원과의 협의 없이 제 3자를 과외수업에 대리 참석시키는 행위
아. 기타 관계법령에 위배되는 행위
⑥ 선생님회원이 과외비를 선불로 지급받은 경우, 성실히 과외수업을 이행하지 않거나 일방적으로 계약을 파기할 경우, 당사는 관계법령에 의해 선생님을 고소, 고발 조치 및 회원 자격박탈 등을 취할 수 있으며, 해당 선생님회원은 이에 대한 모든 법적 책임을 감수한다.
⑦ 선생님회원의 아이디 공유 및 아이디 재판매, 유/무상 양도 등을 금지한다. 금지된 행위를 한 회원은 당사의 개인정보 불법유출, 영업방해 및 이미지 훼손에 대한 손해배상을 해야 하며, 아이디는 사전통보 없이 강제로 자격 박탈 처리된다.
⑧ 과외수업 중단으로 인한 과외비 환불은 「학원의 설립운영 과외교습에 관한 법률시행령 제 18조 수강료 반환규정」에 따릅니다. (관련법규 보러 가기)
제9조 (당사의 권리)
① 당사는 과외연결의 신뢰도를 제고하지 위해, 선생님회원으로부터 재학증명서 제출을 요구할 수 있다.
② 제 1항과 같은 목적으로 당사의 사이트에서 선생님회원에게 온라인상 본인인증 절차를 밟도록 할 수 있으며, 선생님회원은 이에 응해야 한다.
③ 당사는 다음과 같은 회원의 자격을 예고 없이 박탈할 수 있다.
가. 회원의 개인신상정보가 사실과 다를 경우
나. 가입된 정보와 실제 이용자가 다를 경우
다. 사이트에서 취득한 회원정보를 양도하거나 중개에 이용할 경우
라. 본 약관을 준수하지 않을 경우
④ 당사는 학생회원과 선생님회원과의 과외비 지급, 수수, 계약 내용 등에 관하여 일절 관여하지 않는다.
⑤ 당사는 학생회원과 선생님회원에게 상호간의 정보를 제공할 뿐, 각각의 회원에게 과외연결을 보장하지는 않는다.
제10조 (당사의 의무)
① 당사는 본 약관 및 관계법령에 따라 본 서비스를 실시하여야 하며, 다음 각 호의 사유가 발생한 경우를 제외하고 계속적, 안정적으로 서비스를 제공하기 위해 최선의 노력을 다한다.
가. 서비스용 설비의 보수, 정기점검 또는 공사로 인한 부득이한 경우
나. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지한 경우
다. 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우
라. 설비장애 또는 이용 폭주 등으로 인하여 서비스 이용에 지장이 있는 경우
② 선생님회원이 본인의 프로필을 리스트에 등록하여 학생회원들이 프로필을 열람할 수 있도록 하며, 조건이 맞는 학생에 대한 과외신청(학생의 연락처 열람 및 이력서 발송 등)을 가능하게 해야 한다.
③ 당사는 회원의 정보를 철저히 보안 유지하며, 서비스를 운영하거나 개선하는 데에만 사용하고, 이외의 목적으로 타 기관 및 개인에게 제공하지 않는다. 단. 다음 각 호에 해당하는 경우에는 그렇지 않다.
가. 관계법령에 의해 수사상의 목적으로 관계기관으로부터 요청이 있는 경우
나. 정보통신윤리위원회의 요청이 있는 경우
다. 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우
제11조 (정보 이용료)
① 당사는 당사에서 제공하는 유료 서비스(연락처 이용권, 문자 이용권 등)의 이용료를 제외한 일 체의 과외 연결 수수료를 회원에게 요구하지 않는다.
② 정보 이용료는 원칙적으로 환불이 불가능하며, 환불 원인이 발생할 경우는 당사의 환불규정에 따른다.
제12조 (결제 취소 및 환불 규정)
① 당사는 다음 각 호에 해당하는 경우 과외연결 여부나 사이트 탈퇴에 상관 없이 이용자의 환불 요청을 승낙하지 않는다.
가. 유료 서비스(연락처 이용권, 문자 이용권 등) 구매 후 연락처 열람이나 문자 발송을 1건 이상 이용한 내역이 있을 경우
나. 이용자의 실수로 이용기간 내에 서비스를 이용하지 못한 경우
다. 회원 탈퇴 후, 환불을 요청할 경우
라. 관계법령 위반으로 삭제 또는 강제 탈퇴된 경우
마. 기타 정당한 환불 사유로 판명되지 않은 경우
② 당사는 다음 각 호에 해당하는 경우 이용자의 환불 요청에 따라 결제 취소 또는 전액 환불 신청에 응할 수 있다.
가. 오류로 인해 신용카드나 휴대폰 결제가 중복되었을 경우
나. 유료 서비스(연락처 이용권, 문자 이용권 등) 구매 후 연락처 열람이나 문자 발송을 1건도 하지 않은 상태에서 환불을 요청할 경우
제13조 (면책조항)
① 당사는 학생회원과 선생님회원의 독립적이고 자발적인 의사에 따라 과외를 신청, 협의, 결정할 수 있도록 사전에 동의한 정보와 방식으로 중개업무를 하고 있다. 따라서 회원이 등록한 정보에 대한 사실의 정확성, 신뢰성 등 내용에 관해 어떠한 보증도 하지 않으며 그로 인해 발생하는 손해 등에 대해 책임을 지지 않는다.
② 당사는 학생회원과 선생님회원과의 상호 협의로 과외를 진행하는 도중 발생한 분쟁에 대해서는 개입할 의무가 없으며 이로 인한 손해를 배상할 책임이 없다.
③ 당사는 천재지변 또는 이에 준하는 불가항력으로 인해 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제된다. 또한 통상적인 노력으로는 통제가 힘든 원인으로 인한 사유로 서비스 제공의 지연이나 서비스를 제공하지 못하거나 또는 고객정보가 유출된 경우에도 일체의 책임을 지지 않는다.
④ 당사는 이용자의 귀책사유로 인해 서비스 이용의 장애가 발생한 경우에는 책임이 면제된다.
⑤ 본 약관의 규정을 위반함으로 인해 회사에 손해가 발생하는 경우, 이 약관을 위반한 이용자는 회사에 발생되는 모든 손해를 배상해야 하며, 동 손해로부터 회사를 면책시켜야 한다.
제14조 (회원자격의 박탈)
① 다음 각 호에 해당하는 경우 사전 통보 없이 강제탈퇴 하거나, 이용을 중지할 수 있다.
가. 공공질서 및 미풍양속에 반하는 경우
나. 범죄적 행위에 관련되는 경우
다. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행할 경우
라. 타인의 ID 및 비밀번호를 도용한 경우
마. 가입한 이름이 실명이 아닌 경우
바. 타인의 명예를 손상시키거나 불이익을 주는 경우
사. 같은 사용자가 다른 ID로 이중 등록을 한 경우
아. 회사 직원 및 운영자 등을 포함한 타인을 사칭하기 위해 등록을 한 경우
자. 서비스에 위해를 가하는 등 건전한 이용을 저해하는 경우
차. 기타 관련 법령이나 회사가 정한 이용조건에 위배되는 경우
② 선생님회원이 선불로 과외비를 지급받은 후 과외수업을 이행하지 않고 일방적으로 계약을 파기하고 학생회원에게 과외비를 환불하지 않을 경우, 당사는 해당 선생님의 회원자격을 박탈함과 동시에 관계법령에 의해 선생님회원을 고소,고발 조치를 취할 수 있으며, 피해자가 고소,고발 조치를 취한 경우 당사는 적극 협조한다.
③ 위드몽 사이트는 학생과 선생님간의 개인과외 연결 목적으로만 이용이 가능하며, 학원, 과외방, 카페, 업체 등 사교육기관의 수강생을 모집하거나 광고 등에 회원자격을 박탈한다.
④ 타인에게 과외소개, 아이디 공유, 기타 상업 및 비상업적으로 서비스 이용 시 환불 없이 유료 서비스 구매 취소 및 강제탈퇴 처리되며, 당사의 운영상의 영업방해 및 이미지 훼손에 대한 손해배상과 개인정보 무단수집에 대한 모든 민/형사적 책임을 진다.
제15조 (분쟁의 해결)
① 당사와 이용자는 서비스와 관련하여 발생한 분쟁을 원만하게 해결하기 위해 서로 필요한 노력을 해야 한다.
② 제 1항의 규정에도 불구하고, 동 분쟁으로 인해 소송이 제기될 경우 소송은 당사의 소재지 관할 법원으로 한다.
(부칙)
이용약관 내용 추가, 삭제 및 수정이 있을 시에는 개정 최소 7일 전부터 위드몽 사이트의 공지사항을 통해 고지할 것입니다. 사전에 공지가 없었을 경우 공지일자(공고일자)로부터 7일 후부터 효력이 발생합니다.
공고일자 : 2016년 9월 22일
시행일자 : 2016년 9월 22일
		</textarea>
	</div>
	<p style="font-weight: bold">위의 약관의 내용에 모두 동의하십니까?</p>
	<input type="checkbox" name="agree" id="checkAgree" value="이용약관"class="inputCheckbox">동의함
</div><br/>

<h4 style="font-weight: bolder">개인정보 사용 약관 동의</h4>
	<div class="agreeArea">
		<div class="agreeIndex2">
			<textarea name="memo" style="width:100%;height:250px;border:1 solid #333333;overflow:visible;text-overflow:ellipsis;">
1. 수집하는 개인정보 항목
회사는 회원가입, 상담, 서비스 신청 등을 위해 홈페이지(회원가입, 프로필 관리 등)와 어플리케이션(회원가입, 회원 정보 수정 등)에서 아래와 같은 개인정보를 수집하고 있습니다.
- 학생/학부모 회원 수집 항목 : 로그인ID, 이름, 성별, 생년월일, 휴대전화번호, 이메일, 자택 주소, 과외정보

2. 개인정보의 수집 및 이용목적
회사는 수집한 개인정보를 다음의 목적을 위해 활용합니다.
- 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산 : 콘텐츠 제공 , 구매 및 요금 결제
- 회원 관리 : 회원제 서비스 이용에 따른 본인확인 , 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지 , 가입 의사 확인 , 불만처리 등 민원처리 , 고지사항 전달
- 마케팅 및 광고에 활용 : 이벤트 등 광고성 정보 전달 , 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계

3. 개인정보의 보유 및 이용기간
원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.
- 보존 항목 : 이름 , 생년월일 , 로그인ID , 비밀번호 , 자택 주소 , 휴대전화번호 , 이메일 , 결제기록
- 보존 근거 : 전자상거래 등에서의 소비자보호에 관한 법률
- 보존 기간 : 1년
- 소비자의 불만 또는 분쟁처리에 관한 기록 : 3년 (전자상거래 등에서의 소비자보호에 관한 법률)
- 부정 이용등에 관한 기록 : 10년
			</textarea>
		</div>
		<p>위의 약관의 내용에 모두 동의하십니까? </p>
		<input type="checkbox" name="agree" id="checkAgree" value="개인정보 수집약관" class="inputCheckbox"/>동의함
		</div>
		<br/>
		
		<div class="text-center">
			<a href="register.do" class="btn btn-primary" id="agreebtn">약관에 동의합니다.</a>
			<a href="main.do" class="btn btn-danger" id="disagreebtn">약관에 동의하지 않습니다.</a>
 	 	</div>
 	 </div>
	</form>	
	<hr>
</div>
		
	
</body>
<footer>
	<%@ include file="../footer.jsp" %>	
</footer>
</html>







