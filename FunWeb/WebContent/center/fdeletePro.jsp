<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="board1.gBoardDAO"%>
<%@page import="board1.gBoardBean"%>
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
// center/fupdatePro.jsp
String pageNum=request.getParameter("pageNum");
// 업로드하는 프로그램 설치 cos.jar
// upload 폴더 만들기
// upload 물리적 경로

// 업로드할 파일의 크기 제한

// MultipartRequest 객체생성 => 파일업로드 , multi 정보 저장

// 파라미터값 가져오셔서 변수에 저장
int num=Integer.parseInt(request.getParameter("num"));
String name=request.getParameter("name");
String pass=request.getParameter("pass");

// BoardBean bb 객체생성
// 멤버변수 <= 파라미터값 저장
gBoardBean bb=new gBoardBean();
bb.setNum(num);
bb.setName(name);
bb.setPass(pass);


// BoardDAO bdao 객체생성
gBoardDAO bdao=new gBoardDAO();
//int check = numCheck(num,pass) 메서드호출
int check=bdao.numCheck(num, pass);
//check==1  이면 updateBoard(bb) 호출 content.jsp?num=값&pageNum=값
//check==0  이면 "비밀번호틀림" 뒤로이동 
if(check==1){
 	bdao.deletePro(num, pass);     //deletePro(bb);
	response.sendRedirect("fnotice.jsp?pageNum="+pageNum);
}else{
	%>
	<script type="text/javascript">
		alert("비밀번호틀림");
		history.back();
	</script>
	<%
}
%>
</body>
</html>






