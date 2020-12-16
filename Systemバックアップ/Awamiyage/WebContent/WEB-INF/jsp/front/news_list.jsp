<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="websys2.bean.Reports"%>

<%
	List<Reports> reports_list = new ArrayList();
	reports_list = (List<Reports>) request.getAttribute("reports_list");
%>

<%@ include file="../template/header_article.jsp"%>

      <div class="section__container">
        <!-- コンテンツ内容はここに追記する -->
        <!-- 下層トップ画像 -->
        <div class="keyvisual__wrap--img">

          <img src="./img/news_all_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

        </div>


        <!-- 下層カテゴリテキスト -->
        <div class="component__wrap">

          <h2 class="component__title">お得情報一覧<img src="./img/title02.png" alt="カテゴリ飾り"
                                        class="component__title--img"></h2>

        </div>

        <!-- パンくず -->
        <div class="breadcrumb__wrap">
          <p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a>/お得情報一覧</p>
        </div>
        <!-- 説明テキスト -->
        <p class="component__txt">
                  お店のキャンペーンなどお得な情報をご紹介します。
        　</p>

        <!-- お得情報 -->
        <div class="news__container">
          <div class="title__container flex">
            <img src="./img/news_title01.png" alt="タイトル飾り">
            <img src="./img/news_title01.png" alt="タイトル飾り">
            <img src="./img/news_title01.png" alt="タイトル飾り">

          </div>
          <ul>

          <%
		if (request != null && reports_list != null) {
			if (reports_list.size() > 0) {
					for (Reports r : reports_list) {
	%>
            <li class="news__list"><%=r.getRegister_date()%><a href="./PageControlFront?pg_id=103&fr_id=101&rp_id=<%=r.getReports_id()%>" class="news__contents"><%=r.getReports_name()%></a></li>

            <%
					}
			}
		}
	%>

          </ul>
        </div>




        <div class="component__btn--box">
          <a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
        </div>




      </div>

<%@ include file="../template/footer_front.jsp"%>