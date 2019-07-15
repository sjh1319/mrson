<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header>

<%
// 세션값 가져오기
String id=(String)session.getAttribute("id");
// 세션값이 없으면  login | join
// 세션값이 있으면  kim님 | logout
if(id==null){
	%><div id="login"><a href="../member/login.jsp">로그인</a> | <a href="../member/join.jsp">회원가입</a></div><%
}else{
	%><div id="login">
	<%
	%>
	<%=id %>님 |<input type="button" value="회원정보" onclick="location.href='../member/member.jsp'"> |<a href="../member/logout.jsp">logout</a></div><%
}
%>

<div class="clear"></div>
<!-- 로고들어가는 곳 -->
<br><br>
<div id="logo"><img src="../images/logo.gif" width="300" height="80" alt="Fun Web"></div>
<!-- 로고들어가는 곳 -->
<nav id="top_menu">

<ul>
	<li><a href="../main/main.jsp">홈</a></li>
	<li><a href="../company/welcome.jsp">회사소개</a></li>
	<li><a href="#">SOLUTIONS</a></li>
	<li><a href="../center/notice.jsp">게시판</a></li>
	<li><a href="#">CONTACT US</a></li>
		<li><a href="../mail.jsp">메일 보내기</a></li>
</ul>
</nav>

<nav id="top_menu">


</nav>
</header>
