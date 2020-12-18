<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
	<div class="keyvisual__template">
		<!-- 下層トップ画像 -->
		<div class="keyvisual__wrap--img">

			<img src="./img/area_kb01.jpg" alt="下層キービジュアル" class="keyvisual__sub--img">

		</div>


		<!-- 下層カテゴリテキスト -->
		<div class="component__wrap">
			<h2 class="component__title">
				<img src="./img/title02.png" alt="カテゴリ飾り" class="component__title--img">エリアで探す
			</h2>
		</div>

		<!-- パンくず -->
		<div class="breadcrumb__wrap">
			<p class="breadcrumb__txt">
				<a href="./PageControlFront?pg_id=101">Top</a>/エリアで探す
			</p>
		</div>

	</div>

	<div class="component.txt__wrap">
		<p class="component__txt">
			エリアから商品をお探しいただけます。<br> 訪れる観光地のお土産を探してみてください。
		</p>
	</div>


	<div class="area-all__container">
		<div class="area__heading">
			<p class="area__heading--txt">県東</p>
		</div>

		<div class="area-all__txtbox">
			<p>県庁所在地の徳島市や世界三大潮流の一つでもある「鳴門の渦潮」、世界中の名画約1000点を原寸大で再現し展示する「大塚国際美術館」などの有名な観光スポットがある鳴門市を含む東部エリアは伝統工芸である「阿波藍」や「阿波和紙」にふれられる施設が多いのが特徴です。
				また全国的にも有名な「徳島ラーメン」などのグルメや、「鳴門鯛」、「鳴門わかめ」、「なると金時」などのブランド食材も充実しています。</p>

			<div class="area__link--btn">
				<a href="./PageControlFront?pg_id=107&fr_id=13" class="">県東のページへ</a>
			</div>
		</div>
		<div class="area__heading">
			<p class="area__heading--txt">県西</p>
		</div>
		<div class="area-all__txtbox">
			<p>西部エリアは「にし阿波」とも呼ばれ四国のほぼ中心に位置しており、美馬市、三好市、つるぎ町、東みよし町をエリアとする圏域です。 四国最大級の河川である吉野川の上流に位置し、1000m級の山々がそびえる西部には、吉野川の激流が生んだ渓谷「大歩危・小歩危」、カズラで編み込まれた吊り橋「祖谷のかずら橋」など、自然を満喫できる絶景スポットが集まっています。
				また、標高1955mで西日本で2番目の高さを誇る「剣山」は西部のシンボルともいえます。</p>

			<div class="area__link--btn">
				<a href="./PageControlFront?pg_id=106&fr_id=13" class="">県西のページへ</a>
			</div>
		</div>
		<div class="area__heading">
			<p class="area__heading--txt">県南</p>
		</div>
		<div class="area-all__txtbox">
			<p>四国の右下に位置する県南エリアは阿南市、那賀町、美波町、牟岐町、海陽町をエリアとする圏域です。広大な大海原を眺めることができる四国最東端の「蒲生田岬」や、うみがめの産卵地として知られる「大浜海岸」など、海の魅力を堪能できるスポットが集まっています。大浜海岸には世界的にも珍しいうみがめ専門の博物館「日和佐うみがめ博物館カレッタ」があり、時期を問わずうみがめと出会うことができます。また、シーカヤックやサーフィン、スキューバダイビングなどのマリンスポーツも盛んです。海の幸も豊富に獲れ、アワビ、サザエなどを炭火で豪快に味わう「海賊焼」とよばれるグルメもあります。
			</p>

			<div class="area__link--btn">
				<a href="./PageControlFront?pg_id=108&fr_id=13" class="">県南のページへ</a>
			</div>
		</div>
	</div>

</div>
<div class="component__btn--box">
	<a href="./PageControlFront?pg_id=101" class="component__btn--home">トップページに戻る</a>
</div>





<%@ include file="../template/footer_front.jsp"%>