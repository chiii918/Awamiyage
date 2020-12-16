<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../template/header_login.jsp"%>

<div class="login__container">
	<h1 class="system__title">ログイン</h1>
	<div class="login__wrap">
		<h2 class="system__title--sub">あわみやげにログイン</h2>
		<form class="login__form" action="Login" method="POST">
			<div class="system__txt">
				<p>名前</p>
				<input type="text" name="users_name" pattern="[a-zA-Z0-9]+" maxlength='20' placeholder="ユーザー名を入力してください" required>
			</div>
			<div class="system__txt">
				<p>パスワード</P>
				<input type="password" name="users_password" pattern="[a-zA-Z0-9]+" title="半角英数字の8文字以上20文字以内で入力してください" minlength="8" maxlength='20' placeholder="パスワードを入力してください" required>
			</div>
			<div class="login__inner">
				<button type="submit" class="login__btn">ログイン</button>
				<button type="reset" class="login__btn">リセット</button>
			</div>
		</form>
	</div>
</div>

<%@ include file="../template/footer_back.jsp"%>
