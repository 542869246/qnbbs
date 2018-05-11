<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

		<title>My JSP 'add.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<body>
		<center>
			<form action="<%=path%>/pro/add" method="post">
				<table>
					<tr align="center">
						<td colspan="2">
							添加
						</td>
					</tr>
					<tr>
						<td>
							图书编码：
						</td>
						<td>
							<input type="text" name="bookCode" />
						</td>
					</tr>

					<tr>
						<td>
							图书名称：
						</td>
						<td>
							<input type="text" name="bookName" />
						</td>
					</tr>

					<tr>
						<td>
							类型：
						</td>
						<td>
							<select name="bookType">
								<option value="">
									--请选择--
								</option>
								<option value="1">
									小说
								</option>
								<option value="2">
									文学
								</option>
								<option value="3">
									传记
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							作者：
						</td>
						<td>
							<input type="text" name="bookAtuthor" />
						</td>
					</tr>
					<tr>
						<td>
							出版社：
						</td>
						<td>
							<input type="text" name="publishPress" />
						</td>
					</tr>
					<tr>
						<td>
							是否借阅：
						</td>
						<td>
							<select name="isBorrow">
								<option value="">
									--请选择--
								</option>
								<option value="0">
									未
								</option>
								<option value="1">
									已
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							创建者：
						</td>
						<td>
							<input type="text" name="createdby" />
						</td>
					</tr>
					
					<tr>
						<td>
							发布时间：
						</td>
						<td>
							<input type="text" name="publishDate" />
						</td>
					</tr>
					<tr>
						<td>
							创建时间：
						</td>
						<td>
							<input type="text" name="creationTime" />
						</td>
					</tr>
					<tr>
						<td>
							更新时间：
						</td>
						<td>
							<input type="text" name="lastUpdatetime" />
						</td>
					</tr>	
					
					
					<tr>
						<td>

						</td>
						<td>
							<input type="submit" value="保存" />
							&nbsp;&nbsp;
							<input type="reset" value="重置" />
							<button>
								<a href='<%=path%>/pro/list'
									style='color: black; text-decoration: none;'>返回</a>
							</button>
						</td>
					</tr>
				</table>
			</form>
		</center>
	</body>
	<script type="text/javascript" color="255,0,0" opacity="0.5" zIndex="-2" count="399" src="js/canvas-nest.min.js"></script>
	<script type="text/javascript" src="<%=path%>/js/jquery-1.7.2.min.js"></script>
	<script type="text/javascript">
	$(function() {
		$("form").submit(function() {
			var flag = true
			console.log($("[name='income']").val())
			if ($("[name='income']").val() == '') {
			
				alert("预期收益不能为空！")
				$("[name='income']").focus()
				flag = false
			}
			return flag
		})
	})
</script>
	
</html>
