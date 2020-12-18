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
		<img src="./img/East_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">
	</div>

        <!-- 下層カテゴリテキスト -->
	<div class="component__wrap">
		<h2 class="component__title">県東エリア<img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img"></h2>
	</div>

        <!-- パンくず -->
	<div class="breadcrumb__wrap">
		<p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a>/県東エリア</p>
	</div>
        <!-- 説明テキスト -->
	<p class="component__txt">
		徳島県の県東エリアの市長村や<br>
		主な観光地からお探しいただけます。
	</p>


        <!-- 県東地図 -->
	<div class="area__container">
	  <!-- 渦わかめ -->
		<img src="./img/area_icon05.png" alt="渦潮" class="area__img--uzu">
		<img src="./img/area_icon06.png" alt="わかめ" class="area__img--wakame">
	<!-- 地図 -->
		<div class="area__contents">
			<img src="./img/area01.png" alt="徳島県" class="area__img">
			<div class="area__wrap--east">
				<img src="./img/area_east.png" alt="県東" class="area__img">
				<p class="area__title area__title--east">県東</p>
			</div>
		</div>
	</div>

        <!-- 徳島市紹介 -->

	<section class="area__container--east">

		<div class="tokushimaken__container">
			<div class="before">
				<h3>徳島市</h3>
			</div>
		</div>
		<div class="before__text__box">
			<p class="before__text">阿波踊り会館、眉山、観音寺、徳島中央公園、とくしま動物園、徳島城跡　など</p>
		</div>

          <!-- 写真 -->
		<div class="product__container">
			<ul class="product__list__wrap">

			 <%
	 		if (request != null && products_list != null) {
	 			if (products_list.size() > 0) {
					for (Products p : products_list) {
						if (p.getCitys_id()==1) {
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

          <!-- 鳴門市 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>鳴門市</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">大塚国際美術館、徳島県立渦の道、渦潮、第1番札所霊山寺、鳴門市ドイツ館　など</p>
          </div>


          <!-- 写真 -->
      <div class="product__container">
        <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==2) {
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

          <!-- 松茂町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>松茂町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">ハレルヤスイーツキッチン、月見ヶ丘海浜公園、松茂町歴史民俗資料館　など</p>
          </div>
          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==6) {
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

          <!-- 北島町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>北島町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">フジグラン北島、いせや農場、北島チューリップ公園、北島町水辺交流プラザ　など</p>

          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==7) {
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

          <!-- 藍住町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>藍住町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">藍住町歴史館「藍の館」、癒しの花空間 made、藍住町バラ園、住吉神社、勝瑞城址　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==8) {
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

          <!-- 石井町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>石井町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">田中家住宅、矢神のイチョウ、地福寺の藤、童学寺、野鳥の森、下浦の釈迦堂　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==11) {
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

          <!-- 板野町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>板野町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">あすたむらんど徳島、金泉寺、弁慶の力石、地蔵寺、あせび温泉やすらぎの郷　など</p>

          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==9) {
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

          <!-- 上板町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>上板町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">乳保神社のおおいちょう、上板町技の館、安楽寺、大山寺、だいやま陶芸村　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==10) {
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

          <!-- 阿波市 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>阿波市</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">土柱、道の駅 どなり「餐の館」、たらいうどん土柱ランド新温泉、伝土御門上皇行官跡　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==4) {
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

          <!-- 吉野川市 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>吉野川市</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">藤井寺、鴨島大菊人形、三郷ほたる館、阿波和紙伝統産業会館、美郷の湯　など </p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==5) {
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

          <!-- 神山町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>神山町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">徳島県立神山森林公園イルローザの森、焼山寺、神山温泉、雨乞の滝　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==12) {
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

          <!-- 佐那河内村 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>佐那河内村</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">佐那河内いきものふれあいの里キャンプ場、大川原高原、徳円寺のシャクナゲ　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==13) {
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

          <!-- 小松島市 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>小松島市</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">みはらしの丘あいさい広場、18番札所恩山寺、19番札所立江寺、金長たぬき像　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==3) {
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

          <!-- 勝浦町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>勝浦町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">徳島の自然歴史体験 センス・オブ・ワンダー徳島、鶴林寺、道の駅 ひなの里かつうら　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==15) {
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

          <!-- 上勝町 -->
          <div class="tokushimaken__container">
            <div class="before">
              <h3>上勝町</h3>
            </div>
          </div>
          <div class="before__text__box">
            <p class="before__text">いっきゅう茶屋、百間滝、月ヶ谷温泉 月の宿、山の楽校、殿川内渓谷　など</p>
          </div>

          <!-- 写真 -->
        <div class="product__container">
          <ul class="product__list__wrap">

          <%
 		if (request != null && products_list != null) {
 			if (products_list.size() > 0) {
				for (Products p : products_list) {
					if (p.getCitys_id()==14) {
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
          <a href="./PageControlFront?pg_id=101"  class="component__btn--home">ホームに戻る</a>
        </div>

      </div>

<%@ include file="../template/footer_front.jsp" %>
