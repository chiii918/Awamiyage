<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.lang3.StringUtils"%>
<%@page import="websys2.bean.Products"%>

<%
	List<Products> products_relation = new ArrayList();
	products_relation = (List<Products>) request.getAttribute("products_relation");

	Products p = (Products) request.getAttribute("products_detail");
	Integer fr_id = (Integer) request.getAttribute("fr_id");
%>

<%@include file="../template/header_detail.jsp"%>

<div class="section__container">
	<!-- コンテンツ内容はここに追記する -->

	<!-- ここから上部テンプレ -->

	<div class="keyvisual__template">

		<!-- 下層カテゴリテキスト -->
		<div class="component__wrap">
			<h2 class="component__title">
				<%=p.getProducts_name()%> <img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img">
			</h2>
		</div>

		<!-- パンくず 商品詳細ページのみパンくずなし-->
		<div class="breadcrumb__wrap">
			<p class="breadcrumb__txt">
				<a href="./PageControlFront?pg_id=101">Top</a>
				<%if(fr_id==1){ %>
					<a href="./PageControlFront?pg_id=114&fr_id=1">/価格で探す</a>
				<%}else if(fr_id==2){ %>
					<a href="./PageControlFront?pg_id=107&fr_id=2">/県東</a>
				<%}else if(fr_id==3){ %>
					<a href="./PageControlFront?pg_id=108&fr_id=3">/県南</a>
				<%}else if(fr_id==4){ %>
					<a href="./PageControlFront?pg_id=106&fr_id=4">/県西</a>
				<%}else if(fr_id==5){ %>
					<a href="./PageControlFront?pg_id=116&fr_id=5">/味で探す</a>
				<%}else if(fr_id==6){ %>
					<a href="./PageControlFront?pg_id=118&fr_id=6">/渡す相手で探す</a>
				<%}else if(fr_id==7){ %>
					<a href="./PageControlFront?pg_id=119&fr_id=7">/品目で探す</a>
				<%}else if(fr_id==8){ %>
					<a href="./PageControlFront?pg_id=117&fr_id=8">/個数で探す</a>
				<%}else if(fr_id==9){ %>
					<a href="./PageControlFront?pg_id=104&fr_id=9">/徳島の名産品</a>
				<%}else if(fr_id==10){ %>
					<a href="./PageControlFront?pg_id=105&fr_id=10">/推し土産</a>
				<%}else if(fr_id==16){ %>
					<a href="./PageControlFront?pg_id=105&fr_id=10">/サブカテゴリ</a>
				<%}%>
				/<%=p.getProducts_name()%>
			</p>
		</div>
	</div>

	<section class="product_detail--keyvisual--wrap">

		<!-- キービジュアルとサブ画像３枚 -->
		<div class="product_detail--keyvisual--inner">

			<!--  画像３枚切り替え部分 -->

			<div class="big_image">
				<img src="<%=p.getProducts_eyecatch()%>" alt="メイン画像" id="show">
			</div>
			<div class="images--wrap">
				<div class="images">
					<img src="<%=p.getProducts_eyecatch()%>" alt="メイン画像" class="img_click">
					<%if(!(StringUtils.isEmpty(p.getProducts_photo2()))){	%>
						<img src="<%=p.getProducts_photo2()%>" alt="サブ画像1" class="img_click">
					<%} %>
					<%if(!(StringUtils.isEmpty(p.getProducts_photo3()))){	%>
						<img src="<%=p.getProducts_photo3()%>" alt="サブ画像2" class="img_click">
					<%} %>
				</div>
			</div>
		</div>

		<div class="product__data__contents">
      <p class="product__evalution--txt">評価<span class="star">
      	<%if(p.getProducts_star()<1.5){ %>
      		★
      	<%}else if(p.getProducts_star()>=1.5 && p.getProducts_star()<2.5){ %>
					★★
				<%}else if(p.getProducts_star()>=2.5 && p.getProducts_star()<3.5){ %>
					★★★
				<%}else if(p.getProducts_star()>=3.5 && p.getProducts_star()<4.5){ %>
					★★★★
				<%}else if(p.getProducts_star()>=4.5 && p.getProducts_star()<=5.0){ %>
					★★★★★
				<%} %></span><%=p.getProducts_star()%></p>
      <ul>
				<li class="product__data--list">
					入数（<%=p.getProducts_quantityunit()%>）：<span class="product__data"><%=p.getProducts_quantity()%></span></li>
				<li class="product__data--list">税込価格（円）：<span class="product__data"><%=p.getProducts_price()%></span></li>
        <li class="product__data--list">関連タグ：
        	<a href="./PageControlFront?pg_id=119&fr_id=7" class="product__data--tag"><%=p.getCategorys_name()%></a>
        	<a href="./PageControlFront?pg_id=118&fr_id=6" class="product__data--tag">
        		<%if(p.getProducts_scene()==1){ %>
							友人
        		<%}else if(p.getProducts_scene()==2){ %>
							恋人
        		<%}else if(p.getProducts_scene()==3){ %>
							両親
        		<%}else if(p.getProducts_scene()==4){ %>
							会社
        		<%}else if(p.getProducts_scene()==5){ %>
							祖父母
        		<%}else if(p.getProducts_scene()==6){ %>
							子供
        		<%} %>
        	</a>
        	<a href="./PageControlFront?pg_id=116&fr_id=5" class="product__data--tag">
        		<%if(p.getProducts_taste()==1){ %>
        			甘い
        		<%}else if(p.getProducts_taste()==2){ %>
        			しょっぱい
        		<%}else if(p.getProducts_taste()==3){ %>
        			辛い
        		<%}else if(p.getProducts_taste()==4){ %>
        			その他
        		<%} %>
					</a>
        	<a href="./PageControlFront?pg_id=114&fr_id=1" class="product__data--tag">
        		<%if(p.getProducts_pricerange()==1){ %>
        			500円以下
        		<%}else if(p.getProducts_pricerange()==2){ %>
        			1000円以下
        		<%}else if(p.getProducts_pricerange()==3){ %>
        			1500円以下
        		<%}else if(p.getProducts_pricerange()==4){ %>
        			2000円以下
        		<%}else if(p.getProducts_pricerange()==5){ %>
        			2001円以上
        		<%} %>
        	</a>
       </li>
      </ul>
      <p>※入数が複数ある場合は（,）区切りで表示し、対応した形で金額を表示しています。</p>
		</div>
	</section>

	<!-- 入数～品目まで -->



	<div class="product_detail__report--inner">
		<h3 class="product_detail__report--title--table">あわみやげデータ</h3>
	</div>


	<!-- テーブル-->

	<table class="table01">
		<tbody>
			<tr>
				<th class="th--left">内容説明</th>
				<td class="td--right"><%=p.getProducts_description()%></td>
			</tr>

			<tr>
				<th class="th--left">原材料名</th>
				<td class="td--right"><%=p.getProducts_materials()%></td>
			</tr>

			<tr>
				<th class="th--left">内容量</th>
				<td class="td--right">
					<%if (p.getProducts_capacity().equals("")) {%>
						-
					<%} else { %>
						<%=p.getProducts_capacity()%><%=p.getProducts_capacityunit()%>
					<%} %>
				</td>
			</tr>

			<tr>
				<th class="th--left">賞味期限</th>
				<td class="td--right"><%=p.getProducts_deadline()%></td>
			</tr>

			<tr>
				<th class="th--left">保存方法</th>
				<td class="td--right">
			    <%if(p.getProducts_save()==1){ %>
       			常温
       		<%}else if(p.getProducts_save()==2){ %>
       			冷蔵
       		<%}else if(p.getProducts_save()==3){ %>
						冷凍
       		<%} %>
				</td>
			</tr>

			<tr>
				<th class="th--left">メーカー名</th>
				<td class="td--right"><%=p.getMakers_name()%></td>
			</tr>

			<tr>
				<th class="th--left">メーカーHP</th>
				<td class="td--right">
					<%if (p.getMakers_homepage().equals("")) {%>
						-
					<%} else { %>
						<a href="<%=p.getMakers_homepage()%>"><%=p.getMakers_homepage()%></a>
					<%} %>
				</td>
			</tr>

			<tr>
				<th class="th--left">直営店</th>
				<td class="td--right">
					<%if (p.getShop_name().equals("")) {%>
						-
					<%} else { %>
						<%=p.getShop_name()%>
					<%} %>
				</td>
			</tr>

			<tr>
				<th class="th--left">ネットショップ</th>
				<td class="td--right">
					<%if (p.getMakers_netshop().equals("")) {%>
						-
					<%} else { %>
						<a href="<%=p.getMakers_netshop()%>"><%=p.getMakers_netshop()%></a>
					<%} %>
				</td>
			</tr>


		</tbody>
	</table>
	<div class="small__wrap">
		<p>※記載変更により内容が変わる場合があるため、詳しくは、パッケージをご確認ください</p>
		<p>※通販サイトに飛びますが、必ずしも商品があるとは限りません。</p>
	</div>




	<!-- 評価-->

	<div class="title__container flex">
		<div class="title__border"></div>
		<img src="./img/title01.png" alt="タイトル飾り">
		<h2 class="title__txt">評価</h2>
		<img src="./img/title01.png" alt="タイトル飾り">
		<div class="title__border"></div>
	</div>

	  <p class="product__evalution--txt-s">
	  	この商品の評価をお願いします。<br>星を選択してください。
	  	</p>


	<form action="./PageControlFront?pg_id=121&pd_id=<%=p.getProducts_id()%>" method="POST">
		<div class="radio__wrap">
			<ul class="component__radio">
				<li class="component__radio--list"><input type="radio" name="star" value="1" class="radio-input" id="radio-01"> <label for="radio-01">★1</label></li>
				<li class="component__radio--list"><input type="radio" name="star" value="2" class="radio-input" id="radio-02"> <label for="radio-02">★2</label></li>
				<li class="component__radio--list"><input type="radio" name="star" value="3" class="radio-input" id="radio-03"> <label for="radio-03">★3</label></li>
				<li class="component__radio--list"><input type="radio" name="star" value="4" class="radio-input" id="radio-04"> <label for="radio-04">★4</label></li>
				<li class="component__radio--list"><input type="radio" name="star" value="5" class="radio-input" id="radio-05"> <label for="radio-05">★5</label></li>
			</ul>
		</div>
		<button class="component__select__btn">送信</button>
	</form>

	<div class="title__container flex">
		<div class="title__border"></div>
		<img src="./img/title01.png" alt="タイトル飾り">
		<h2 class="title__txt">関連商品一覧</h2>
		<img src="./img/title01.png" alt="タイトル飾り">
		<div class="title__border"></div>
	</div>


	<div class="product__container">
		<ul class="product__list__wrap">

			<%
				if (request != null && products_relation != null) {
					if (products_relation.size() > 0) {
						for (Products r : products_relation) {
			%>

			<li class="product__inner"><a href="./PageControlFront?pg_id=113&fr_id=1&pd_id=<%=r.getProducts_id()%>" class="product__list--link">
					<div class="product__imgbox">
						<img src="<%=r.getProducts_eyecatch()%>" alt="商品画像" class="product__img">
					</div>
					<p class="product__txt"><%=r.getProducts_name()%></p>
			</a>
				<ul>
					<li><span class="product__tag"> <%
						 	if (r.getProducts_taste() == 1) {
						 %> 甘い <%
						 	} else if (r.getProducts_taste() == 2) {
						 %> しょっぱい <%
						 	} else if (r.getProducts_taste() == 3) {
						 %> 辛い <%
						 	} else if (r.getProducts_taste() == 4) {
						 %> その他 <%
						 	}
						 %></span></li>
					<li><span class="product__tag"><%=r.getCategorys_name()%></span></li>
				</ul></li>

			<%
						}
					}
				}
			%>

		</ul>
	</div>



	<!--ホームボタン-->
	<div class="component__btn--box">
		<a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
	</div>

</div>




<!-- フッター -->
<%@ include file="../template/footer_front.jsp"%>