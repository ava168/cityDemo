<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>都市信息网-信息搜素</title>
<link type="text/css" rel="stylesheet" href="/cityDemo/css/style.css">
</head>
<body>

	<table border="0" width="920" cellspacing="0" height="auto"
		bgcolor="white" align="center">
		<!-- 页眉 -->
		<tr>
			<td colspan="2"><iframe src="/cityDemo/view1/top2.html"
					frameBorder="0" width="920" scrolling="no" height="100"></iframe></td>
		</tr>
		<!-- 分隔行 -->
		<tr height="10" bgcolor="lightgrey">
			<td colspan="2"></td>
		</tr>
		<!-- 内容区域 -->
		<tr>
			<td width="700" align="center" valign="top">
				<!-- main -->
				<center>

					<table border="0" cellpadding="0" cellspacing="0" width="688"
						height="auto">
						<tr height="20">
							<td><img src="/cityDemo/images/default_t.jpg"></td>
						</tr>
						<tr>
							<td background="/cityDemo/images/default_m.jpg" valign="top">
								<!-- 内容区 -->
							      <center>
							      <form action="/cityDemo/user/updateUser" method="post">
							      用户id：<input type="text" name="user_id" id="user_id"  value="${USER_id }">
							      <!-- <input type="hidden" name="user_id,"> -->
							      用户名：<input type="text" name="user_name" id="user_name">
							      密码：<input type="password" name="user_password" id="user_password">
							      <input type="submit" value="确定修改">
							      </form>
							      </center>

							</td>
						</tr>
						<tr height="26">
							<td><img src="/cityDemo/images/default_e.jpg"></td>
						</tr>
						</table>
					
				</center>
			</td>
			<td width="200" align="center" valign="top">
				<!-- 右侧栏 --> <iframe src="/cityDemo/view1/right2.html"
					frameBorder="0" width="240" scrolling="no" height="570"></iframe>
			</td>
		</tr>
		<!-- 分隔行 -->
		<tr height="10" bgcolor="lightgrey">
			<td colspan="2"></td>
		</tr>
		<!-- 页脚 -->
		<tr>
			<td colspan="2"><iframe src="/cityDemo/view1/end.html"
					frameBorder="0" width="920" scrolling="no" height="70"
					style="margin-top: 0"></iframe></td>
		</tr>

	</table>


</body>
</html>