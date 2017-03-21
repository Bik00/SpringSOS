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
<title>수정 페이지</title>
</head>
<body>
	<script>
		$(document).ready(function() {

 			var formObj = $("form[role='form']");
			console.log(formObj);
			
			$(".btn-danger").on("click", function () {
				self.location = "/board/listAll";
			});
			
			$(".btn-primary").on("click", function () {
				formObj.submit();
			});
		});
	</script>

	<form role="form" method="post">
		<div class="box-body">
		
			<div class="form-group">
				<label for="exampleInputEmail1">글 번호</label>
				<input type="text" name='bno' class="form-control" value="${boardVO.bno}" readonly="readonly">
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">글 제목</label>
				<input type="text" name='title' class="form-control" value="${boardVO.title}">
			</div>
			<div class="form-group">
				<label for="exampleInputPassword1">글 내용</label>
				<textarea class="form-control" name="content" row="20">${boardVO.content}</textarea>
			</div>
			<div class="form-group">
				<label for="exampleInputEmail1">글 작성자</label>
				<input type="text" name='writer' class="form-control" value="${boardVO.writer}" readonly="readonly">
			</div>
		</div>
		<!--  /.box-body -->
	</form>
	
	<div class="box-footer">
		<button type="submit" class="btn btn-primary">저장하기</button>
		<button type="submit" class="btn btn-danger">취소하기</button>
	</div>
</body>
</html>