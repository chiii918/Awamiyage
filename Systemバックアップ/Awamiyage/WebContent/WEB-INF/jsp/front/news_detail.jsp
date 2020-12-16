<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Reports"%>

<%
	Reports r = (Reports) request.getAttribute("report_detail");
%>

<%@ include file="../template/header_category.jsp"%>

<div class="section__container">
	<!-- コンテンツ内容はここに追記する -->

	<!-- ここから上部テンプレ -->

	<div class="keyvisual__template">
		<!-- 下層トップ画像 -->
		<div class="keyvisual__wrap--img">
			<img src="./img/news_detail_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">
		</div>
		<!-- 下層カテゴリテキスト -->
		<div class="component__wrap">
			<h2 class="component__title">
				お得情報詳細 <img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img">
			</h2>
		</div>
		<!-- パンくず -->
		<div class="breadcrumb__wrap">
			<p class="breadcrumb__txt">
				<a href="./PageControlFront?pg_id=101">Top</a>/<a href="./PageControlFront?pg_id=113&fr_id=15>">お得情報一覧</a>/お得情報詳細
			</p>
		</div>
	</div>

	<!-- news__detail お得情報詳細-->
	<section class="news__detail--keyvisual--wrap">
		<h3 class="news__detail--campaign--title"><%=r.getReports_name()%></h3>
		<!-- キャンペーンタイトル商品画像キービジュアル -->
		<div class="news__detail--keyvisual">
			<img src="<%=r.getReports_eyecatch()%>" alt="商品画像" class="news__detail--keyvisual--img">
		</div>
		<p class="news__detail--keyvisual--text">
			<%=r.getReports_content1()%>
		</p>
	</section>

	<div class="maker__info-wrap">
		<p class="maker__info--txt">詳細はこちらから</p>
		<ul>
			<li class="maker__info--list">メーカー名： <%=r.getMakers_name1()%></li>
			<li class="maker__info--list">メーカーHP： <%=r.getMakers_homepage()%></li>
		</ul>
	</div>

	<!-- ホームに戻る -->
	<div class="component__btn--box">
		<a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
	</div>
</div>


<%@ include file="../template/footer_front.jsp"%>