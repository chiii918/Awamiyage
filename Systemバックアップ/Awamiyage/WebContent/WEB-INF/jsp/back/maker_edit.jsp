<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="websys2.bean.Products"%>
<%@page import="websys2.bean.Makers"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからMakers Beanのリストを取得する
	Makers m = (Makers) request.getAttribute("maker_detail");
%>

<%@ include file="../template/header_back.jsp"%>

		<form action="MakerProcess" method="post">
			<table class="detail__table">
				<caption class="detail__title">メーカー編集ページ</caption>
				<tr>
					<th class="detail__th">メーカーID</th>
					<td class="detail__td"><input type="text" name="makers_id" value="<%=m.getMakers_id()%>" readonly></td>
				</tr>
				<tr>
					<th class="detail__th">社名<span>＊</span></th>
					<td class="detail__td"><input type="text" name="makers_name" value="<%=m.getMakers_name()%>" maxlength='50' required></td>
				</tr>
				<tr>
					<th class="detail__th">住所<span>＊</span></th>
					<td class="detail__td"><input type="text" name="makers_address" value="<%=m.getMakers_address()%>" maxlength='150' required></td>
				</tr>
				<tr>
					<th class="detail__th">TEL<span>＊</span></th>
					<td class="detail__td"><input type="text" name="makers_tel" value="<%=m.getMakers_tel()%>" maxlength='20' pattern="^[0-9-]+$" required></td>
				</tr>
				<tr>
					<th class="detail__th">ホームページURL</th>
					<td class="detail__td"><input type="text" name="makers_homepage" value="<% if(m.getMakers_homepage()!=null){%><%= m.getMakers_homepage()%><%} %>" maxlength='100'></td>
				</tr>
				<tr>
					<th class="detail__th">ネットショップURL</th>
					<td class="detail__td"><input type="text" name="makers_netshop" value="<% if(m.getMakers_netshop()!=null){%><%= m.getMakers_netshop()%><%} %>" maxlength='100'></td>
				</tr>
				<tr>
					<th class="detail__th">直営販売店名</th>
					<td class="detail__td"><input type="text" name="shop_name" value="<% if(m.getShop_name()!=null){%><%= m.getShop_name()%><%} %>" maxlength='50'></td>
				</tr>
				<tr>
					<th class="detail__th">表示/非表示<span>＊</span></th>
					<td class="detail__td">
						<label><input type="radio" class="radio" name="makers_show" value="true" required <%if (m.isMakers_show()) {%> checked="checked" <%}%>>表示</label>
						<label><input type="radio" class="radio" name="makers_show" value="false" <%if (m.isMakers_show() == false) {%> checked="checked" <%}%>>非表示</label>
					</td>
				</tr>
			</table>

			<div class="system__inner">
				<button type="submit" class="system__btn" name="process" value="update" onclick="return check_alert(5);">更新</button>
				<button type="submit" class="system__btn" name="process" value="delete" onclick="return check_alert(3);">削除</button>
			</div>
		</form>
	</div>
	<%@ include file="../template/footer_back.jsp"%>