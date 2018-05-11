<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'list.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<script type="text/javascript" src="js/vue.js"></script>
		<script type="text/javascript" src="js/vue-router.min.js"></script>
		<script type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
		<script type="text/javascript" src="js/vue-filter.js"></script>
		<style type="text/css">
.item {
	background-color: rgb(177, 241, 28);
	text-align: center;
}

.item_odd {
	background-color: rgb(25, 195, 247);
	text-align: center;
}
</style>
	</head>

	<body>
		<center>
			<span style="color: red" id="msg">${param.msg }</span>

			<h2>
				图书借阅系统
			</h2>


			<form action="<%=path%>/pro/findSome" method="post">
				图书编号
				<input type="text" name="bookCode" value="${pp.bookCode }" />
				&nbsp;图书分类
				<select name="bookType">
					<option value="">
						--请选择--
					</option>
					<option value="1"
						<c:if test="${pp.bookType eq '1' }">selected</c:if>>
						小说
					</option>
					<option value="2"
						<c:if test="${pp.bookType eq '2' }">selected</c:if>>
						文学
					</option>
					<option value="3"
						<c:if test="${pp.bookType eq '3' }">selected</c:if>>
						传记
					</option>
				</select>
				&nbsp;&nbsp;
				<input type="submit" value="查询" />
				&nbsp;&nbsp;
				<a href="<%=path%>/pro/goAdd">添加</a>

			</form>


			<form action="<%=path%>/book/list" method="post">

				<table border="1" cellspacing="0">
					<tr align="center">
						<td width="180">
							图书编号
						</td>
						<td width="180">
							图书分类
						</td>
						<td width="180">
							图书名称
						</td>
						<td width="180">
							作者
						</td>
						<td width="180">
							出版社
						</td>
						<td width="180">
							创作时间
						</td>
						<td width="180">
							操作
						</td>
					</tr>

					<c:choose>

						<c:when test="${fn:length(list)>0}">
							<c:forEach items="${list}" var="book" varStatus="stat">
								<tr align="center"
									<c:if test="${stat.index%2==0 }">style='background-color:#2396EB;'</c:if>>
									<td>
										${book.bookCode}
									</td>
									<td>
										<c:if test="${book.bookType==1}">小说</c:if>
										<c:if test="${book.bookType==2}">文学</c:if>
										<c:if test="${book.bookType==3}">传记</c:if>
									</td>
									<td>
										${book.bookName}
									</td>
									<td>
										${book.bookAtuthor}
									</td>
									<td>
										${book.publishPress}
									</td>
									<td>
									<fmt:formatDate value="${book.creationTime}" pattern="yyyy-MM-dd HH:mm:ss"/>
									</td>
									<td>
										<a href="<%=path%>/pro/del/${book.bookId}">删除</a>
										<a href="<%=path%>/pro/goUpdate/${book.bookId}">修改</a>
								</tr>
							</c:forEach>
						</c:when>

						<c:otherwise>
							<tr align="center">
								<td colspan="6">
									对不起，没有符合查询条件的结果
								</td>
							</tr>
						</c:otherwise>

					</c:choose>

				</table>
			</form>

		</center>
	</body>
	<script type="text/javascript">
	$(function() {

	})
</script>
<script type="text/javascript" color="255,0,0" opacity="0.5" zIndex="-2" count="399" src="js/canvas-nest.min.js"></script>
</html>
