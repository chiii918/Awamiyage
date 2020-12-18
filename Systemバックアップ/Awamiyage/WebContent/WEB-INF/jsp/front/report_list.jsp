<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Reports"%>

<%
	List<Reports> reports_list = new ArrayList();
	reports_list = (List<Reports>) request.getAttribute("reports_list");
%>

<%@ include file="../template/header_article.jsp"%>

      <div class="section__container">
        <!-- コンテンツ内容はここに追記する -->
        <!-- 下層トップ画像 -->
        <div class="keyvisual__wrap--img">

          <img src="./img/report_all_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

        </div>


        <!-- 下層カテゴリテキスト -->
        <div class="component__wrap">

          <h2 class="component__title">試食レポート一覧<img src="./img/title02.png" alt="カテゴリ飾り"
                                        class="component__title--img"></h2>

        </div>

        <!-- パンくず -->
        <div class="breadcrumb__wrap">
          <p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a>/試食レポート一覧</p>
        </div>
        <!-- 説明テキスト -->
        <p class="component__txt">
          お土産を実際に試食したり食べ比べをしてみた感想をご紹介しています。<br>
          ぜひお土産選びの参考にしてみてください。
        </p>

        <section class="report__container">
          <div class="title__container flex">
            <div class="title__border"></div>
            <img src="./img/title01.png" alt="タイトル飾り">
            <h2 class="title__txt">試食レポート</h2>
            <img src="./img/title01.png" alt="タイトル飾り">
            <div class="title__border"></div>
          </div>

          <ul>

          <%
		if (request != null && reports_list != null) {
			if (reports_list.size() > 0) {
					for (Reports r : reports_list) {
	%>

            <li class="report__contents"><a href="./PageControlFront?pg_id=110&fr_id=101&rp_id=<%=r.getReports_id()%>" class="flex report__contents__margin">
                <div class="report__wrap">
                  <h3 class="report__title"><%=r.getReports_name()%></h3>
                  <p class="report__txt"><%=r.getReports_content1()%></p>
                </div>
                <div class="report__img--cover">
                  <img src="<%=r.getReports_eyecatch()%>" alt="試食レポートサムネイル" class="report__img">
                </div>
              </a>
            </li>

            <%
					}
			}
		}
	%>

          </ul>
        </section>




        <div class="component__btn--box">
          <a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
        </div>




      </div>

<%@ include file="../template/footer_front.jsp"%>