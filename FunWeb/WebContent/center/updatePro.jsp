<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// center/updatePro.jsp
// 한글처리
request.setCharacterEncoding("utf-8");
// 파라미터 가져오기
int num = Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
String name = request.getParameter("name");
String pass = request.getParameter("pass");
String subject = request.getParameter("subject");
String content = request.getParameter("content");

// BoardBean bb 객체생성
BoardBean bb = new BoardBean();
// bb 멤버변수 <= 파라미터 저장 
bb.setNum(num);
bb.setName(name);
bb.setPass(pass);
bb.setSubject(subject);
bb.setContent(content);
// BoardDAO bdao 객체생성
BoardDAO bdao = new BoardDAO();
// int check = numCheck(num,pass) 메서드호출
int check =bdao.numCheck(num, pass);
// check==1  이면 updateBoard(bb) 호출 content.jsp?num=값&pageNum=값
// check==0  이면 "비밀번호틀림" 뒤로이동 
if(check==1){
	bdao.updateBoard(bb);
	response.sendRedirect("content.jsp?num="+num+"&pageNum="+pageNum);
}else if(check==0){
	%>
	<script type="text/javascript">
		alert("비밀번호틀림");
		history.back();
	</script>
	<%
}else{
	%>
	<script type="text/javascript">
		alert("num틀림");
		history.back();
	</script>
	<%
}
%>
</body>
</html>



