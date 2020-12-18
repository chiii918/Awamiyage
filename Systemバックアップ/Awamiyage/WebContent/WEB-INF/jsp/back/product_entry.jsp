<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="bean.Makers"%>
<%@page import="bean.Categorys"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers BeanとCategorys Beanのリストを取得する
	List<Makers> makers_list = new ArrayList();
	makers_list = (List<Makers>) request.getAttribute("makers_list");

	List<Categorys> categorys_list = new ArrayList();
	categorys_list = (List<Categorys>) request.getAttribute("categorys_list");

	List<Categorys> subcategorys_list = new ArrayList();
	subcategorys_list = (List<Categorys>) request.getAttribute("subcategorys_list");

	List<Categorys> citys_list = new ArrayList();
	citys_list = (List<Categorys>) request.getAttribute("citys_list");

%>

<%@ include file="../template/header_back.jsp"%>

	<form action="ProductEntry" method="post" enctype="multipart/form-data">
		<table class="detail__table">
			<caption class="detail__title">商品登録ページ</caption>
				<tr>
					<th class="detail__th">商品名<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_name" maxlength='50' required></td>
				</tr>
				<tr>
					<th class="detail__th">商品説明<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_description" maxlength='1000' required></td>
				</tr>
				<tr>
					<th class="detail__th">価格<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_price" maxlength='50' pattern="^[0-9]+$" required></td>
				</tr>
				<tr>
					<th class="detail__th">入数<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_quantity" maxlength='50' pattern="^[0-9,]+$" required></td>
				</tr>
				<tr>
					<th class="detail__th">入数単位<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_quantityunit" maxlength='5' required></td>
				</tr>
				<tr>
					<th class="detail__th">原材料</th>
					<td class="detail__td"><textarea name="products_materials" maxlength='1000'></textarea></td>
				</tr>
				<tr>
					<th class="detail__th">賞味期限<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_deadline" maxlength='12' required></td>
				</tr>
				<tr>
					<th class="detail__th">保存方法<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_save" value="1" required>常温</label>
						<label><input type="radio" class="radio" name="products_save" value="2">冷蔵</label>
						<label><input type="radio" class="radio" name="products_save" value="3">冷凍</label></td>
				</tr>
				<tr>
					<th class="detail__th">内容量</th>
					<td class="detail__td"><input type="text" name="products_capacity" maxlength='100'></td>
				</tr>
				<tr>
					<th class="detail__th">内容量単位</th>
					<td class="detail__td"><input type="text" name="products_capacityunit" maxlength='5'></td>
				</tr>
				<tr>
					<th class="detail__th">メーカー<span>＊</span></th>
					<td class="detail__td">
						<select name="makers_id" required>
								<%
									for (Makers m : makers_list) {
								%>
								<option value="<%=m.getMakers_id()%>"><%=m.getMakers_name()%></option>
								<%
									}
								%>
						</select></td>
				</tr>
				<tr>
					<th class="detail__th">カテゴリ<span>＊</span></th>
					<td class="detail__td">
						<select name="categorys_id" class="parent" required>
								<%
									for (Categorys c : categorys_list) {
								%>
								<option value="<%=c.getCategorys_id()%>"><%=c.getCategorys_name()%></option>
								<%
									}
								%>
						</select></td>
				</tr>
				<tr>
					<th class="detail__th">サブカテゴリ<span>＊</span></th>
					<td class="detail__td">
						<select name="subcategorys_id" class="children" required>
								<%
									for (Categorys c : subcategorys_list) {
								%>
								<option value="<%=c.getSubcategorys_id()%>" data-val="<%=c.getSub_categorys_id()%>"><%=c.getSubcategorys_name()%></option>
								<%
									}
								%>
						</select></td>
				</tr>
				<tr>
					<th class="detail__th">エリア（市町村）<span>＊</span></th>
					<td class="detail__td">
						<select name="citys_id" required>
								<%
									for (Categorys c : citys_list) {
								%>
								<option value="<%=c.getCitys_id()%>"><%=c.getCitys_name()%></option>
								<%
									}
								%>
						</select></td>
				</tr>
				<tr>
					<th class="detail__th">味<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_taste" value="1" required>甘い</label>
						<label><input type="radio" class="radio" name="products_taste" value="2">しょっぱい</label>
						<label><input type="radio" class="radio" name="products_taste" value="3">辛い</label>
						<label><input type="radio" class="radio" name="products_taste" value="4">その他</label></td>
				</tr>
				<tr>
					<th class="detail__th">シーン<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_scene" value="1" required>友人</label>
						<label><input type="radio" class="radio" name="products_scene" value="2">恋人</label>
						<label><input type="radio" class="radio" name="products_scene" value="3">両親</label>
						<label><input type="radio" class="radio" name="products_scene" value="4">会社</label>
						<label><input type="radio" class="radio" name="products_scene" value="5">祖父母</label>
						<label><input type="radio" class="radio" name="products_scene" value="6">子供</label></td>
				</tr>
				<tr>
					<th class="detail__th">販売店テキスト</th>
					<td class="detail__td"><textarea name="products_text" maxlength='150'></textarea></td>
				</tr>
				<tr>
					<th class="detail__th">写真1</th>
					<td class="detail__td"><input type="file" name="products_eyecatch" accept="image/png, image/jpeg" id="eyecatch"></td>
				</tr>
				<tr>
					<th class="detail__th">写真2</th>
					<td class="detail__td"><input type="file" name="products_photo2" accept="image/png, image/jpeg" id="photo2" disabled></td>
				</tr>
				<tr>
					<th class="detail__th">写真3</th>
					<td class="detail__td"><input type="file" name="products_photo3" accept="image/png, image/jpeg" id="photo3" disabled></td>
				</tr>
				<tr>
					<th class="detail__th">名産品<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_local" value="true" required>名産品</label>
						<label><input type="radio" class="radio" name="products_local" value="false">該当なし</label>
					</td>
				</tr>
				<tr>
					<th class="detail__th">推し土産<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_recommend" value="true" required>推す</label>
						<label><input type="radio" class="radio" name="products_recommend" value="false">推さない</label>
					</td>
				</tr>
				<tr>
					<th class="detail__th">表示/非表示<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_show" value="true" required>表示</label>
						<label><input type="radio" class="radio" name="products_show" value="false">非表示</label>
					</td>
				</tr>
		</table>

		<div class="system__inner">
			<button type="submit" class="system__btn" name="photo_check" onclick="return check_alert(1)" value="0" id="photo_check">登録</button>
			<button type="reset" class="system__btn">リセット</button>
		</div>
	</form>
</div>

	<%@ include file="../template/footer_back.jsp"%>