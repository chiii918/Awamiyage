<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="bean.Products"%>
<%@page import="bean.Makers"%>
<%@page import="bean.Categorys"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%

	//サーブレットのリクエストからProducts Beanのリストを取得する
	Products p = (Products) request.getAttribute("products_detail");

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

		<form action="ProductProcess" method="post" enctype="multipart/form-data">
			<table class="detail__table">
				<caption class="detail__title">商品編集ページ</caption>
				<tr>
					<th class="detail__th">商品ID</th>
					<td class="detail__td"><input type="text" name="products_id" value="<%=p.getProducts_id()%>" readonly></td>
				</tr>
				<tr>
					<th class="detail__th">商品名<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_name" value="<%=p.getProducts_name()%>" maxlength='50' required></td>
				</tr>
				<tr>
					<th class="detail__th">商品説明<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_description"  value="<%=p.getProducts_description()%>" maxlength='1000' required></td>
				</tr>
				<tr>
					<th class="detail__th">価格<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_price" value="<%=p.getProducts_price()%>" maxlength='50' required></td>
				</tr>
				<tr>
					<th class="detail__th">入数<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_quantity" value="<%=p.getProducts_quantity()%>" maxlength='50' required></td>
				</tr>
				<tr>
					<th class="detail__th">入数単位<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_quantityunit" value="<%=p.getProducts_quantityunit()%>" maxlength='5' required></td>
				</tr>
				<tr>
					<th class="detail__th">原材料</th>
					<td class="detail__td"><textarea name="products_materials" maxlength='1000'><%=p.getProducts_materials()%></textarea></td>
				</tr>
				<tr>
					<th class="detail__th">賞味期限<span>＊</span></th>
					<td class="detail__td"><input type="text" name="products_deadline" value="<%=p.getProducts_deadline()%>" maxlength='12' required></td>
				</tr>
				<tr>
					<th class="detail__th">保存方法<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_save" value="1" required <%if (p.getProducts_save() == 1) {%> checked="checked" <%}%>>常温</label>
						<label><input type="radio" class="radio" name="products_save" value="2" <%if (p.getProducts_save() == 2) {%> checked="checked" <%}%>>冷蔵</label>
						<label><input type="radio" class="radio" name="products_save" value="3" <%if (p.getProducts_save() == 3) {%> checked="checked" <%}%>>冷凍</label></td>
				</tr>
				<tr>
					<th class="detail__th">内容量</th>
					<td class="detail__td"><input type="text" name="products_capacity" value="<% if(p.getProducts_capacity()!=null){%><%= p.getProducts_capacity()%><%} %>" maxlength='100'></td>
				</tr>
				<tr>
					<th class="detail__th">内容量単位</th>
					<td class="detail__td"><input type="text" name="products_capacityunit" value="<% if(p.getProducts_capacityunit()!=null){%><%= p.getProducts_capacityunit()%><%} %>" maxlength='5'></td>
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
								<option value="<%=c.getSubcategorys_id()%>" data-val="<%=c.getCategorys_id()%>"><%=c.getSubcategorys_name()%></option>
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
						<label><input type="radio" class="radio" name="products_taste" value="1" required <%if (p.getProducts_taste() == 1) {%> checked="checked" <%}%>>甘い</label>
						<label><input type="radio" class="radio" name="products_taste" value="2" <%if (p.getProducts_taste() == 2) {%> checked="checked" <%}%>>しょっぱい</label>
						<label><input type="radio" class="radio" name="products_taste" value="3" <%if (p.getProducts_taste() == 3) {%> checked="checked" <%}%>>辛い</label>
						<label><input type="radio" class="radio" name="products_taste" value="3" <%if (p.getProducts_taste() == 4) {%> checked="checked" <%}%>>その他</label></td>
				</tr>
				<tr>
					<th class="detail__th">シーン<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_scene" value="1" required <%if (p.getProducts_scene() == 1) {%> checked="checked" <%}%>>友人</label>
						<label><input type="radio" class="radio" name="products_scene" value="2" <%if (p.getProducts_scene() == 2) {%> checked="checked" <%}%>>恋人</label>
						<label><input type="radio" class="radio" name="products_scene" value="3" <%if (p.getProducts_scene() == 3) {%> checked="checked" <%}%>>両親</label>
						<label><input type="radio" class="radio" name="products_scene" value="4" <%if (p.getProducts_scene() == 4) {%> checked="checked" <%}%>>会社</label>
						<label><input type="radio" class="radio" name="products_scene" value="5" <%if (p.getProducts_scene() == 5) {%> checked="checked" <%}%>>祖父母</label>
						<label><input type="radio"class="radio" name="products_scene" value="6" <%if (p.getProducts_scene() == 6) {%> checked="checked" <%}%>>子供</label></td>
				</tr>
				<tr>
					<th class="detail__th">販売店テキスト</th>
					<td class="detail__td"><textarea name="products_text" maxlength='150'><%=p.getProducts_text()%></textarea></td>
				</tr>
				<tr>
					<th class="detail__th">写真1</th>
					<td class="detail__td">
						<%
							if (p.getProducts_eyecatch() != null) {
						%>
							<img src="<%=p.getProducts_eyecatch()%>" alt="アイキャッチ">
						<%} %> <input type="file" name="products_eyecatch" accept="image/png, image/jpeg" id="eyecatch">
					</td>
				</tr>
				<tr>
					<th class="detail__th">写真2</th>
					<td class="detail__td">
						<%
							if (!(p.getProducts_photo2().equals(""))) {
						%>
							<img src="<%=p.getProducts_photo2()%>" alt="写真2"> <%
						 	} %> <input type="file" name="products_photo2" value="<%=p.getProducts_photo2()%>" accept="image/png, image/jpeg" id="photo2" disabled>
					</td>
				</tr>
				<tr>
					<th class="detail__th">写真3</th>
					<td class="detail__td">
						<%
							if (!(p.getProducts_photo3().equals(""))) {
						%>
							<img src="<%=p.getProducts_photo3()%>" alt="写真3"> <%
						 	} %> <input type="file" name="products_photo3" accept="image/png, image/jpeg" id="photo3" disabled>
					</td>
				</tr>
				<tr>
					<th class="detail__th">名産品<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_local" value="true" required <%if (p.isProducts_local()) {%> checked="checked" <%}%>>名産品</label>
						<label><input type="radio" class="radio" name="products_local" value="false" <%if (p.isProducts_local() == false) {%> checked="checked" <%}%>>該当なし</label>
					</td>
				</tr>
				<tr>
					<th class="detail__th">推し土産<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_recommend" value="true" required <%if (p.isProducts_recommend()) {%> checked="checked" <%}%>>推す</label>
						<label><input type="radio" class="radio" name="products_recommend" value="false" <%if (p.isProducts_recommend() == false) {%> checked="checked" <%}%>>推さない</label>
					</td>
				</tr>
				<tr>
					<th class="detail__th">表示/非表示<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="products_show" value="true" required <%if (p.isProducts_show()) {%> checked="checked" <%}%>>表示</label>
						<label><input type="radio" class="radio" name="products_show" value="false" <%if (p.isProducts_show() == false) {%> checked="checked" <%}%>>非表示</label>
					</td>
				</tr>
			</table>
			<input type="hidden" name="photo_check" value="0">
			<div class="system__inner">
				<button type="submit" class="system__btn" name="process" value="update" onclick="return check_alert(2)">更新</button>
				<button type="submit" class="system__btn" name="process" value="delete" onclick="return check_alert(3)">削除</button>
			</div>
		</form>
	</div>
	<%@ include file="../template/footer_back.jsp"%>