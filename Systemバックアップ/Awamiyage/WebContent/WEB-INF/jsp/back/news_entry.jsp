<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


<%@ include file="../template/header_back.jsp" %>


	<form action="NewsEntry" method="post">
		<table class="list__table">
			<caption class="list__title">お得情報登録ページ</caption>
			<tr>
				<th class="detail__th">お得情報タイトル<span>＊</span></th>
				<td class="detail__td"><input type="text" name="reports_title"  placeholder="キャンペーン名" autofocus="autofocus" maxlength='50' required></td>
			</tr>
			<tr>
				<th class="detail__th">キャンペーン写真</th>
				<td class="detail__td"><input type="file" name="reports_eyecatch" accept="image/png, image/jpeg"></td>
			</tr>
			<tr>
				<th class="detail__th">お得情報内容1<span>＊</span></th>
				<td class="detail__td"><textarea name="reports_content1" maxlength='1000'  required></textarea></td>
			</tr>
			<tr>
				<th class="detail__th">表示/非表示<span>＊</span></th>
				<td class="detail__td">
					<label><input name="makers_show" type="radio" class="radio" value="true" required>表示</label>
					<label><input name="makers_show" type="radio" class="radio" value="false" required>非表示</label>
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