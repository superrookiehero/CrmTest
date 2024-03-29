﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>客户列表</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<SCRIPT language=javascript>
	 function to_page(){
		var pageNum =$("#page").val();
		window.location="${pageContext.request.contextPath}/product/findAll.action?pageNum="+pageNum+"&pageSize=${PageInfo.pageSize}";
	}
	
	function change_pageSize(){
		var pageSize=$("[name='pageSize']").val();
		window.location="${pageContext.request.contextPath}/product/findAll.action?pageSize="+pageSize;
	} 
</SCRIPT>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM id="customerForm" name="customerForm"
		action="${pageContext.request.contextPath }/product/findAllByName.action"
		method=post>
		
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：产品管理 &gt; 产品列表</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0
							width="100%" align=center border=0>
							<TBODY>
								<TR>
									<TD height=25>
										<TABLE cellSpacing=0 cellPadding=2 border=0>
											<TBODY>
												<TR>
													<TD>产品名称：</TD>
													<TD><INPUT class=textbox id=sChannel2
														style="WIDTH: 80px" maxLength=50 name="productName"></TD>
													
													<TD><INPUT class=button id=sButton2 type=submit
														value=" 筛选 " name=sButton2></TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							    
								<TR>
									<TD>
										<TABLE id=grid
											style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc"
											cellSpacing=1 cellPadding=2 rules=all border=0>
											<TBODY>
												<TR
													style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
													<TD>产品编号</TD>
													<TD>产品名称</TD>
													<TD>出发城市</TD>
													<TD>出发时间</TD>
													<TD>产品价格</TD>
													<TD>产品状态</TD>
													<TD>其他信息</TD>
													<TD>操作</TD>
												</TR>
												<c:forEach items="${PageInfo.list }" var="product">
												<TR
													style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
													<TD>${product.productNum }</TD>
													<TD>${product.productName }</TD>
													<TD>${product.cityName }</TD>
													<TD><fmt:formatDate value="${product.departureTime }" pattern="yyyy-MM-dd HH:mm:ss"/></TD>
													<TD>${product.productPrice }</TD>
													<TD>${product.productStatus }</TD>
													<TD>${product.productDesc }</TD>
													<TD>
													<a href="${pageContext.request.contextPath }/product/findAllById.action?id=${product.id}">修改</a>
													&nbsp;&nbsp;
													<a href="${pageContext.request.contextPath }/product/delProductById.action?id=${product.id}">删除</a>
													</TD>
												</TR>
												
												</c:forEach>

											</TBODY>
										</TABLE>
									</TD>
								</TR>
								
								<TR>
									<TD><SPAN id=pagelink>
											
												<DIV style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right">
												共[<B>${PageInfo.total}</B>]条记录,[<B>${PageInfo.pages}</B>]页
												,每页显示
												<select name="pageSize" onchange="change_pageSize()">
												
												<option value="1" <c:if test="${PageInfo.pageSize==1 }">selected</c:if>>1</option>
												<option value="2" <c:if test="${PageInfo.pageSize==2 }">selected</c:if>>2</option>
												</select>
												条
												
												<c:forEach var ="i" begin="1" end="${PageInfo.pages }">
												
													<c:if test="${i == PageInfo.pageNum }">
															${i }
													</c:if>
													
													<c:if test="${i != PageInfo.pageNum }">
															<a href="${pageContext.request.contextPath }/product/findAll.action?pageNum=${i}&pageSize=${PageInfo.pageSize}">${i }</a>
													</c:if>
												</c:forEach>
												
												
												[<A href="${pageContext.request.contextPath }/product/findAll.action?pageNum=${PageInfo.prePage }&pageSize=${PageInfo.pageSize}">前一页</A>]
												<B>${PageInfo.pageNum}</B>
												[<A href="${pageContext.request.contextPath }/product/findAll.action?pageNum=${PageInfo.nextPage }&pageSize=${PageInfo.pageSize}">后一页</A>] 
												到
												<input type="text" size="3" id="page" name="page" />
												页
												
												<input type="button" value="Go" onclick="to_page()"/>
											</DIV>
									</SPAN></TD>
								</TR>
							</TBODY>
						</TABLE>
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg"><IMG
						src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</BODY>
</HTML>
