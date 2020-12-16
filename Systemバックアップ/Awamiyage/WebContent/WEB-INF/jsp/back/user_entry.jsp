<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


<%@ include file="../template/header_back.jsp" %>


	<form action="UserEntry" method="post">

			<table class="detail__table">
				<caption class="detail__title">ユーザー登録ページ</caption>
				<tr>
					<th class="detail__th">ユーザー名<span>＊</span><br><small>半角英数字の20文字以内で入力してください</small></th>
					<td class="detail__td"><input type="text" name="users_name" pattern="[a-zA-Z0-9]+" maxlength='20' placeholder="awamiyage" required></td>
				</tr>
				<tr>
					<th class="detail__th">ユーザー表示名<span>＊</span><br><small>20文字以内で入力してください</small></th>
					<td class="detail__td"><input type="text" name="users_nickname" maxlength='20' placeholder="表示名" required></td>
				</tr>
				<tr>
					<th class="detail__th">パスワード<span>＊</span><br><small>半角英数字の8文字以上20文字以内で入力してください</small></th>
					<td class="detail__td">
						<input type="password" name="users_password" pattern="[a-zA-Z0-9]+" title="半角英数字の8文字以上20文字以内で入力してください" minlength="8" maxlength='20' placeholder="パスワード" required></td>
				</tr>
			</table>

			<div class="system__inner">
				<button type="submit" class="system__btn" onclick="return check_alert(1);">登録</button>
				<button type="reset" class="system__btn">リセット</button>
			</div>
		</form>
	</div>

<%@ include file="../template/footer_back.jsp" %>