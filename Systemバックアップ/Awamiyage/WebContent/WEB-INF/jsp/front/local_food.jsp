<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Products"%>

<%
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");
%>

<%@ include file="../template/header_article.jsp"%>

<div class="section__container">
	<!-- コンテンツ内容はここに追記する -->

	<!-- 下層トップ画像 -->
	<div class="keyvisual__wrap--img">

		<img src="./img/local_food_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

	</div>


	<!-- 下層カテゴリテキスト -->
	<div class="component__wrap">

		<h2 class="component__title">
			徳島の名産品<img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img">
		</h2>

	</div>

	<!-- パンくず -->
	<div class="breadcrumb__wrap">
		<p class="breadcrumb__txt">
			<a href="./PageControlFront?pg_id=101">Top</a>/徳島の名産品
		</p>
	</div>

	<!---------------- 徳島の名産品紹介テキスト ------------->
	<section class="introduction__container animationTarget">
		<div class="introduction__wrap">
			<img src="./img/introduction01.png" alt="テキスト飾り" class="introduction__img">
			<h2 class="introduction__title">徳島の名産品について</h2>
		</div>
		<p class="introduction__txt">
			あわみやげは徳島のお土産の情報を発信しているサイトです。<br> 徳島の魅力的なお土産を紹介しています。
		</p>
	</section>

	<!-- タイトルアイコン付き -->
	<section class="report__container">
		<div class="title__container flex">
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
			<h2 class="title__txt">主な名産品紹介</h2>
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
		</div>

		<!-- 主な名産品紹介 -->
		<ul class="local__foods__contents__fexwap">
			<li class="local__foods__contents">
				<h3 class="local__foods__title">◆すだち</h3>
				<div class="local__foods__wrap flex">
					<div class="local__foods__img--cover">
						<img src="./img/local_food_sudachi.jpg" alt="名産品サムネイル" class="local__food__img">
					</div>
					<p class="local__food__txt">すだちとは、徳島原産の香酸柑橘類です。味は酸味が強く、さわやかな香りが特徴です。高級調味料として料理、お酒、飲料、スイーツなどに使われている万能果汁です。</p>
				</div>
			</li>

			<li class="local__foods__contents ">
				<h3 class="local__foods__title">◆なると金時</h3>
				<div class="local__foods__wrap flex">
					<div class="local__foods__img--cover">
						<img src="./img/local_food_kintoki.jpg" alt="名産品サムネイル" class="local__food__img">
					</div>
					<p class="local__food__txt">なると金時は、鮮やかな黄金色に栗のようなホクホクとした食感と甘さがあるのが特徴です。食物繊維とビタミンがたっぷりで美容と健康に最適の農産物です。</p>
				</div>
			</li>

			<li class="local__foods__contents">
				<h3 class="local__foods__title">◆鳴門わかめ</h3>
				<div class="local__foods__wrap flex">
					<div class="local__foods__img--cover">
						<img src="./img/local_food_wakame.jpg" alt="名産品サムネイル" class="local__food__img">
					</div>
					<p class="local__food__txt">鳴門の渦潮の激流の中、成長した鳴門わかめは、しなやかさと強いコシがあります。食感は、肉厚で生き生きとした歯触りがあり風味が強いのが特徴です。</p>
				</div>
			</li>

			<li class="local__foods__contents ">
				<h3 class="local__foods__title">◆鳴門れんこん</h3>
				<div class="local__foods__wrap flex">
					<div class="local__foods__img--cover">
						<img src="./img/local_food_renkon.jpg" alt="名産品サムネイル" class="local__food__img">
					</div>
					<p class="local__food__txt">鳴門れんこんは、粘土質の土壌で、一本一本手作業で彫ってし収穫します。そのれんこんは色白でシャキシャキとした歯切れが良く、柔らかい口触りが特徴です。</p>
				</div>
			</li>

			<li class="local__foods__contents ">
				<h3 class="local__foods__title">◆ゆず</h3>
				<div class="local__foods__wrap flex">
					<div class="local__foods__img--cover">
						<img src="./img/local_food_yuzu.jpg" alt="名産品サムネイル" class="local__food__img">
					</div>
					<p class="local__food__txt">木頭の寒暖差の激しい気候と標高300〜500メートルの盆地で育った木頭ゆずは、他のゆずでは類を見ない香りの高さと皮が肉厚で酸味が強いのが特徴です。</p>
				</div>
			</li>

			<li class="local__foods__contents ">
				<h3 class="local__foods__title">◆梅</h3>
				<div class="local__foods__wrap flex">
					<div class="local__foods__img--cover">
						<img src="./img/local_food_ume.jpg" alt="名産品サムネイル" class="local__food__img">
					</div>
					<p class="local__food__txt">全国で初めて「梅酒特区」の認定を受けた美郷で育った梅は、寒暖差が大きい土地柄、酸味や甘味が際立ち、皮が薄く、肉厚で果実感たっぷりの果物になります。</p>
				</div>
			</li>



		</ul>
	</section>


	<!---------------- 関連商品 ------------->
	<!-- タイトルアイコン付き -->
	<section class="report__container">
		<div class="title__container flex">
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
			<h2 class="title__txt">関連商品</h2>
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
		</div>

		<!-- 関連商品写真、商品名 -->
		<div class="product__container">
			<ul class="product__list__wrap">

				<%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
			%>
				<li class="product__inner"><a href="./PageControlFront?pg_id=113&fr_id=9&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
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

<%@ include file="../template/footer_front.jsp"%>