<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Reports"%>
<%@page import="websys2.bean.Categorys"%>
<%@page import="websys2.bean.Products"%>

<%
	//お得情報
	List<Reports> news_list = new ArrayList();
	news_list = (List<Reports>) request.getAttribute("news_list");

	//試食記事
	List<Reports> reports_list = new ArrayList();
	reports_list = (List<Reports>) request.getAttribute("reports_list");

	//タグ（サブカテゴリ）
	List<Categorys> taglist = new ArrayList();
	taglist = (List<Categorys>) request.getAttribute("taglist");

	//ランキング
	List<Products> ranking_list = new ArrayList();
	ranking_list = (List<Products>) request.getAttribute("ranking_list");
%>



<%@ include file="../template/header_top.jsp"%>

<div class="section__container">
	<!-- キービジュアル -->
	<div class="keyvisual__container">
		<ul class="keyvisual__contents">
			<li><img src="./img/keyvisual-01.jpg" alt="キービジュアル" class="keyvisual__img"></li>
			<li><img src="./img/keyvisual-02.jpg" alt="キービジュアル" class="keyvisual__img"></li>
			<li><img src="./img/keyvisual-03.jpg" alt="キービジュアル" class="keyvisual__img"></li>
			<li><img src="./img/keyvisual-04.jpg" alt="キービジュアル" class="keyvisual__img"></li>
			<li><img src="./img/keyvisual-05.jpg" alt="キービジュアル" class="keyvisual__img"></li>

		</ul>
	</div>

	<!--スクロールアイコン-->
	<div class="scroll__icon">
		<img src="./img/scroll01.png" alt="スクロールアイコン" class="scroll__img">
	</div>

	<!-- サイト紹介 -->
	<section class="introduction__container animationTarget">
		<div class="introduction__wrap">
			<img src="./img/introduction01.png" alt="タイトル飾り" class="introduction__img">
			<h2 class="introduction__title">あわみやげとは</h2>
		</div>
		<p class="introduction__txt">
			あわみやげは徳島のお土産の情報を発信しているサイトです。<br> 徳島の魅力的なお土産を紹介しています。
		</p>
	</section>

	<!-- お得情報 -->
	<section class="news__container">
		<div class="title__container flex">
			<img src="./img/news_title01.png" alt="タイトル飾り">
			<h2 class="title__txt">お得情報</h2>
			<img src="./img/news_title01.png" alt="タイトル飾り">
		</div>
		<ul>
			<%
				for (Reports n : news_list) {
			%>
			<li class="news__list"><a href="./PageControlFront?pg_id=103&fr_id=101&rp_id=<%=n.getReports_id()%>" class="news__contents"><%=n.getRegister_date()%>　　<%=n.getReports_name()%></a></li>
			<%
				}
			%>
		</ul>
		<a href="./PageControlFront?pg_id=102&fr_id=15" class="news__btn btn">もっとみる ▶︎</a>
	</section>

	<!-- おすすめ -->
	<section class="recommend__container">
		<div class="title__container flex">
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
			<h2 class="title__txt">おすすめ</h2>
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
		</div>
		<a href="./PageControlFront?pg_id=104&fr_id=9" class="recommend__item"><img src="./img/recommend_01.jpg" alt="徳島の名産品" class="recommend__img"></a>
		<a href="./PageControlFront?pg_id=105&fr_id=10" class="recommend__item"><img src="./img/recommend_02.jpg" alt="おすすめ" class="recommend__img"></a>
	</section>

	<!-- エリア -->
	<section class="area__container">
		<img src="./img/area_icon06.png" alt="わかめ" class="area__img--wakame"> <img src="./img/area_icon01.png" alt="かずら橋" class="area__img--kazura"> <img src="./img/area_icon02.png" alt="かめ"
			class="area__img--kame"
		>
		<div class="title__container flex">
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
			<h2 class="title__txt">エリアで探す</h2>
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
		</div>
		<div class="area__contents">
			<img src="./img/area01.png" alt="徳島県" class="area__img"> <a href="./PageControlFront?pg_id=106&fr_id=4" class="area__wrap--west"> <img src="./img/area_west.png" alt="県西" class="area__img">
				<p class="area__title area__title--west">県西</p>
			</a> <a href="./PageControlFront?pg_id=107&fr_id=2" class="area__wrap--east"> <img src="./img/area_east.png" alt="県東" class="area__img">
				<p class="area__title area__title--east">県東</p>
			</a> <a href="./PageControlFront?pg_id=108&fr_id=3" class="area__wrap--south"> <img src="./img/area_south.png" alt="県南" class="area__img">
				<p class="area__title area__title--south">県南</p>
			</a>
		</div>
	</section>

	<!-- ランキング -->
	<div class="flex__container">
		<section class="ranking__container">
			<div class="title__container flex">
				<div class="title__border"></div>
				<img src="./img/title01.png" alt="タイトル飾り">
				<h2 class="title__txt">ランキング</h2>
				<img src="./img/title01.png" alt="タイトル飾り">
				<div class="title__border"></div>
			</div>

			<div class="ranking__contents flex">
				<%
					int i = 1;
					for (Products p : ranking_list) {
				%>
					<a href="./PageControlFront?pg_id=113&fr_id=11&pd_id=<%=p.getProducts_id()%>" class="ranking__item">
						<p class="ranking__number"><%=i%></p>
						<%
							if (i==1) {
						%>
							<p class="ranking__name"><%=p.getProducts_name()%></p>
						<%
							}
						%>
						<img src="<%=p.getProducts_eyecatch()%>" alt="ランキング" class="ranking__img">
					</a>
				<%
					i++;
					}
				%>
			</div>
		</section>

		<!-- 試食レポート -->
		<section class="report__container">
			<div class="title__container flex">
				<img src="./img/title01.png" alt="タイトル飾り">
				<div class="title__border"></div>
				<h2 class="title__txt">試食レポート</h2>
				<div class="title__border"></div>
				<img src="./img/title01.png" alt="タイトル飾り">
			</div>
			<ul>
			<%
				for (Reports r : reports_list) {
			%>
					<li class="report__contents">
					<a href="./PageControlFront?pg_id=110&fr_id=101&rp_id=<%=r.getReports_id()%>" class="flex">
							<div class="report__wrap">
								<h3 class="report__title"><%=r.getReports_name()%></h3>
								<p class="report__txt"><%=r.getReports_content1()%></p>
							</div>
							<div class="report__img--cover">
								<img src="<%=r.getReports_eyecatch()%>" alt="試食レポートサムネイル" class="report__img">
							</div>
					</a></li>
			<%
				}
			%>
			</ul>
			<a href="./PageControlFront?pg_id=109&fr_id=14" class="report__btn btn">もっとみる ▶︎</a>
		</section>
	</div>

	<!-- カテゴリ -->
	<section class="category__container">
		<div class="title__container flex">
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
			<h2 class="title__txt">サブカテゴリで探す</h2>
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
		</div>
		<ul class="category__contents flex">

			<%
				if (request != null && taglist != null) {
					if (taglist.size() > 0) {
						for (Categorys s : taglist) {
			%>

			<li><a href="./PageControlFront?pg_id=111&sc_id=<%=s.getSubcategorys_id()%>" class="category__item"><%=s.getSubcategorys_name()%></a></li>

			<%
						}
					}
				}
			%>

		</ul>
	</section>


	<!-- インスタグラム -->
	<section class="instagram__container">
		<div class="title__container flex title__container--SP">
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
			<h2 class="title__txt">インスタグラム</h2>
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
		</div>
		<div class="title__container flex title__container--PC">
			<img src="./img/title01.png" alt="タイトル飾り">
			<div class="title__border"></div>
			<h2 class="title__txt">インスタグラム</h2>
			<div class="title__border"></div>
			<img src="./img/title01.png" alt="タイトル飾り">
		</div>

		<div class="instagram__contents flex" id="instagram">
			<!-- <div class="instagram__test"></div>
            <div class="instagram__test"></div>
            <div class="instagram__test"></div> -->
			<!-- <div class="instagram__test"></div> -->
		</div>

		<a href="https://www.instagram.com/awamiyage" class="instagram__btn btn">
			<p class="instagram__txt">Instagram</p> <span class="instagram__txt--big">#あわみやげ</span> <img src="./img/insta_logo01.png" alt="インスタグラムアイコン" class="instagram__img">
		</a>
	</section>


	<!-- バナー -->
	<div class="banner__container">
		<a href="https://www.awanavi.jp/" class="banner__item"><img src="./img/banner01.jpg" alt="徳島の名産品" class="banner__img"></a>
		<a href="https://www.arunet-awa.com/" class="banner__item"><img src="./img/banner02.jpg" alt="おすすめ" class="banner__img"></a>
		<a href="https://awafood-ec.com/" class="banner__item"><img src="./img/banner03.jpg" alt="おすすめ" class="banner__img"></a>
	</div>

</div>

<!-- フッター -->
<%@ include file="../template/footer_top.jsp"%>









