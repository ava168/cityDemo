<%@ page language="java" contentType="text/html; charset=gb2312"
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
									<table border="0" cellpadding="0" cellspacing="0" width="650"
										height="300">
										<tr>
											<td>消息id</td>
											<td>消息标题</td>
											<td>消息消息内容</td>
											<td>联系人</td>
											<td>联系电话</td>
											<td>电子邮箱</td>
											<td>发布日期</td>

										</tr>
										<c:forEach items="${requestScope.InfoPage.lists}" var="i">
											<tr>
												<td>${i.info_id}</td>
												<td>${i.info_title }</td>
												<td>${i.info_content}</td>
												<td>${i.info_linkman }</td>
												<td>${i.info_phone}</td>
												<td>${i.info_email }</td>
												<td>${i.info_data}</td>

											</tr>
										</c:forEach>
									</table>
								</center>

							</td>
						</tr>
						<tr height="26">
							<td><img src="/cityDemo/images/default_e.jpg"></td>
						</tr>
					</table>
					<table border="0" width="100%" cellspacing="0">
						<tr>
							<td width="60%"><table border='0' cellpadding='3'>
									<tr>
										<td>每页显示：${requestScope.InfoPage.pageSize}条记录！当前页：${requestScope.InfoPage.currPage}/${requestScope.InfoPage.totalPage}
											页！</td>
									</tr>
								</table></td>
							<td align="center" width="40%"><table border='0'
									cellpadding='3'>
									<tr>
										<td><a
											href="${pageContext.request.contextPath }/info/seachForInfo?currentPage=${requestScope.InfoPage.currPage+1}">下一页</a>&nbsp;
											<a
											href="${pageContext.request.contextPath }/info/seachForInfo?currentPage=${requestScope.InfoPage.currPage-1}">上一页</a>&nbsp;
											<a
											href="${pageContext.request.contextPath }/info/seachForInfo?currentPage=${requestScope.InfoPage.totalCount}">尾页</a>
											</td>
									</tr>
								</table></td>
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