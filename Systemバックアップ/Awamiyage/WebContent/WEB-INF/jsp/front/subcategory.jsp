<%@page import="websys2.bean.Categorys"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Products"%>

<%
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");

	Categorys s = (Categorys) request.getAttribute("subcategorys_name");
%>

<%@include file="../template/header_article.jsp"%>


<div class="section__container">
	<!-- コンテンツ内容はここに追記する -->
	<!-- 下層トップ画像 -->
	<div class="keyvisual__wrap--img">

		<img src="./img/subcategory_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

	</div>


	<!-- 下層カテゴリテキスト -->
	<div class="component__wrap">

		<h2 class="component__title"><%=s.getSubcategorys_name()%><img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img">
		</h2>

	</div>

	<!-- パンくず -->
	<div class="breadcrumb__wrap">
		<p class="breadcrumb__txt">
			<a href="./PageControlFront?pg_id=101">Top</a>/<%=s.getSubcategorys_name()%></p>
	</div>
	<!-- 説明テキスト -->
	<p class="component__txt">
		条件にあてはまる商品の一覧です。<br>気になる商品をクリックしてください。
	</p>
	<!-- タイトルアイコン付き -->
	<section class="report__container">
		<div class="title__container flex">
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
			<h2 class="title__txt">お土産一覧</h2>
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
		</div>

		<!-- 写真 -->
		<div class="product__container">
			<ul class="product__list__wrap">
				<%
		        		if (request != null && products_list != null) {
		        			if (products_list.size() > 0) {
										for (Products p : products_list) {
						%>

				<li class="product__inner"><a href="./PageControlFront?pg_id=113&fr_id=16&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
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
								 	}else if (p.getProducts_taste() == 4) {
								 %> その他 <%
									}
								 %></span></li>
						<li><span class="product__tag"><%=p.getCategorys_name()%></span></li>
					</ul></li>

				<%-- <%=p.getProducts_eyecatch()%> --%>
				<%
		          		}
		  			  	}
		  		 		}
		  	    %>

			</ul>
		</div>


	</section>




	<div class="component__btn--box">
		<a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
	</div>




</div>

<!-- フッター -->
<%@ include file="../template/footer_front.jsp"%>