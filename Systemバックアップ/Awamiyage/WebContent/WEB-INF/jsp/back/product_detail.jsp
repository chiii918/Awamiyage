<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="websys2.bean.Makers"%>
<%@page import="websys2.bean.Categorys"%>
<%@page import="websys2.bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからProducts Beanのリストを取得する
	Products p = (Products) request.getAttribute("products_detail");

%>

<%@ include file="../template/header_back.jsp"%>


		<table class="detail__table">
			<caption class="detail__title">商品詳細ページ</caption>
			<tr>
				<th class="detail__th">商品ID</th>
				<td class="detail__td"><%=p.getProducts_id()%></td>
			</tr>
			<tr>
				<th class="detail__th">商品名</th>
				<td class="detail__td"><%=p.getProducts_name()%></td>
			</tr>
			<tr>
				<th class="detail__th">商品説明</th>
				<td class="detail__td"><%=p.getProducts_description()%></td>
			</tr>
			<tr>
				<th class="detail__th">価格</th>
				<td class="detail__td"><%=p.getProducts_price()%></td>
			</tr>
			<tr>
				<th class="detail__th">価格帯</th>
				<td class="detail__td"><%=p.getProducts_pricerange()%></td>
			</tr>
			<tr>
				<th class="detail__th">入数</th>
				<td class="detail__td"><%=p.getProducts_quantity()%></td>
			</tr>
			<tr>
				<th class="detail__th">入数単位</th>
				<td class="detail__td"><%=p.getProducts_quantityunit()%></td>
			</tr>
			<tr>
				<th class="detail__th">原材料</th>
				<td class="detail__td"><%=p.getProducts_materials()%></td>
			</tr>
			<tr>
				<th class="detail__th">賞味期限</th>
				<td class="detail__td"><%=p.getProducts_deadline()%></td>
			</tr>
			<tr>
				<th class="detail__th">保存方法</th>
				<td class="detail__td">
					<%
						if (p.getProducts_save() == 1) {
					%> 常温 <%
						} else if (p.getProducts_save() == 2) {
					%> 冷蔵 <%
						} else if (p.getProducts_save() == 3) {
					%> 冷凍 <%
						}
					%></td>
			</tr>
			<tr>
				<th class="detail__th">内容量</th>
				<td class="detail__td"><%=p.getProducts_capacity()%></td>
			</tr>
			<tr>
				<th class="detail__th">内容量単位</th>
				<td class="detail__td">
					<%
						if (p.getProducts_capacityunit() == null) {
					%> - <%
						} else {
					%> <%=p.getProducts_capacityunit()%> <%
 						} %></td>
			</tr>
			<tr>
				<th class="detail__th">メーカー</th>
				<td class="detail__td"><%=p.getMakers_name()%></td>
			</tr>
			<tr>
				<th class="detail__th">カテゴリ</th>
				<td class="detail__td"><%=p.getCategorys_name()%></td>
			</tr>
			<tr>
				<th class="detail__th">サブカテゴリ</th>
				<td class="detail__td"><%=p.getSubcategorys_name()%></td>
			</tr>
			<tr>
				<th class="detail__th">エリア</th>
				<td class="detail__td"><%=p.getCitys_name()%> </td>
			</tr>
			<tr>
				<th class="detail__th">味</th>
				<td class="detail__td">
				 <%
				 	if (p.getProducts_save() == 1) {
				 %> 甘い <%
				 	} else if (p.getProducts_save() == 2) {
				 %> しょっぱい <%
				 	} else if (p.getProducts_save() == 3) {
				 %> 辛い <%
				 	}else if (p.getProducts_save() == 4) {
				 %> その他 <%
					}
				 %></td>
			</tr>
			<tr>
				<th class="detail__th">シーン</th>
				<td class="detail__td">
				 	<%if (p.getProducts_scene() == 1) {
						 %> 友人 <%
						 	} else if (p.getProducts_scene() == 2) {
						 %> 恋人 <%
						 	} else if (p.getProducts_scene() == 3) {
						 %> 両親 <%
						 	} else if (p.getProducts_scene() == 4) {
						 %> 会社 <%
						 	} else if (p.getProducts_scene() == 5) {
						 %> 祖父母 <%
						 	} else if (p.getProducts_scene() == 6) {
						 %> 子供 <%
					}%>
			</tr>
			<tr>
				<th class="detail__th">☆評価格納(累計)</th>
				<td class="detail__td"><%=p.getProducts_star()%></td>
			</tr>
			<tr>
				<th class="detail__th">販売店テキスト</th>
				<td class="detail__td"><%=p.getProducts_text()%></td>
			</tr>
			<tr>
				<th class="detail__th">写真1</th>
				<td class="detail__td">
					<%
						if (p.getProducts_eyecatch() == null) {
					%> - <%
						} else {
					%> <img class="product__img" src="<%=p.getProducts_eyecatch()%>" alt="写真1"> <%
 						} %></td>
			</tr>
			<tr>
				<th class="detail__th">写真2</th>
				<td class="detail__td">
					<%
						if (p.getProducts_photo2().equals("")) {
					%> - <%
						} else {
					%> <img class="product__img" src="<%=p.getProducts_photo2()%>" alt="写真2"> <%
						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">写真3</th>
				<td class="detail__td">
					<%
						if (p.getProducts_photo3().equals("")) {
					%> - <%
						} else {
					%> <img class="product__img" src="<%=p.getProducts_photo3()%>" alt="写真3"> <%
						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">名産品</th>
				<td class="detail__td">
					<%
						if (p.isProducts_local()) {
					%> 登録中 <%
						} else {
					%> - <%
						}
					%>
				</td>
			</tr>
			<tr>
				<th class="detail__th">推し土産</th>
				<td class="detail__td">
					<%
						if (p.isProducts_recommend()) {
					%> 登録中 <%
						} else {
					%> - <%
						}
					%>
				</td>
			</tr>
			<tr>
				<th class="detail__th">登録日時</th>
				<td class="detail__td">
					<%
						if (p.getRegister_time() == null) {
					%> - <%
						} else {
					%> <%=p.getRegister_time()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">登録者名</th>
				<td class="detail__td">
					<%
						if (p.getRegister_person() == null) {
					%> - <%
						} else {
					%> <%=p.getRegister_person()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">最終更新日時</th>
				<td class="detail__td">
					<%
						if (p.getUpdate_time() == null) {
					%> - <%
						} else {
					%> <%=p.getUpdate_time()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">最終更新者名</th>
				<td class="detail__td">
					<%
						if (p.getUpdate_person().equals("")) {
					%> - <%
						} else {
					%> <%=p.getUpdate_person()%> <%
 						} %>
				</td>
			</tr>
			<tr>
				<th class="detail__th">表示/非表示</th>
				<td class="detail__td">
					<%
						if (p.isProducts_show()) {
					%> 表示 <%
						} else {
					%> 非表示 <%
						}
					%>
				</td>
			</tr>
		</table>
		<div class="system__inner">
			<a class="system__btn" href="./PageControlBack?pg_id=513&pd_id=<%=p.getProducts_id()%>">編集</a>
		</div>
	</div>
	<%@ include file="../template/footer_back.jsp"%>