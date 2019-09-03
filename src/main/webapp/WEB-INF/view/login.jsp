<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户登录</title>
<link type="text/css" rel="stylesheet" href="/cityDemo/css/style.css;">
</head>
<body bgcolor="#E7ECEF">
	<center>
		<form id="log_Login_action" name="log_Login_action"
			action="/cityDemo/user/userLogin" method="post">
			<table border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 130">
				<tr>
					<td><img src="${pageContext.request.contextPath}/images/logon_top.gif"></td>
				</tr>
				<tr height="180">
					<td background="${pageContext.request.contextPath}/images/logon_middle.gif" align="center"
						valign="top">
						<table border="0" width="90%" cellspacing="0" cellpadding="0">
							<tr height="50">
								<td colspan="2"></td>
							</tr>
							<tr height="30">
								<td align="right" width="40%">用户名：&nbsp;&nbsp;</td>
								<td style="text-indent: 5"><input type="text"
									name="user_name" size="30" value="${requestScope.uname}"
									id="log_Login_action_user_userName"
									onkeyup="validate(this.value)" /></td>
							</tr>
							<tr height="30">
								<td align="right">密&nbsp;&nbsp;码：&nbsp;&nbsp;</td>
								<td style="text-indent: 5"><input type="password"
									name="user_password" size="30"
									id="log_Login_action_user_userPassword" /></td>
							</tr>
							<tr height="60">
								<td></td>
								<td><input type="submit" value="登录"> 
								<!--  <input type="button" id="" value="登录" onclick="window.location.href='/cityDemo/user/userRegister'"/> -->

									<input type="reset" value="重置" /> <a id="log_Login_action_"
									href="/cityDemo/index">[返回首页]</a> <!-- <a id="log_Login_action_" href="${pageContext.request.contextPath}/view/indextemp.jsp">[返回首页]</a> -->
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td><img src="/cityDemo/images/logon_end.gif"></td>
				</tr>
			</table>
		</form>




	</center>
</body>
</html>