<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/main.css">
</head>
<body>
<!-- 헤더영역입니다. -->
<%@ include file = "/header.jsp" %>
<!-- 메인 영역입니다. -->
<div class="grid_container">
	<main class="">메인</main>
	
	<aside class="">
		<h3>게시판 타임라인!</h3>
		<div class="mini-board aside-container">
			<table class="table">
			<thead>
				<tr>
					<th>th</th>
					<th>th</th>
					<th>th</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>td</td>
					<td>td</td>
					<td>td</td>
				</tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
				<tr><td>td</td></tr>
			</tbody>			
			<tfoot>
				<tr>
					<td>td</td>
					<td>td</td>
					<td>td</td>
				</tr>			
			</tfoot>
		</table>
		</div>
		<form action="#" method="post">
			<input type="text" name="gcontent" class="">
			<input type="submit" class="btn btn-default" >
		</form>
	</aside>
</div>


<!-- 푸터 영역입니다. -->
<%@ include file = "/footer.jsp" %>
</body>
</html>