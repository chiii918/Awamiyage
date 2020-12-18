<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Products"%>

<%
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");
%>

<%@ include file="../template/header_category.jsp"%>

      <div class="section__container">
        <!-- コンテンツ内容はここに追記する -->

        <!-- 下層トップ画像 -->
        <div class="keyvisual__wrap--img">

          <img src="./img/West_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

        </div>


        <!-- 下層カテゴリテキスト -->
        <div class="component__wrap">

          <h2 class="component__title">県西エリア<img src="./img/title02.png" alt="カテゴリ飾り"
                                class="component__title--img"></h2>

        </div>

        <!-- パンくず -->
        <div class="breadcrumb__wrap">
          <p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a>/県西エリア</p>
        </div>
        <!-- 説明テキスト -->
        <p class="component__txt">
          徳島県の県西エリアの市長村や<br>
          主な観光地からお探しいただけます。


        </p>


        <!-- 県西地図 -->
        <div class="area__container">
          <!-- かずら橋 -->
          <img src="./img/area_icon01.png" alt="かずら橋" class="area__img--kazura">
          <!-- 地図 -->
          <div class="area__contents">
            <img src="./img/area01.png" alt="徳島県" class="area__img">
            <div class="area__wrap--west">
              <img src="./img/area_west.png" alt="県西" class="area__img">
              <p class="area__title area__title--west">県西</p>
            </div>
          </div>
        </div>

        <!-- 美馬市紹介 -->
        <section class="area__container--west">
          <div class="tokushimaken__container">
            <div class="before">
              <h3>美馬市</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">吉野川、うだつの町並み、安楽寺、寺町、美馬蚕糸館、脇町劇場オデオン座　など </p>
          </div>
          <!-- 写真 -->
          <div class="product__container">
	         <ul class="product__list__wrap">

		          <%
		 		if (request != null && products_list != null) {
		 			if (products_list.size() > 0) {
						for (Products p : products_list) {
							if (p.getCitys_id()==22) {
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



          <!-- 三好市 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>三好市</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">祖谷のかずら橋、大歩危・小歩危、剣山、奥祖谷二重かずら橋、祖谷温泉　など </p>
          </div>


          <!-- 写真 -->
          <div class="product__container">
	          <ul class="product__list__wrap">

		          <%
		 		if (request != null && products_list != null) {
		 			if (products_list.size() > 0) {
						for (Products p : products_list) {
							if (p.getCitys_id()==21) {
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

          <!-- つるぎ町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>つるぎ町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">道の駅 貞光ゆうゆう館、二層うだつの町並み、吉野川河川敷公園、まちなみ交流館　など</p>
          </div>


          <!-- 写真 -->
          <div class="product__container">
	        <ul class="product__list__wrap">

		          <%
		 		if (request != null && products_list != null) {
		 			if (products_list.size() > 0) {
						for (Products p : products_list) {
							if (p.getCitys_id()==24) {
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

          <!-- 東みよし町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>東みよし町</h3>
            </div>
          </div>

          <div class="before__text__box">
            <p class="before__text">吉野川ハイウェイオアシス、美濃田の淵、お花大権現、加茂の大クス　など</p>
          </div>


          <!-- 写真 -->
          <div class="product__container">
	        <ul class="product__list__wrap">

		          <%
		 		if (request != null && products_list != null) {
		 			if (products_list.size() > 0) {
						for (Products p : products_list) {
							if (p.getCitys_id()==23) {
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