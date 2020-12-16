<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="websys2.bean.Products"%>
<%@page import="websys2.bean.Reports"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers Beanのリストを取得する
	Reports r = (Reports) request.getAttribute("report_detail");
%>

<%@ include file="../template/header_back.jsp" %>


	<form action="ReportProcess" method="post">
		<table class="detail__table">
			<caption class="detail__title">試食記事詳細ページ</caption>
			<tr>
				<th class="detail__th">試食記事ID</th>
				<td class="detail__td"><input type="text" name="reports_id" value="<%=r.getReports_id()%>" readonly></td>
			</tr>
			<tr>
				<th class="detail__th">試食記事タイトル<span>＊</span></th>
				<td class="detail__td"><input type="text" name="reports_name" value="<%=r.getReports_name()%>" maxlength='50' required></td>
			</tr>
			<tr>
				<th class="detail__th">写真1</th>
				<td class="detail__td"><input type="file" name="reports_eyecatch" value="<%=r.getReports_eyecatch()%>"></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容1<span>＊</span></th>
				<td class="detail__td"><textarea name="reports_content1" value="<%=r.getReports_content1()%>" maxlength='1000' required></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">小見出し1</th>
				<td class="detail__td"><input type="text" name="reports_heading1" value="<%=r.getReports_heading1()%>" maxlength='20'></td>
			</tr>
			<tr>
				<th class="detail__th">写真2</th>
				<td class="detail__td"><input type="file" name="reports_photo2" value="<%=r.getReports_photo2()%>"></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容2</th>
				<td class="detail__td"><textarea name="reports_content2" value="<%=r.getReports_content2()%>" maxlength='1000'></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">小見出し2</th>
				<td class="detail__td"><input type="text" name="reports_heading2" value="<%=r.getReports_heading2()%>" maxlength='20'></td>
			</tr>
			<tr>
				<th class="detail__th">写真3</th>
				<td class="detail__td"><input type="file" name="reports_photo3" value="<%=r.getReports_photo3()%>"></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容3</th>
				<td class="detail__td"><textarea name="reports_content3" value="<%=r.getReports_content3()%>" maxlength='1000'></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">小見出し3</th>
				<td class="detail__td"><input type="text" name="reports_heading3" value="<%=r.getReports_heading3()%>" maxlength='20'></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容4</th>
				<td class="detail__td"><textarea name="reports_content4" value="<%=r.getReports_content4()%>" maxlength='1000'></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">表示/非表示<span>＊</span></th>
				<td class="detail__td">
					<label><input type="radio" class="radio" name="reports_show" value="true" required <%if (r.isReports_show()) {%> checked="checked" <%}%>>表示</label>
					<label><input type="radio" class="radio" name="reports_show" value="false" <%if (r.isReports_show() == false) {%> checked="checked" <%}%>>非表示</label>
				</td>
			</tr>
		</table>

		<div class="system__inner">
			<button type="submit" class="system__btn" name="process" value="update" onclick="return check_alert(2);">更新</button>
			<button type="submit" class="system__btn" name="process" value="delete" onclick="return check_alert(3);">削除</button>
		</div>
	</form>
</div>


<%@ include file="../template/footer_back.jsp" %>