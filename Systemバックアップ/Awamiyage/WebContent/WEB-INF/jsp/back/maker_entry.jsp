<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


<%@ include file="../template/header_back.jsp"%>

	<form action="MakerEntry" method="post">
		<table class="detail__table">
			<caption class="detail__title">メーカー登録ページ</caption>
			<tr>
				<th class="detail__th">社名<span>＊</span></th>
				<td class="detail__td"><input name="makers_name" type="text" placeholder="徳島製麺" autofocus="autofocus" maxlength='50' required></td>
			</tr>
			<tr>
				<th class="detail__th">住所<span>＊</span></th>
				<td class="detail__td"><input name="makers_address" type="text" placeholder="徳島県〜" maxlength='150' required></td>
			</tr>
			<tr>
				<th class="detail__th">TEL<span>＊</span></th>
				<td class="detail__td"><input name="makers_tel" type="tel" placeholder="123-4567-8910" maxlength='20' pattern="^[0-9-]+$" required></td>
			</tr>
			<tr>
				<th class="detail__th">ホームページ</th>
				<td class="detail__td"><input name="makers_homepage" type="url" placeholder="URL" maxlength='100'></td>
			</tr>
			<tr>
				<th class="detail__th">ネットショップ</th>
				<td class="detail__td"><input name="makers_netshop" type="url" placeholder="URL" maxlength='100'></td>
			</tr>
			<tr>
				<th class="detail__th">直営店</th>
				<td class="detail__td"><input name="shop_name" type="text" placeholder="直営店名" maxlength='50'></td>
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
			<button type="submit" class="system__btn" onclick="return check_alert(4);">登録</button>
			<button type="reset" class="system__btn">リセット</button>
		</div>
	</form>
</div>

	<%@ include file="../template/footer_back.jsp"%>