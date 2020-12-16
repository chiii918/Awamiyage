<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Reports"%>

<%
	Reports r = (Reports) request.getAttribute("report_detail");
%>

<%@ include file="../template/header_detail.jsp" %>


<div class="section__container">
             <!-- コンテンツ内容はここに追記する -->

             <!-- ここから上部テンプレ -->

	<div class="keyvisual__template">

                 <!-- 下層カテゴリテキスト -->
		<div class="component__wrap">
			<h2 class="component__title"><%=r.getReports_name()%><img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img"></h2>
		</div>

                 <!-- パンくず -->
		<div class="breadcrumb__wrap">
			<p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a><a href="./PageControlFront?pg_id=109&fr_id=14">/試食レポート一覧</a>/<%=r.getReports_name()%></p>
		 </div>
	</div>

             <!-- innner -->
	<div class="section__container--report_detail--innner">

                 <!-- キービジュアル -->
		<section class="report_detail--keyvisual--wrap">
			<div class="report_detail--keyvisual">
				<img src="<%=r.getReports_eyecatch()%>" alt="下層img" class="news__detail--keyvisual--img">
			</div>
			<p class="report_detail--keyvisual--text">
				<%=r.getReports_content1()%>
			</p>
		</section>

                 <!-- 目次 "introduction__container"> -->
		<section class="report_detail--chapter--wrap">
			<div class="report_detail--chapter--inner">
				<ul class="report_detail__chapter--list">
					<li><span class="report_detail__chapter--item--first">目次</span></li>
					<li><span class="report_detail__chapter--item">1 <%=r.getReports_heading1()%></span></li>
					<li><span class="report_detail__chapter--item">2 <%=r.getReports_heading2()%></span></li>
					<li><span class="report_detail__chapter--item--last">3 <%=r.getReports_heading3()%></span></li>
				</ul>
			</div>
		</section>


                 <!-- h3タイトルと画像   買える場所まで使いまわし -->
		<section class="report_detail--wrap">

                     <!-- 買ってみた -->
			<div class="report_detail__report--inner">
				<h3 class="report_detail__report--title"><%=r.getReports_heading1()%></h3>
				<div class="keyvisual__wrap--img">
					<img src="<%=r.getReports_photo2()%>" alt="買ってみた写真" class="news__detail--keyvisual--img">
				</div>
				<p class="report_detail__report--txt">
					<%=r.getReports_content2()%>
				</p>
			</div>

                     <!-- 食べてみた -->
			<div class="report_detail__report--inner">
				<h3 class="report_detail__report--title"><%=r.getReports_heading2()%></h3>
				<div class="keyvisual__wrap--img">
					<img src="<%=r.getReports_photo3()%>" alt="食べてみた写真" class="news__detail--keyvisual--img">
				</div>
				<p class="report_detail__report--txt">
					<%=r.getReports_content3()%>
				</p>
			</div>
		</section>

                 <!-- まとめ -->

		<section class="report_detail--summary">
			<h3 class="report_detail__report--title"><%=r.getReports_heading3()%></h3>
			<p class="report_detail__report--txt">
				<%=r.getReports_content4()%>
			</p>

			<div class="report_detail__evaluation">
				<p class="report_detail__evaluation--title">商品情報はこちらからご覧ください。</p>
				<a href="./PageControlFront?pg_id=113&fr_id=11&pd_id=<%=r.getProducts_id1()%>"><%=r.getProducts_name1()%></a>
			</div>

		</section>
	</div>


             <!-- ホームに戻る -->
	<div class="component__btn--box">
	    <a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
	</div>
</div>

                <!-- フッター -->
<%@ include file="../template/footer_front.jsp" %>