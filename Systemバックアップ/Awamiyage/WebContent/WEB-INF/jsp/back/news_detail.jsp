<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="bean.Reports"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers Beanのリストを取得する
	Reports r = (Reports) request.getAttribute("report_detail");
%>

<%@ include file="../template/header_back.jsp" %>

		<table class="detail__table">
			<caption class="detail__title">お得情報詳細ページ</caption>

			<tr>
				<th class="detail__th">お得情報ID</th>
				<td class="detail__td"><%=r.getReports_id()%></td>
			</tr>
			<tr>
				<th class="detail__th">お得情報タイトル</th>
				<td class="detail__td"><%=r.getReports_name()%></td>
			</tr>
			<tr>
				<th class="detail__th">レポートタイプ</th>
				<td class="detail__td">
					<% if (r.getReports_type() == 3) {
						%> お得情報 <%
					} %></td>
			</tr>
			<tr>
				<th class="detail__th">お得情報内容1</th>
				<td class="detail__td"><%=r.getReports_content1()%></td>
			</tr>
			<tr>
				<th class="detail__th">写真1</th>
				<td class="detail__td">
					<%
						if (r.getReports_eyecatch() == null) {
					%> - <%
						} else {
					%> <img src="<%=r.getReports_eyecatch()%>" alt="写真1"> <%
 						} %></td>
			</tr>
			<tr>
				<th class="detail__th">メーカー名</th>
				<td class="detail__td">
					<%
						if (r.getMakers_name1() == null) {
					%> - <%
						} else {
					%> <img src="<%=r.getMakers_name1()%>" alt="写真1"> <%
 						} %></td>
			</tr>
			<tr>
				<th class="detail__th">登録日時</th>
				<td class="detail__td"><%=r.getRegister_time()%></td>
			</tr>
			<tr>
				<th class="detail__th">登録者名</th>
				<td class="detail__td"><%=r.getRegister_person()%></td>
			</tr>
			<tr>
				<th class="detail__th">最終更新日時</th>
				<td class="detail__td">
					<%
						if (r.getUpdate_time() == null) {
					%> - <%
						} else {
					%> <%=r.getUpdate_time()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">最終更新者名</th>
				<td class="detail__td">
					<%
						if (r.getUpdate_person() == null) {
					%> - <%
						} else {
					%> <%=r.getUpdate_person()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">表示/非表示</th>
				<td class="detail__td">
					<%
						if (r.isReports_show()) {
					%> 表示 <%
						} else {
					%> 非表示 <%
						}
					%>
				</td>
			</tr>
		</table>

		<div class="system__inner">
			<a class="system__btn" href="./PageControlBack?pg_id=509&rp_id=<%=r.getReports_id()%>">編集</a>
		</div>
	</div>
<%@ include file="../template/footer_back.jsp" %>