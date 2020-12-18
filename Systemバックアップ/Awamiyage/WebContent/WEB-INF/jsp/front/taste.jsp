<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Products"%>

<%
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");
%>

<%@ include file="../template/header_category.jsp"%>

<div class="section__container">
	<!-- コンテンツ内容はここに追記する -->
	<div class="keyvisual__template">
		<!-- 下層トップ画像 -->
		<div class="keyvisual__wrap--img">

			<img src="./img/taste_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

		</div>


		<!-- 下層カテゴリテキスト -->
		<div class="component__wrap">

			<h2 class="component__title">
				<img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img">味で探す
			</h2>

		</div>

		<!-- パンくず -->
		<div class="breadcrumb__wrap">

			<p class="breadcrumb__txt">
				<a href="./PageControlFront?pg_id=101">Top</a>/味で探す
			</p>

		</div>

	</div>

	<div class="component.txt__wrap">
		<p class="component__txt">
			味からお探しいただけます。<br>
			下記のメニューより選んでください。
		</p>
	</div>
	<div class="component__heading__wrap">
		<div class="component__heading">
			<p class="component__heading--txt">味を選んでください</p>
		</div>
	</div>

	<form action="">
		<div class="radio__wrap">
			<ul class="component__radio">
				<li class="component__radio--list"><input type="radio" name="taste" value="1" class="radio-input" id="radio-01"> <label for="radio-01">甘い</label></li>
				<li class="component__radio--list"><input type="radio" name="taste" value="2" class="radio-input" id="radio-02"> <label for="radio-02">しょっぱい</label></li>
				<li class="component__radio--list"><input type="radio" name="taste" value="3" class="radio-input" id="radio-03"> <label for="radio-03">辛い</label></li>
				<li class="component__radio--list"><input type="radio" name="taste" value="4" class="radio-input" id="radio-04"> <label for="radio-04">その他</label></li>
			</ul>
		</div>
	</form>
	<div class="title__container flex">
		<div class="title__border"></div>
		<img src="./img/title01.png" alt="タイトル飾り">
		<h2 class="title__txt">お土産一覧</h2>
		<img src="./img/title01.png" alt="タイトル飾り">
		<div class="title__border"></div>
	</div>

	<!------------------------- 写真 -->
	<div class="product__container">
		<ul class="product__list__wrap">
			<%
				if (request != null && products_list != null) {
					if (products_list.size() > 0) {
						for (Products p : products_list) {
			%>

			<li class="product__inner">
				<a href="./PageControlFront?pg_id=113&fr_id=5&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
					<div class="product__imgbox">
						<img src="<%=p.getProducts_eyecatch()%>" alt="商品画像" class="product__img">
					</div>
					<p class="product__txt"><%=p.getProducts_name()%></p>
				</a>
				<ul>
					<li><span class="product__tag"> <%
						 	if (p.getProducts_taste() == 1) {
						 %> 甘い <%
						 	} else if (p.getProducts_taste() == 2) {
						 %> しょっぱい <%
						 	} else if (p.getProducts_taste() == 3) {
						 %> 辛い <%
						 	} else if (p.getProducts_taste() == 4) {
						 %> その他 <%
						 	}
						 %></span></li>
					<li><span class="product__tag"><%=p.getCategorys_name()%></span></li>
				</ul></li>

			<%
				}
					}
				}
			%>

		</ul>
	</div>

	<div class="component__btn--box">
	<a href="./PageControlFront?pg_id=101" class="component__btn--home">トップページに戻る</a>
</div>






</div>



<%@ include file="../template/footer_front.jsp"%>