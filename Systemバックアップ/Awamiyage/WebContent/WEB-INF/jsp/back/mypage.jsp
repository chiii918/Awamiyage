<%@page import="bean.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="bean.Products"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<%
	//サーブレットのリクエストからProducts Beanのリストを取得する
	Products p = (Products) request.getAttribute("products_detail");

	//セッションからログインユーザーを取得する
	Users login_user = (Users)session.getAttribute("login_user");
%>

<%@ include file="../template/header_back.jsp"%>















		<div class="back__wrap">
			<h1 class="back__title">マイページ</h1>
		</div>

		<p class="mypage__subtitle"><%=login_user.getUsers_name()%>さん、こんにちは</p>

		<div class="mypage__contents">
			<!-- 試食記事 -->
			<div class="mypage__inner">
				<div class="mypage__iconwrap">
					<div class="icon__box">
						<i class="fas fa-utensils"></i>
					</div>
					<p class="icon__txt">試食記事</p>
				</div>
				<div class="mypage__txtwrap">
					<a href="./PageControlBack?pg_id=504&fr_id=501" class="mypage__txt">一覧</a>
					<a href="./PageControlBack?pg_id=503" class="mypage__txt">登録</a>
				</div>
			</div>

			<!-- 商品 -->
			<div class="mypage__inner">
				<div class="mypage__iconwrap">
					<div class="icon__box">
						<i class="fas fa-carrot"></i>
					</div>
					<p class="icon__txt">商品</p>
				</div>
				<div class="mypage__txtwrap">
					<a href="./PageControlBack?pg_id=512" class="mypage__txt">一覧</a>
					<a href="./PageControlBack?pg_id=511" class="mypage__txt">登録</a>
				</div>
			</div>

			<!-- お得情報 -->
			<div class="mypage__inner">
				<div class="mypage__iconwrap">
					<div class="icon__box">
						<i class="fas fa-newspaper"></i>
					</div>
					<p class="icon__txt">お得情報</p>
				</div>
				<div class="mypage__txtwrap">
					<a href="./PageControlBack?pg_id=508&fr_id=501" class="mypage__txt">一覧</a>
					<a href="./PageControlBack?pg_id=507" class="mypage__txt">登録</a>
				</div>
			</div>

			<!-- メーカー -->
			<div class="mypage__inner">
				<div class="mypage__iconwrap">
					<div class="icon__box">
						<i class="fas fa-building"></i>
					</div>
					<p class="icon__txt">メーカー</p>
				</div>
				<div class="mypage__txtwrap">
					<a href="./PageControlBack?pg_id=516" class="mypage__txt">一覧</a>
					<a href="./PageControlBack?pg_id=515" class="mypage__txt">登録</a>
				</div>
			</div>

			<!-- ユーザー -->
			<div class="mypage__inner">
				<div class="mypage__iconwrap">
					<div class="icon__box">
						<i class="fas fa-user"></i>
					</div>
					<p class="icon__txt">ユーザー</p>
				</div>
				<div class="mypage__txtwrap">
					<a href="./PageControlBack?pg_id=524" class="mypage__txt">一覧</a>
					<a href="./PageControlBack?pg_id=523" class="mypage__txt">登録</a>
				</div>
			</div>





	<%@ include file="../template/footer_back.jsp"%>