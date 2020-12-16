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
			<caption class="detail__title">お得情報編集ページ</caption>
			<tr>
				<th class="detail__th">お得情報ID</th>
				<td class="detail__td"><input type="text" name="reports_id" value="<%=r.getReports_id()%>" readonly></td>
			</tr>
			<tr>
				<th class="detail__th">お得情報タイトル<span>＊</span></th>
				<td class="detail__td"><input type="text" name="reports_title" value="<%=r.getReports_name()%>" maxlength='50' required></td>
			</tr>
			<tr>
				<th class="detail__th">キャンペーン写真</th>
				<td class="detail__td"><input type="file" name="reports_eyecatch" value="<%=r.getReports_eyecatch()%>"></td>
			</tr>
			<tr>
				<th class="detail__th">お得情報内容1<span>＊</span></th>
				<td class="detail__td"><textarea name="reports_content1" value="<%=r.getReports_content1()%>" maxlength='1000' required></textarea></td>
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