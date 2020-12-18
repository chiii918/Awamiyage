<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="bean.Reports"%>
<%@page import="bean.Products"%>
<%@page import="bean.Makers"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers Beanのリストを取得する
	Reports r = (Reports) request.getAttribute("report_detail");
%>

<%@ include file="../template/header_back.jsp" %>


		<table class="detail__table">
			<caption class="detail__title">試食記事詳細ページ</caption>

			<tr>
				<th class="detail__th">試食記事ID</th>
				<td class="detail__td"><%=r.getReports_id()%></td>
			</tr>
			<tr>
				<th class="detail__th">試食記事タイトル</th>
				<td class="detail__td"><%=r.getReports_name()%></td>
			</tr>
			<tr>
				<th class="detail__th">レポートタイプ</th>
				<td class="detail__td">
					<%
						if (r.getReports_type() == 1) {
					%> レビュー(単体) <%
						} else {
					%> レビュー(複数) <%
						}
					%>
				</td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容1</th>
				<td class="detail__td"><%=r.getReports_content1()%></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容2</th>
				<td class="detail__td">
					<%
						if (r.getReports_content2() == null) {
					%> - <%
						} else {
					%> <%=r.getReports_content2()%> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容3</th>
				<td class="detail__td">
					<%
						if (r.getReports_content3() == null) {
					%> - <%
						} else {
					%> <%=r.getReports_content3()%> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容4</th>
				<td class="detail__td">
					<%
						if (r.getReports_content4() == null) {
					%> - <%
						} else {
					%> <%=r.getReports_content4()%> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">写真1</th>
				<td class="detail__td">
					<%
						if (r.getReports_eyecatch() == null) {
					%> - <%
						} else {
					%> <img src="<%=r.getReports_eyecatch()%>" alt="写真1"> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">写真2</th>
				<td class="detail__td">
					<%
						if (r.getReports_photo2() == null) {
					%> - <%
						} else {
					%> <img src="<%=r.getReports_photo2()%>" alt="写真2"> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">写真3</th>
				<td class="detail__td">
					<%
						if (r.getReports_photo3() == null) {
					%> - <%
						} else {
					%> <img src="<%=r.getReports_photo3()%>" alt="写真3"> <%
 	}
 %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">商品名1</th>
				<td class="detail__td">
					<%
						if (r.getProducts_name1() == null) {
					%> - <%
						} else {
					%> <%=r.getProducts_name1()%> <%
 	}
 %>
				</td>
			</tr>
						<tr>
				<th class="detail__th">商品名2</th>
				<td class="detail__td">
					<%
						if (r.getProducts_name2() == null) {
					%> - <%
						} else {
					%> <%=r.getProducts_name2()%> <%
 	}
 %>
				</td>
			</tr>
						</tr>
						<tr>
				<th class="detail__th">商品名3</th>
				<td class="detail__td">
					<%
						if (r.getProducts_name3() == null) {
					%> - <%
						} else {
					%> <%=r.getProducts_name3()%> <%
 	}
 %>
				</td>
			</tr>
						</tr>
						<tr>
				<th class="detail__th">商品名4</th>
				<td class="detail__td">
					<%
						if (r.getProducts_name4() == null) {
					%> - <%
						} else {
					%> <%=r.getProducts_name4()%> <%
 	}
 %>
				</td>
			</tr>
						</tr>
						<tr>
				<th class="detail__th">商品名5</th>
				<td class="detail__td">
					<%
						if (r.getProducts_name5() == null) {
					%> - <%
						} else {
					%> <%=r.getProducts_name5()%> <%
 	}
 %>
				</td>
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
 	}
 %>
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
 	}
 %>
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
			<a class="system__btn"
				href="./PageControlBack?pg_id=505&rp_id=<%=r.getReports_id()%>">編集</a>
		</div>
	</div>
<%@ include file="../template/footer_back.jsp" %>