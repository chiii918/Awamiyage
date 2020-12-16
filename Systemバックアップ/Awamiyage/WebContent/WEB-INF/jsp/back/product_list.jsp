<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="websys2.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからProducts Beanのリストを取得する
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");
%>

<%@ include file="../template/header_back.jsp"%>

		<table class="list__table">
			<caption class="list__title">商品一覧</caption>
			<caption class="list__count">
				商品登録件数：<%=products_list.size()%></caption>
			<tr>
				<th class="list__th">商品ID</th>
				<th class="list__th--company">商品名</th>
			</tr>
			<%
				for (Products p : products_list) {
			%>
			<tr>
				<td class="list__td"><%=p.getProducts_id()%></td>
				<td class="list__td"><a href="./PageControlBack?pg_id=514&pd_id=<%=p.getProducts_id()%>"><%=p.getProducts_name()%></a></td>
			</tr>
			<%
				}
			%>

		</table>
	</div>
	<%@ include file="../template/footer_back.jsp"%>