<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="bean.Products"%>

<%
	List<Products> products_list = new ArrayList();
	products_list = (List<Products>) request.getAttribute("products_list");
%>

<%@ include file="../template/header_category.jsp" %>

<div class="section__container">
    <!-- コンテンツ内容はここに追記する -->

    <article class="privacy__container">

        <div class="component__container">
            <!-- 下層カテゴリテキスト -->
            <div class="component__wrap">
                <h2 class="component__title">プライバシーポリシー<img src="./img/title02.png" alt="カテゴリ飾り"
                        class="component__title--img">
                </h2>
            </div>

            <!-- パンくず -->
            <div class="breadcrumb__wrap">

                <p class="breadcrumb__txt"><a href="./PageControlFront?pg_id=101">Top</a>/プライバシーポリシー</p>

            </div>
        </div>
        <section class="privacy__wrap">
            <h3 class="privacy__title">個人情報の取り扱いについて</h3>
            <div class="privacy--txt">
                <p>本プライバシーポリシーは、あわみやげ（https://awamiyage.jp）（以下、「当サイト」とします。）の各種サービス（当サイトによる情報提供、各種お問合せの受付等）において、当サイトの訪問者（以下、「訪問者」とします。）の個人情報もしくはそれに準ずる情報を取り扱う際に、当サイトが遵守する方針を示したものです。
                </p>
            </div>
            <div class="privacy--txt">
                <ul>
                    <li>
                        <dl>
                            <dt class="privacy--point">個人情報の利用目的</dt>
                            <dd>当サイトでは、メールでのお問い合わせの際に、名前、メールアドレス等の個人情報をご登録いただく場合がございます。</dd>
                            <dd>これらの個人情報は質問に対する回答や必要な情報を電子メールなどをでご連絡する場合に利用させていただくものであり、個人情報をご提供いただく際の目的以外では利用いたしません。
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="privacy--point">個人情報の取り扱いについて</dt>
                            <dd>当サイトでは、個人情報は適切に管理し、以下に該当する場合を除いて第三者に開示することはありません。
                                <ul>
                                    <li class="privacy--point">本人のご了解がある場合</li>
                                    <li class="privacy--point">法令等への協力のため、開示が必要となる場合</li>
                                </ul>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="privacy--point">Cookieによる個人情報の取得</dt>
                            <dd>当サイトは、訪問者のコンピュータにCookieを送信することがあります。</dd>
                            <dd>Cookie（クッキー）とは、ウェブサイトを利用したときに、ブラウザとサーバーとの間で送受信した利用履歴や入力内容などを、訪問者のコンピュータにファイルとして保存しておく仕組みです。
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="privacy--point">免責事項</dt>
                            <dd>当サイトからリンクやバナーなどによって他のサイトに移動された場合、移動先サイトで提供される情報、サービス等について一切の責任を負いません。</dd>
                            <dd>当サイトのコンテンツ・情報につきまして、可能な限り正確な情報を掲載するよう努めて参ります。</dd>
                            <dd>当サイトで掲載している画像の著作権・肖像権等は各権利所有者に帰属致します。権利を侵害する目的ではございません。記事の内容や掲載画像等に問題がございましたら、各権利所有者様本人が直接メールでご連絡下さい。確認後、対応させて頂きます。
                            </dd>
                            <dd>当サイトに掲載された内容によって生じた損害等の一切の責任を負いかねますのでご了承ください。</dd>
                        </dl>
                    </li>
                    <li>
                        <dl>
                            <dt class="privacy--point">プライバシーポリシーの変更について</dt>
                            <dd>当サイトは、個人情報に関して適用される日本の法令を遵守するとともに、本ポリシーの内容を適宜見直しその改善に努めます。修正された最新のプライバシーポリシーは常に本ページにて開示されます。
                            </dd>
                        </dl>
                    </li>
                </ul>
            </div>

        </section>

        <div class="component__btn--box">
            <a href="./PageControlFront?pg_id=101" class="component__btn--home">ホームに戻る</a>
        </div>
    </article>


</div>

<%@ include file="../template/footer_front.jsp" %>