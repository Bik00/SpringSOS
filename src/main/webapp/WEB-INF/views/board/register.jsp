<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.css">
<script src="/resources/bootstrap/js/bootstrap.js"></script>
<script src="/resources/jquery/jquery-3.2.0.js"></script>

<!-- <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css"> -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 등록하기</h1>
	<form role="form" method="post">
		<div class="box-body">
			<div class="form-group">
				<label for="exampleInputEmail1">제목</label>
				<input type="text" name='title' class="form-control" placeholder="제목 입력">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">Content</label>
				<textarea class="form-control" name="content" rows="10" placeholder="내용을 입력하세요."></textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">작성자</label>
				<input type="text" name="writer" class="form-control" placeholder="작성자 입력">
			</div>
			<!-- /.box-body -->
		</div>
	
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</form>

</body>
</html>