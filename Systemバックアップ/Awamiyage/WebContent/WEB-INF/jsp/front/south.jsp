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

        <!-- 下層トップ画像 -->
        <div class="keyvisual__wrap--img">

          <img src="./img/South_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

        </div>


        <!-- 下層カテゴリテキスト -->
        <div class="component__wrap">

          <h2 class="component__title">県南エリア<img src="./img/title02.png" alt="カテゴリ飾り"
                                class="component__title--img"></h2>

        </div>

        <!-- パンくず -->
        <div class="breadcrumb__wrap">
          <p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a>/県南エリア</p>
        </div>
        <!-- 説明テキスト -->
        <p class="component__txt">
          徳島県の県南エリアの市長村や<br>
          主な観光地からお探しいただけます。
        </p>


        <!-- 県南地図 -->
        <div class="area__container">
          <!-- ウミガメ -->
          <img src="./img/area_icon02.png" alt="ウミガメ" class="area__img--umigame">
          <!-- 地図 -->
          <div class="area__contents">
            <img src="./img/area01.png" alt="徳島県" class="area__img">
            <div class="area__wrap--south">
              <img src="./img/area_south.png" alt="県南" class="area__img">
              <p class="area__title area__title--south">県南</p>
            </div>
          </div>
        </div>


        <!-- 阿南市紹介 -->
        <section class="area__container--south">
          <div class="tokushimaken__container">
            <div class="before">
              <h3>阿南市</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">蒲生田岬、牛岐城趾公園、阿南市科学センター、太龍寺、湯あそびひろば 大和の郷　など</p>
          </div>
          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">
	             <%
	 		if (request != null && products_list != null) {
	 			if (products_list.size() > 0) {
					for (Products p : products_list) {
						if (p.getCitys_id()==16) {
			%>

               <li class="product__inner">
	              <a href="./PageControlFront?pg_id=113&fr_id=2&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
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
              </ul>
              </li>

              <%-- <%=p.getProducts_eyecatch()%> --%>
					<%
	          			}
	  			  	}
	  		 	}
	 		}
	  	    %>

          </ul>
        </div>


          <!-- 那賀町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>那賀町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">太龍寺ロープーウェイ、川口ダム自然エネルギーミュージアム、大轟の滝、大釜の滝　など</p>
          </div>
          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">
	             <%
	 		if (request != null && products_list != null) {
	 			if (products_list.size() > 0) {
					for (Products p : products_list) {
						if (p.getCitys_id()==17) {
			%>

               <li class="product__inner">
	              <a href="./PageControlFront?pg_id=113&fr_id=2&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
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
              </ul>
              </li>

              <%-- <%=p.getProducts_eyecatch()%> --%>
					<%
	          			}
	  			  	}
	  		 	}
	 		}
	  	    %>

          </ul>
        </div>


          <!-- 牟岐町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>牟岐町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">モラスコむぎ、出羽島、八坂八浜、不動の滝、出羽島大池のシラタマモ自生池　など</p>
          </div>
          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">
	             <%
	 		if (request != null && products_list != null) {
	 			if (products_list.size() > 0) {
					for (Products p : products_list) {
						if (p.getCitys_id()==19) {
			%>

               <li class="product__inner">
	              <a href="./PageControlFront?pg_id=113&fr_id=2&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
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
              </ul>
              </li>

              <%-- <%=p.getProducts_eyecatch()%> --%>
					<%
	          			}
	  			  	}
	  		 	}
	 		}
	  	    %>

          </ul>
        </div>


          <!-- 美波町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>美波町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">薬王寺、日和佐城、うみがめ博物館・カレッタ、大浜海岸、うみがめマリンクルーズ　など</p>
          </div>
          <!-- 写真 -->
       <div class="product__container">
        <ul class="product__list__wrap">
	             <%
	 		if (request != null && products_list != null) {
	 			if (products_list.size() > 0) {
					for (Products p : products_list) {
						if (p.getCitys_id()==18) {
			%>

               <li class="product__inner">
	              <a href="./PageControlFront?pg_id=113&fr_id=2&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
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
              </ul>
              </li>

              <%-- <%=p.getProducts_eyecatch()%> --%>
					<%
	          			}
	  			  	}
	  		 	}
	 		}
	  	    %>

          </ul>
        </div>


          <!-- 海陽町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>海陽町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">海洋自然博物館マリンジャム、オートキャンプ場まぜのおか、道の駅 宍喰温泉　など</p>
          </div>
          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">
	             <%
	 		if (request != null && products_list != null) {
	 			if (products_list.size() > 0) {
					for (Products p : products_list) {
						if (p.getCitys_id()==20) {
			%>

               <li class="product__inner">
	              <a href="./PageControlFront?pg_id=113&fr_id=2&pd_id=<%=p.getProducts_id()%>" class="product__list--link">
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
              </ul>
              </li>

              <%-- <%=p.getProducts_eyecatch()%> --%>
					<%
	          			}
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

<%@ include file="../template/footer_front.jsp" %>