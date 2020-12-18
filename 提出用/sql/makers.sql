-- -------------------------------------------------------------
-- TablePlus 3.11.0(352)
--
-- https://tableplus.com/
--
-- Database: postgres
-- Generation Time: 2020-12-18 09:37:41.0850
-- -------------------------------------------------------------


DROP TABLE IF EXISTS "public"."makers";
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: indices, triggers. Do not use it as a backup.

-- Sequence and defined type
CREATE SEQUENCE IF NOT EXISTS makers_makers_id_seq;

-- Table Definition
CREATE TABLE "public"."makers" (
    "makers_id" int4 NOT NULL DEFAULT nextval('makers_makers_id_seq'::regclass),
    "makers_name" varchar(50) NOT NULL,
    "makers_address" varchar(150) NOT NULL,
    "makers_tel" varchar(20) NOT NULL,
    "makers_homepage" varchar(100),
    "makers_netshop" varchar(100),
    "shop_name" varchar(50),
    "register_time" timestamp NOT NULL,
    "register_person" varchar(20) NOT NULL,
    "update_time" timestamp,
    "update_person" varchar(20),
    "delete_time" timestamp,
    "delete_person" varchar(20),
    "makers_show" bool NOT NULL,
    PRIMARY KEY ("makers_id")
);

INSERT INTO "public"."makers" ("makers_id", "makers_name", "makers_address", "makers_tel", "makers_homepage", "makers_netshop", "shop_name", "register_time", "register_person", "update_time", "update_person", "delete_time", "delete_person", "makers_show") VALUES
('1', '株式会社　ハレルヤ', '徳島県板野郡松茂町広島字北川向四ノ越30', '088-699-7611', 'http://www.hallelujah.co.jp/', 'http://www.hallelujah-sweets.com/okaimono/', 'ハレルヤスイーツキッチン　松茂本店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('2', '有限会社 日乃出本店', '徳島県美馬市穴吹町穴吹字岩手24-7', '0883-52-1061', 'https://www.budoumanju.com/', 'https://www.budoumanju.com/', '有限会社 日乃出本店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('3', '株式会社イルローザ', '徳島県徳島市南沖洲5-6-20', '088-664-1882', 'https://www.ilrosa.co.jp/', 'http://shop.ilrosa.jp', '南沖洲工房店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('4', 'あづまや製菓有限会社', '徳島県美馬郡つるぎ町貞光字町40番地', '0883-62-2105', 'http://kinrobai.com/', '', 'あづまや製菓', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('5', '(有)竹内製菓', '徳島県徳島市八万町大野141-1', '088-660-7228', 'https://takeuchiseika-bouuiro.com/', '', '大野橋店　国府店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('6', '岡田製糖所', '徳島県板野郡上板町泉谷', '088-694-2020', 'http://www.wasanbon.co.jp/', 'http://www.wasanbon.co.jp/shop/', '岡田糖源郷', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('7', '服部製糖所', '徳島県阿波市吉野町西条東姥御前270', '088-696-5270', 'https://awawasanbon.com/', 'https://awawasanbon.theshop.jp/', 'わんさんぼん', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('8', '小男鹿本舗富士屋本店', '徳島県徳島市南二軒屋町一丁目', '088-623-1118', 'http://www.saoshika.co.jp/', '', '二軒屋本店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('9', '風土菓 岡萬本舗', '徳島県名西郡石井町石井字石井444-2', '0120-02-0038', 'https://okaman-group.com/', 'https://okaman.stores.jp/', '石井本店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('10', '株式会社 なかのファーム', '徳島県板野郡北島町高房字百居内40番地13 北島町水辺交流プラザ✕', '088-698-5279', 'http://nakano-farm.info/index.html', 'https://nakano-farm.stores.jp/', 'なかのファーム', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('11', '株式会社にしきおり', '徳島県鳴門市瀬戸町中島田東山９', '088-661-5566', 'http://www.frenchmonstar.com', 'https://frenchmonstar.stores.jp/', 'フレンチモンスター 瀬戸内フードアート', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('12', '有限会社鳳月坊', '徳島県鳴門市撫養町小桑島字前浜84番地', '088-685-6101', 'http://hohgetsubo.jp/', 'http://hohgetsubo.jp/order/narutokko.html', '鳳月坊', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('13', 'ことらや', '徳島県鳴門市撫養町黒崎字松島234', '088-685-1265', 'http://kotoraya.jp/', '', 'ことらや', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 'f'),
('14', '元祖大判焼 あたりや', '徳島県徳島市元町1-24 アミコビル 1F', '088-652-9761', '', '', '元祖 大判焼 あたりや', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 'f'),
('15', '津久司蒲鉾有限会社', '徳島県小松島市南小松島町2-34', '0885-33-2345', 'http://www.tsukushikamaboko.com/', 'http://tsukushikamabok.shop-pro.jp/', '津久司蒲鉾', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('16', '（有）谷ちくわ商店', '徳島県小松島市横須町3-59号', '0885-32-0867', 'http://www.tanishouten.co.jp/', '', '有限会社 谷ちくわ商店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('17', ' 大野海苔株式会社', '徳島県徳島市東沖洲2丁目24', '0120-155-807', 'https://www.oononori.co.jp/', 'https://www.oononori.co.jp/', '（有）谷ちくわ商店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('18', '株式会社　柚りっ子', '徳島県徳島市住吉１丁目９−３４', '088-678-3383', 'https://yuzurikko.co.jp/', '', '柚りっ子 徳島住吉店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('19', '八百秀商事株式会社', '徳島県徳島市新町橋1丁目32番地', '088-623-0111', 'https://www.yaohide.com/', 'https://www.yaohide.com/', '八百秀商事株式会社', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('20', '徳島製粉株式会社', '徳島県徳島市南二軒屋町3丁目1-8', '088-622-9186', 'http://www.kinchan.co.jp/', '', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('21', '半田製麺株式会社', '徳島県美馬郡つるぎ町半田字小野135', '0883-64-2025', 'https://handa-soumen.com/', '', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('22', '有限会社 竹田製粉製麺工場', '徳島県美馬郡つるぎ町半田字天皇144-1', '0883-64-2020', 'http://takedasomen.com/', 'https://www.rakuten.co.jp/takedasomen/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('23', '菓舗ふくおか', '徳島県鳴門市撫養町南浜字蛭子前東86', '088-686-2626', 'http://www.kaho-fukuoka.co.jp/', '', '菓舗ふくおか', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 'f'),
('24', '株式会社山のせ', '徳島県名西郡石井町石井字石井673-12', '088-674-6655', 'https://www.yamanoce.co.jp/', 'https://www.rakuten.ne.jp/gold/yamanoceps/', '山のせ石井本店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('25', '岡本製麺', '徳島県板野郡板野町中久保字当部46', '088-672-1117', 'http://okamotoseimen.co.jp/', 'https://www.rakuten.co.jp/okamotoseimen/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('26', '徳島の雑穀屋 ミレット', '徳島県徳島市東沖洲２丁目２６－１５', '088-664-6100', 'http://millet.shop-pro.jp/', 'http://millet.shop-pro.jp/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('27', '日新酒類株式会社', '徳島県板野郡上板町上六條283番地', '088-694-8166', 'http://www.nissin-shurui.co.jp/', '', ' 阿波の酒蔵　太閤酒造場', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('28', '(株)本家松浦酒造場', '徳島県鳴門市大麻町池谷字柳の本19番地', '0120-221-158', 'https://narutotai.jp/', 'https://www.narutotai-sake.jp/', 'ナルトタイの店 徳島県鳴門市大麻町池谷字柳の本１９', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('29', '大畠酒造', '徳島県吉野川市美郷字峠422', '0883-43-2275', 'https://oobatake.com/', 'http://oobatakesyuzou.cart.fc2.com/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('30', '有限会社斎藤酒造場', '徳島県徳島市佐古七番町7番1号', '088-652-8340', 'https://www.gotensakura.com/', 'https://store.shopping.yahoo.co.jp/gotensakura/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('31', '三芳菊酒造株式会社', '徳島県 三好市 池田町サラダ16613', '0883-72-0053', 'https://miyoshikiku.shop/', 'https://miyoshikiku.shop-pro.jp/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('32', '株式会社サンマック', '徳島県徳島市川内町平石若宮187番地', '088-635-0315', 'https://www.tokushima-coffee.co.jp/', 'https://www.tokushima-coffee.co.jp/asp/newscat.asp?nc_id', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('33', '芳水酒造有限会社', '徳島県三好市井川町辻231-2', '0883-78-2014', 'http://www.housui.com/', 'http://housui.shop-pro.jp/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('34', '株式会社丸本', '徳島県海部郡海陽町大井字大谷41', '0120-60-3248', 'https://www.malmoto.co.jp/', 'https://www.malmoto.co.jp/onlineshop/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('35', ' 仲野産業株式会社', '徳島県鳴門市大津町段関字東19番地', ' 088-686-2373', 'https://www.ren-maru.com/', 'https://www.ren-maru.com/', 'れんまるCafé', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('36', '野田ハニー食品工業 株式会社', '徳島県吉野川市鴨島町内原144', '0120-24-8382', 'https://www.nodahoney.com/', 'https://www.nodahoney.com/', 'ハニーショップ　すだちの館本店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('37', '"yoko''s jam tea"', '徳島県徳島市佐古8番町3-20 野村ビル1Ｆ', '090-4975-0379', 'http://yokosjamtea.net/', '', '"yoko''s jam tea"', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('38', '徳長梅酒製造所', '徳島県吉野川市美郷字峠151-1', '0883-30-0312', 'https://umesyu.thebase.in', 'https://umesyu.thebase.in/', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('39', '(有)あずまや', '徳島県鳴門市撫養町字大桑島中ノ組93-3', '088-685-4666', 'https://naruto-kintsuba.jp/', 'https://naruto-kintsuba.stores.jp/', '(有)あずまや', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('40', '有限会社ニコニコヤみやげ店', '徳島県徳島市元町1丁目5番地1', '088-623-2421', 'http://www.nikonikoyamiyageten.com/', '', 'おみやげ徳島あいぐら 名店街店（本店）', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('41', '株式会社　東大', '', '', 'http://ramen-todai.com/', '', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 'f'),
('42', 'SATORU HAYAMI inc.', '徳島県鳴門市鳴門町高島字高島194', '0886-23-1525', 'https://satorun.net/', 'https://satorun.net/order/', '堂の浦 鳴門本店', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 'f'),
('43', '岡本中華', '徳島県小松島市中田町奥林60-1', '0885-32-0653', 'http://www.okamoto1951.jp/', '', '', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 'f'),
('45', '徳島市農業協同組合', '徳島県徳島市万代町5丁目71-11', '088-622-6335', 'https://ja-tcc.or.jp/', '', 'なっとく市場', '2020-12-14 00:00:00', 'Admin', NULL, '', NULL, NULL, 't'),
('46', 'テスト', '阿南市', '123-456-7891', NULL, NULL, NULL, '2020-12-16 15:08:02.638', 'testuser', '2020-12-16 15:08:11.309', 'testuser', '2020-12-16 15:08:17.121', 'testuser', 't');
