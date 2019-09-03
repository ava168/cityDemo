<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>都市信息网</title>
  <meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
  <link type="text/css" rel="stylesheet" href="../../css/style.css">
  <script language="javascript" type="text/javascript" src="../../js/My97DatePicker/WdatePicker.js"></script>
</head>
<body background="/cityDemo/images/back.gif">
	<div align="center">
		<!-- 页眉 -->
		<iframe src="/cityDemo/view1/top.html" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>
			
		<table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white" style="text-align:center;">
			
			<tr>
				<!-- 左侧 -->
				<td width="230" valign="top" align="center">
					<iframe src="/cityDemo/left" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
				</td>
				<td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">        
					<table border="0" width="670" cellspacing="0" cellpadding="0" style="margin-top:5;">
						<tr height="30">
							<td style="text-indent:5" valign="bottom"><font color="#004790"><b>■推荐信息</b>『缴费专区』</font></td>
						</tr>
						<tr>
							<td align="center" style="border:0px" bgcolor="#F0F0F0">
								<table border="0" width="655" cellpadding="3" style="word-break:break-all;font-size:14px;">
									<tr height="30">
										<td colspan="2">【${requestScope.INFO.info_title}】</td>
										<td align="right">发布时间：『${requestScope.INFO.info_data}』&nbsp;</td>
									</tr>
									<tr height="20">
										<td colspan="3">${requestScope.INFO.info_content}</td>
									</tr>
									<tr height="30" align="center">
										<td>联系电话：${requestScope.INFO.info_phone}</td>
										<td>联 系 人：${requestScope.INFO.info_linkman}</td>
										<td>E-mail：${requestScope.INFO.info_email}</td>
									</tr>                                 
								 </table>
							</td>
						</tr>
						<tr height="1">
							<td></td>
						</tr>	
					</table>
					<!-- 列表显示免费信息 -->
					
					<table width="670" border="0" cellspacing="0" cellpadding="0" style="margin-top:5">
					
						<tr height="30">
							<td style="text-indent:5" valign="bottom"><font color="#004790"><b>■查看详细信息</b></font></td>
						</tr>            
						<tr height="1">
							<td></td>
						</tr>
						<tr bgcolor="#FAFCF5">
							<td style="border:1 solid">
								<table border="0" width="100%" cellspacing="0" cellpadding="2" style="font-size:14px;">
									<tr height="30">
										<td width="20%" style="text-indent:20">信息类别：</td>
										<td>${requestScope.INFO.info_type}</td>
									</tr>
									<tr height="30">
										<td style="text-indent:20">发布时间：</td>
										<td>${requestScope.INFO.info_data}</td>
									</tr>
									<tr height="30">
										<td style="text-indent:20">信息标题：</td>
										<td>${requestScope.INFO.info_title}</td>
									</tr>
									<tr height="30">
										<td colspan="2" style="text-indent:20">信息内容：${requestScope.INFO.info_content}</td>
									</tr>
									<tr>
										<td colspan="2" style="text-indent:20"></td>
									</tr>
									<tr height="40">
										<td colspan="2" align="left">
											<table border="0" width="630" cellspacing="0" cellpadding="0"  style="word-break:break-all;font-size:14px;" >
												<tr height="20" align="center">
													<td>联系电话：${requestScope.INFO.info_phone}</td>
													<td>联系人：${requestScope.INFO.info_linkman}</td>
													<td>E-mial：${requestScope.INFO.info_email}</td>
												</tr>
											</table>                      
										</td>
									</tr>
									<tr height="40">
										<td align="center" colspan="2" ><a href="javascript:window.history.back(-1)">返回</a></td>
									</tr>                              
								
								</table>
							</td>
						</tr>
					</table>
					<br>
				</td>
			</tr>      
		</table>
		<!-- 页脚 -->
		<iframe src="/cityDemo/view1/end.html" frameBorder="0" width="920" scrolling="no" height="70" style="margin-top:0"></iframe>        
	</div>
</body>

</html>