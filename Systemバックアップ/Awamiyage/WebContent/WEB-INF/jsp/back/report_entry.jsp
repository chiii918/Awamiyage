<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


<%@ include file="../template/header_back.jsp" %>


	<form action="ReportEntry" method="post">
		<table class="detail__table">
			<caption class="detail__title">試食記事登録ページ</caption>
			<tr>
				<th class="detail__th">試食記事タイトル<span>＊</span></th>
				<td class="detail__td"><input type="text"  name="reports_name" placeholder="タイトル" autofocus="autofocus" maxlength='50' required></td>
			</tr>
			<tr>
				<th class="detail__th">写真1</th>
				<td class="detail__td"><input type="file" name="reports_eyecatch"></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容1<span>＊</span></th>
				<td class="detail__td"><textarea name="reports_content1"  maxlength='1000' required></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">小見出し1</th>
				<td class="detail__td"><input type="text" name="reports_heading1" maxlength='20'></td>
			</tr>
			<tr>
				<th class="detail__th">写真2</th>
				<td class="detail__td"><input type="file" name="reports_photo2"></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容2</th>
				<td class="detail__td"><textarea name="reports_content2" maxlength='1000'></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">小見出し2</th>
				<td class="detail__td"><input type="text" name="reports_heading2" maxlength='20'></td>
			</tr>
			<tr>
				<th class="detail__th">写真3</th>
				<td class="detail__td"><input type="file" name="reports_photo3"></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容3</th>
				<td class="detail__td"><textarea name="reports_content3" maxlength='1000'></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">小見出し3</th>
				<td class="detail__td"><input type="text" name="reports_heading3" maxlength='20'></td>
			</tr>
			<tr>
				<th class="detail__th">レビュー記事内容4</th>
				<td class="detail__td"><textarea name="reports_content4" maxlength='1000'></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">表示/非表示<span>＊</span></th>
				<td class="detail__td">
					<label><input name="reports_show" type="radio" class="radio" value="true" required>表示</label>
					<label><input name="reports_show" type="radio" class="radio" value="false" required>非表示</label>
				</td>
			</tr>
		</table>

		<div class="system__inner">
			<button type="submit" class="system__btn" onclick="return check_alert(1);">登録</button>
			<button type="reset" class="system__btn">リセット</button>
		</div>
	</form>
</div>

<%@ include file="../template/footer_back.jsp" %>