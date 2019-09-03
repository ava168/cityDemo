<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>用户注册</title>
<link type="text/css" rel="stylesheet" href="/cityDemo/css/style.css;">
<script type="text/javascript" src="/cityDemo/js/jquery-1.8.0.min.js"></script>
</head>
<body bgcolor="#E7ECEF">
<script type="text/javascript">
function validate()
{
    $.ajax({
     	url: "${pageContext.request.contextPath}/user/userRegister",
		type: "post",
		data: { 
			    user_name: document.getElementById('log_Login_action_user_userName').value,  			
				user_password: document.getElementById('log_Login_action_user_userPassword').value, 
			  },
	    success:function(data){
             if(data.result==0){
            	 alert(data.message);
             }else{
            	 alert(data.message);
             }
		       
		},
	    error:function(){
	    	alert('遇到错误!');
	    },
   });
}
</script>


	<center>
		<form id="log_Login_action" name="log_Login_action"
			action="/cityDemo/user/userRegister" method="post">
			<table border="0" cellspacing="0" cellpadding="0"
				style="margin-top: 130">
				<tr>
					<td><img src="${pageContext.request.contextPath}/images/logon_top.gif"></td>
				</tr>
				<tr height="180">
					<td background="/cityDemo/images/logon_middle.gif" align="center"
						valign="top">
						<table border="0" width="90%" cellspacing="0" cellpadding="0">
							<tr height="50">
								<td colspan="2"></td>
							</tr>
							<tr height="30">
								<td align="right" width="40%">用户名：&nbsp;&nbsp;</td>
								<td style="text-indent: 5"><input type="text"
									name="user_name" size="30" value=""
									id="log_Login_action_user_userName" /></td>
							</tr>
							<tr height="30">
								<td align="right">密&nbsp;&nbsp;码：&nbsp;&nbsp;</td>
								<td style="text-indent: 5"><input type="password"
									name="user_password" size="30"
									id="log_Login_action_user_userPassword" /></td>
							</tr>
							<tr height="60">
								<td></td>
								<td><!-- <input type="submit" value="注册">  -->
								<input class="button" type="button" value="注册" onclick="validate()"/>
  		                         </form>
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