<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="websys2.bean.Makers"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers Beanのリストを取得する
	Makers m = (Makers) request.getAttribute("maker_detail");
%>

<%@ include file="../template/header_back.jsp"%>


		<table class="detail__table">
			<caption class="detail__title">メーカー詳細ページ</caption>

			<tr>
				<th class="detail__th">メーカーID</th>
				<td class="detail__td"><%=m.getMakers_id()%></td>
			</tr>
			<tr>
				<th class="detail__th">社名</th>
				<td class="detail__td"><%=m.getMakers_name()%></td>
			</tr>
			<tr>
				<th class="detail__th">住所</th>
				<td class="detail__td"><%=m.getMakers_address()%></td>
			</tr>
			<tr>
				<th class="detail__th">TEL</th>
				<td class="detail__td"><%=m.getMakers_tel()%></td>
			</tr>
			<tr>
				<th class="detail__th">ホームページURL</th>
				<td class="detail__td">
					<% if (m.getMakers_homepage() == null) {
					%> - <%
						} else {
					%> <%=m.getMakers_homepage()%> <%
 						} %></td>
			</tr>
			<tr>
				<th class="detail__th">ネットショップURL</th>
				<td class="detail__td">
					<% if (m.getMakers_netshop() == null) {
					%> - <%
						} else {
					%> <%=m.getMakers_netshop()%> <%
 						} %></td>
			</tr>
			<tr>
				<th class="detail__th">直営販売店名</th>
				<td class="detail__td">
					<% if (m.getShop_name() == null) {
					%> - <%
						} else {
					%> <%=m.getShop_name()%> <%
 						} %></td>
			</tr>
			<tr>
				<th class="detail__th">登録日時</th>
				<td class="detail__td">
					<%
						if (m.getRegister_time() == null) {
					%> - <%
						} else {
					%> <%=m.getRegister_time()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">登録者名</th>
				<td class="detail__td">
					<%
						if (m.getRegister_person() == null) {
					%> - <%
						} else {
					%> <%=m.getRegister_person()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">最終更新日時</th>
				<td class="detail__td">
					<%
						if (m.getUpdate_time() == null) {
					%> - <%
						} else {
					%> <%=m.getUpdate_time()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">最終更新者名</th>
				<td class="detail__td">
					<%
						if (m.getUpdate_person() == null) {
					%> - <%
						} else {
					%> <%=m.getUpdate_person()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">表示/非表示</th>
				<td class="detail__td">
					<%
						if (m.isMakers_show()) {
					%> 表示 <%
						} else {
					%> 非表示 <%
						}
					%>
				</td>
			</tr>
		</table>

		<div class="system__inner">
			<a class="system__btn" href="./PageControlBack?pg_id=517&mk_id=<%=m.getMakers_id()%>">編集</a>
		</div>
	</div>
	<%@ include file="../template/footer_back.jsp"%>