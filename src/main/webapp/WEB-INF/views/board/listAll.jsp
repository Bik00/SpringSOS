<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/jquery/jquery-3.2.0.js"></script>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		var result='${msg}';
		
		if(result=='SUCCESS') {
			alert("처리가 완료되었습니다.");
		}
	</script>
	<h1 style="margin-left:8%">게시글 목록</h1>
	<br>
	<table class="table table-striped table-bordered table-hover" style="width:85%; margin: auto">
		<tr>
			<th style="width: 10px">BNO</th>
			<th>TITLE</th>
			<th>WRITER</th>
			<th>REGDATE</th>
			<th style="width:40px">VIEWCNT</th>
		</tr>
		
	<c:forEach items="${list}" var="boardVO">
		
		<tr>
			<td>${boardVO.bno}</td>
			<td><a href='/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
			<td>${boardVO.writer}</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate}" /></td>
			<td><span class="badge bg-red">${boardVO.viewcnt}</span></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>