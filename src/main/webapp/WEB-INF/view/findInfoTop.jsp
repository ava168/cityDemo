<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>都市信息网</title>
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-control" content="no-cache">
<meta http-equiv="Cache" content="no-cache">
<link type="text/css" rel="stylesheet" href="/cityDemo/css/style.css">
</head>
<body background="/cityDemo/images/back.gif">
	<center>
		<table border="0" width="920" height="auto" cellspacing="0"
			cellpadding="0" bgcolor="white">
			<tr>
				<td colspan="2">
					<!-- 页眉 --> <iframe src="/cityDemo/view1/top.html" frameBorder="0"
						width="920" scrolling="no" height="200"></iframe>
				</td>
			</tr>

			<tr>
				<td width="230" valign="top" align="center">
					<!-- 左侧 --> <iframe src="${pageContext.request.contextPath}/left"
						frameBorder="0" width="225" scrolling="no" height="400">
						<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
						</head>
					</iframe>
				</td>
				<td width="690" height="400" align="center" valign="top"
					bgcolor="#FFFFFF">


					<html>
<head>
<title>首页</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>
<body>

	<center>
		<c:forEach items="${requestScope.INFOPAGE.lists}" var="i">
			<table border="0" width="670" cellspacing="0" cellpadding="0"
				style="margin-top: 5">
				<tr>
					<td align="center" style="border: 1 solid" bgcolor="#F0F0F0">


						<table border="0" width="655" cellpadding="3"
							style="word-break: break-all">
							<tr height="30">
								<td colspan="2">【${i.info_title }】</td>
								<td align="right">发布时间：『${i.info_data }』&nbsp;</td>
							</tr>
							<tr height="80">
								<td colspan="3">${i.info_content }</td>
							</tr>
							<tr height="30" align="center">
								<td>联系电话：${i.info_phone }</td>
								<td>联 系 人：${i.info_linkman }</td>
								<td>E-mail：${i.info_email}</td>
							</tr>
						</table>
						
					</td>
				</tr>
				<tr height="1">
					<td></td>
				</tr>


			</table>
		</c:forEach>
		<table border="0" width="100%" cellspacing="0">
							<tr>
								<td width="60%"><table border='0' cellpadding='3'>
										<tr>
											<td>每页显示：${requestScope.INFOPAGE.pageSize}条记录！当前页：${requestScope.INFOPAGE.currPage}/${requestScope.INFOPAGE.totalPage}
												页！</td>
										</tr>
									</table></td>
								<td align="center" width="40%"><table border='0'
										cellpadding='3'>
										<tr>
											<td><a
												href="${pageContext.request.contextPath }/info/findInfo?currentPage=${requestScope.INFOPAGE.currPage+1}">下一页</a>&nbsp;
												<a
												href="${pageContext.request.contextPath }/info/findInfo?currentPage=${requestScope.INFOPAGE.currPage-1}">上一页</a>&nbsp;
												<a
												href="${pageContext.request.contextPath }/info/findInfo?currentPage=${requestScope.INFOPAGE.totalCount}">尾页</a>
											</td>
										</tr>
									</table></td>
							</tr>
						</table>
	</center>
</body>
					</html>
				</td>
			</tr>

		</table>
		<!-- 页脚 -->
		<iframe src="${pageContext.request.contextPath }/view1/end.html"
			frameBorder="0" width="920" scrolling="no" height="70"
			style="margin-top: 0"></iframe>
	</center>

</body>
</html>