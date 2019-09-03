<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>都市信息网</title>
<link type="text/css" rel="stylesheet" href="/cityDemo/css/style.css">
</head>
<body background="/cityDemo/images/back.gif">
	<center>
		<table border="0" width="920" cellspacing="0" cellpadding="0"
			bgcolor="white">
			<tr>
				<td colspan="2">
					<!-- 页眉 --> <iframe src="/cityDemo/view1/top.html" frameBorder="0"
						width="920" scrolling="no" height="200"></iframe>
				</td>
			</tr>
			<tr>
				<td width="230" valign="top" align="center">
					<!-- 左侧 --> <iframe src="/cityDemo/left" frameBorder="0"
						width="225" scrolling="no" height="400"></iframe>
				</td>
				<td width="690" height="400" align="center" valign="top"
					bgcolor="#FFFFFF">
					<table border="0" width="670" cellspacing="0" cellpadding="0"
						style="margin-top: 5">

						<tr height="30">
							<td style="text-indent: 5" valign="bottom"><font
								color="#004790"><b>■查询结果</b></td>
						</tr>
						<tr height="1">
							
						</tr>
						<tr>
							<td align="center" style="border: 1 solid">
								<table border="0" width="100%" rules="rows" cellspacing="0">
									<tr height="30">
										<td style="text-indent: 5" valign="bottom"><font
											color="#004790"><b>■查询结果</b></td>
									</tr>
									<tr height="1">
										<td></td>
									</tr>
									<tr>
										<td align="center" style="border: 1 solid">
											<table border="0" width="100%" rules="rows" cellspacing="0">
												<tr align="center" height="30" bgcolor="#F0F0F0">
													<td width="6%"><b>序号</b></td>
													<td width="11%"><b>信息类别</b></td>
													<td width="8%"><b>ID值</b></td>
													<td width="38%"><b>信息标题</b></td>
													<td width="22%"><b>发布时间</b></td>
													<td width="15%"><b>联系人</b></td>
												</tr>
												<c:forEach items="${requestScope.pagemsg.lists}" var="u">
													<tr height="30" align="center">
														<th>${u.info_id }</th>
														<th>${u.info_type }</th>
														<th>${u.info_id }</th>
														<th>${u.info_title }</th>
														<th>${u.info_data }</th>
														<th>${u.info_linkman }</th>

													</tr>
												</c:forEach>


											</table>
											
											
										</td>
									</tr>
									<tr height="1">
										<td></td>
									</tr>
									<tr height="30">
										<td align="center">
</td>
</tr></table>

											<html>
<head>
<title>分页导航栏</title>
</head>
<body>

	<table border="0" width="100%" cellspacing="0">
		<tr>
			<td width="60%"><table border='0' cellpadding='3'>
					<tr>
						<td>每页显示：3条记录！当前页：${requestScope.pagemsg.currPage}/${requestScope.pagemsg.totalPage}
							页！</td>
					</tr>
				</table></td>
			<td align="center" width="40%"><table border='0' cellpadding='3'>
					<tr>
						<td><a
							href="${pageContext.request.contextPath }/info/searchShow?currentPage=${requestScope.pagemsg.currPage+1}">下一页</a>&nbsp;
							<a
							href="${pageContext.request.contextPath }/info/searchShow?currentPage=${requestScope.pagemsg.currPage-1}">上一页</a>&nbsp;
							<a
							href="${pageContext.request.contextPath }/info/searchShow?currentPage=${requestScope.pagemsg.totalCount}">尾页</a></td>
					</tr>
				</table></td>
		</tr>
	</table>

</body>
											</html>
										</td>
									</tr>
								</table> <br>
							</td>
						</tr>

					</table> <!-- 页脚 --> <iframe src="/cityDemo/view1/end.html" frameBorder="0"
						width="920" scrolling="no" height="70" style="margin-top: 0"></iframe>
	</center>
</body>
</html>
<%-- <html>
<head>
<title>都市信息网</title>
<link type="text/css" rel="stylesheet" href="/cityDemo/css/style.css">
</head>
<body background="/cityDemo/images/back.gif">
	<center>
		<table border="0" width="920" cellspacing="0" cellpadding="0"
			bgcolor="white">

			<tr>

				<td width="690" height="400" align="center" valign="top"
					bgcolor="#FFFFFF">
					<table border="0" width="670" cellspacing="0" cellpadding="0"
						style="margin-top: 5">

						<tr height="30">
							<td style="text-indent: 5" valign="bottom"><font
								color="#004790"><b>■查询结果</b></td>
						</tr>
						<tr height="1">
							<td></td>
						</tr>
						<tr>
							<td align="center" style="border: 1 solid">
								<table border="0" width="100%" rules="rows" cellspacing="0">
									<tr align="center" height="30" bgcolor="#F0F0F0">
										<td width="6%"><b>序号</b></td>
										<td width="11%"><b>信息类别</b></td>
										<td width="8%"><b>ID值</b></td>
										<td width="38%"><b>信息标题</b></td>
										<td width="22%"><b>发布时间</b></td>
										<td width="15%"><b>联系人</b></td>
									</tr>
									<c:forEach items="${requestScope.pagemsg.lists}" var="u">
										<tr height="30" align="center">
											<th>${u.info_id }</th>
											<th>${u.info_type }</th>
											<th>${u.info_id }</th>
											<th>${u.info_title }</th>
											<th>${u.info_data }</th>
											<th>${u.info_linkman }</th>

										</tr>
									</c:forEach>

								</table>
							</td>
						</tr>
						<tr height="1">
							<td></td>
						</tr>
						<tr height="30">
							<td align="center">


								<html>
<head>
<title>分页导航栏</title>
</head>
<body>
	<table border="0" width="100%" cellspacing="0">
		<tr>
			<td width="60%"><table border='0' cellpadding='3'>
					<tr>
						<td>每页显示：3条记录！当前页：${requestScope.pagemsg.currPage}/${requestScope.pagemsg.totalPage}
							页！</td>
					</tr>
				</table></td>
			<td align="center" width="40%"><table border='0' cellpadding='3'>
					<tr>
						<td><a
							href="${pageContext.request.contextPath }/info/searchShow?currentPage=${requestScope.pagemsg.currPage+1}">下一页</a>&nbsp;
							<a
							href="${pageContext.request.contextPath }/info/searchShow?currentPage=${requestScope.pagemsg.currPage-1}">上一页</a>&nbsp;
							<a
							href="${pageContext.request.contextPath }/info/searchShow?currentPage=${requestScope.pagemsg.totalCount}">尾页</a></td>
					</tr>
				</table></td>
		</tr>
	</table>

</body>
								</html>
							</td>
						</tr>
					</table> <br>
				</td>
			</tr>

		</table>
		<!-- 页脚 -->

	</center>
</body>
</html>
 --%>