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
<title>${boardVO.title}</title>
</head>
<body>
<script>
	$(document).ready(function() {

		var formObj = $("form[role='form']");
		console.log(formObj);
	
		$(".btn-warning").on("click", function () {
			formObj.attr("action", "/board/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$(".btn-danger").on("click", function () {

 			formObj.attr("action", "/board/remove");
			formObj.submit();
		});
		
		$(".btn-primary").on("click", function() {
			self.location="/board/listPage";
		});
	});
</script>

	<form role="form" method="post">
	
		<input type='hidden' name='bno' value="${boardVO.bno}">
		
	</form>
	
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1"><h3>글 제목</h3></label>
			<input type="text" name='title' class="form-control" value="${boardVO.title}" readonly="readonly">
		</div>
		<div class="form-group">
			<label for="exampleInputPassword1"><h3>글 내용</h3></label>
			<textarea class="form-control" name="content" rows="3" readonly="readonly">${boardVO.content}</textarea>
		</div>
		<div class="form-group">
			<label for="exampleInputEmail1"><h3>글 작성자</h3></label>
			<input type="text" name="writer" class="form-control" value="${boardVO.writer}" readonly="readonly">
		</div>
	</div>
	<!-- /.box-body -->
	
	<div class="box-footer">
		<button type="submit" class="btn btn-warning">수정하기</button>
		<button type="submit" class="btn btn-danger">삭제하기</button>
		<button type="submit" class="btn btn-primary">게시글 목록</button>
	</div>
</body>
</html>