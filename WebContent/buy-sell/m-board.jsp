<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import= "dao.*" %>
<%@ page import="java.util.ArrayList"%>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Market-Place</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<style>
	tbody>tr>td:nth-child(1) {
		width: 10%;
	}
	tbody>tr>td:nth-child(2) {
		width: 10%;
	}
	tbody>tr>td:nth-child(3) {
		width: 50%;
	}
	tbody>tr>td:nth-child(4) {
		width: 10%;
	}
	tbody>tr>td:nth-child(5) {
		width: 20%;
	}

</style>
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="body-container container">
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">SSAMMooo</h1>
		</div>
	</div>
<table class="table table-striped">
	<thead>
		<tr>
			<th>번호</th>
			<th>말머리</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
		</tr>
	</thead>
	<tbody>
	<%
	if(id != null) {
	
	%>
	<%
	request.setCharacterEncoding("UTF-8");
	String msub = request.getParameter("msub");
	String mtitle = request.getParameter("mtitle");
	if(mtitle == null){
		ArrayList<MBoardObj> mboards = (new MBoardDAO()).getlist();
		for (MBoardObj mboard : mboards) {
			String img = mboard.getMimg();
	%>
		<tr>
			<td><%=mboard.getMno() %></td>
			<td><%=mboard.getMsub() %></td>
			<td><a href="./m-boardDetail.jsp?mno=<%=mboard.getMno() %>"><%=mboard.getMtitle() %></a></td>
			<td><%=mboard.getId() %></td>
			<td><%=mboard.getMtime() %></td>
		</tr>
<%
		} 
	} else {
		ArrayList<MBoardObj> mboards = (new MBoardDAO()).serch(msub, mtitle);
		for (MBoardObj mboard : mboards) {
			String img = mboard.getMimg();
	  %>
	  <tr>
			<td><%=mboard.getMno() %></td>
			<td><%=mboard.getMsub() %></td>
			<td><a href="./m-boardDetail.jsp?mno=<%=mboard.getMno() %>"><%=mboard.getMtitle() %></a></td>
			<td><%=mboard.getId() %></td>
			<td><%=mboard.getMtime() %></td>
		</tr>
		<%}} %>
	</tbody>
	<tfoot>
		<tr>
			<td colspan=4  align="center">
				<form action="/buy-sell/m-board.jsp" method="post">
					<select name="msub">
						<option value="삽니다.">삽니다</option>
						<option value="팝니다.">팝니다</option>
					</select>
					<input type="text" name="mtitle" placeholder="검색">
					<input type="submit" class="btn">
				</form>
			</td>
			<td><a class="btn btn-default" href="/buy-sell/m-boardadd.jsp"> 글쓰기</a></td>
		</tr>
	</tfoot>
	<%} else{ %>
	<tr>
		<th colspan=5><h2>로그인이 필요합니다!</h2></th>
	</tr>
	<%} %>
	
</table>







</div>
<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
</body>
</html>