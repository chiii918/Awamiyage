<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Products"%>

<%
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");
%>

<%@ include file="../template/header_category.jsp"%>

<div class="section__container">
	<!-- コンテンツ内容はここに追記する -->
	<section class="contact__container">

		<div class="component__container">
		<!-- 下層カテゴリテキスト -->
			<div class="component__wrap">
				<h2 class="component__title">お問い合わせ<img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img"></h2>
			</div>
		<!-- パンくず -->
			<div class="breadcrumb__wrap">
				<p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a>/お問い合わせ</p>
			</div>
		</div>


		<iframe src="https://docs.google.com/forms/d/e/1FAIpQLScB3kyKIzJmdAI3YpZoaU6SvBT097DjbZ_f1qsNW4TdiXl9vg/viewform?embedded=true"
			width="100%" height="1106" frameborder="0" marginheight="0" marginwidth="0">読み込んでいます…</iframe>

		<div class="component__btn--box">
			<a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
		</div>
	</section>
</div>

<%@ include file="../template/footer_front.jsp" %>