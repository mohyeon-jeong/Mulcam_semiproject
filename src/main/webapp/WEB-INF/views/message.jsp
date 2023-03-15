<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%
// 세션 만료 시 메시지 출력
String sessionOut = (String)request.getAttribute("sessionOut");
if(sessionOut != null && !sessionOut.equals("")){
		%>
		<script type="text/javascript">
		alert("세션이 만료되었습니다. 다시 로그인 해 주십시오");
		location.href = "login.do";
		</script>
		<%
}

// 회원 정보 수정 후 세션 종료 및 메시지 출력
String updateMsg = (String) request.getAttribute("updateMsg");
if (updateMsg != null && !updateMsg.equals("")) {
	if (updateMsg.equals("UPDATE_SUCCESS")) {
		%>
		<script type="text/javascript">
			alert("회원 정보가 수정되었습니다. 다시 로그인 해 주십시오.");
			<%
				session.invalidate();
			%>
			location.href ="login.do";
		</script>
		<%
	} else {
		%>
		<script type="text/javascript">
			alert("오류가 발생하였습니다 : UPDATE_FAIL");
			location.href = "myPage.do";
		</script>
		<%
	}
}
%>




