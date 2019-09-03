<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户手册上传下载</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/file/upload"
		method="post" enctype="multipart/form-data">
		选择文件:<input type="file" name="file" width="120px"> <input
			type="submit" value="上传">
	</form>
	<hr>
	<form action="${pageContext.request.contextPath }/file/down"
		method="get">
		<input type="submit" value="下载">
	</form>
</body>
</html>