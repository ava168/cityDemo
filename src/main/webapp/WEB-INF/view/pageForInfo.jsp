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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>都市信息网-信息搜素</title>
<link type="text/css" rel="stylesheet" href="/cityDemo/css/style.css">
<script type="text/javascript" src="/cityDemo/js/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	function pass() {
		var info_id = ${requestScope.INFOPAGE.lists[0].info_id}
;
		$.ajax({
			url : "${pageContext.request.contextPath}/info/set",
			type : "post",
			data : {
				type : 1,
				info_id : info_id,
			},
			success : function(data) {
				alert('審核通過！');

			},
			error : function() {
				alert('遇到错误!');
			},
		});
	}
	function payfor() {
		var info_id = ${requestScope.INFOPAGE.lists[0].info_id};
		$.ajax({
			url : "${pageContext.request.contextPath}/info/set",
			type : "post",
			data : {
				type : 0,
				info_id : info_id,
			},
			success : function(data) {
				alert('設置成功！');

			},
			error : function() {
				alert('遇到错误!');
			},
		});
	}
</script>
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
									<center>
										<form action="/cityDemo/info/set" method="post">
											<c:forEach items="${requestScope.INFOPAGE.lists}" var="i">
												<tr height="30" bgcolor="#F0F0F0">
													<td style="text-indent: 5; border: 1 solid"><font
														color="#004790"><b>■显示方式</b></font>&nbsp;&nbsp;&nbsp;&nbsp;<input
														type="button" value="审核通过" onclick="pass()">&nbsp;&nbsp;<input
														type="button" value="设置付费" onclick="payfor()"></td>

												</tr>
												<tr>
													<td>信息类别：${i.info_type}</td>

												</tr>
												<tr>
													<td>发布时间：${i.info_data}</td>
												</tr>
												<tr>
													<td>信息标题：${i.info_title}</td>
												</tr>
												<tr>
													<td>发布内容：</td>
												</tr>
												<tr>
													<td>
														<p>${i.info_content}</p>
													</td>
												</tr>
												<tr>
													<td>联系电话：${i.info_phone}
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 联系人：${i.info_linkman}
														&nbsp;&nbsp;&nbsp;&nbsp;
														&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
														E-mail：${i.info_email}</td>

												</tr>


											</c:forEach>
										</form>
									</center>
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