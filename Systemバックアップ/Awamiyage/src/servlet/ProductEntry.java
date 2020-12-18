package servlet;

import java.io.File;
import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import bean.Products;
import dao.ProductsDAO;


/**
 * Servlet implementation class Insert
 */
@MultipartConfig(location="/tmp", maxFileSize=1048576)
@WebServlet("/ProductEntry")
public class ProductEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductEntry() {
		super();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションを取得
		HttpSession session = request.getSession();

		//ログイン状態の確認、
		//ログイン状態でなければ、ログイン画面に移動
		LoginCheck.isLogin(session, request, response);

		int id = 0;		//登録された商品ID

		//入力データを取得する
		//商品名
		String products_name = "";
		if ((request.getParameter("products_name")!=null)){
			products_name = request.getParameter("products_name");
		}
		//商品説明
		String products_description = "";
		if ((request.getParameter("products_description")!=null)){
			products_description = request.getParameter("products_description");
		}
		//商品価格＆価格帯
		String products_price = "";
		int products_pricerange = 0;
		if ((request.getParameter("products_price")!=null)){
			products_price = request.getParameter("products_price");

			int range = Integer.parseInt(request.getParameter("products_price"));
			if(range<=500) {
				products_pricerange = 1;
			}else if(range<=1000) {
				products_pricerange = 2;
			}else if(range<=1500) {
				products_pricerange = 3;
			}else if(range<=2000) {
				products_pricerange = 4;
			}else if(range>=2001) {
				products_pricerange = 5;
			}
		}
		//入数
		String products_quantity = "";
		if ((request.getParameter("products_quantity")!=null)){
			products_quantity = request.getParameter("products_quantity");
		}
		//入数単位
		String products_quantityunit = "";
		if ((request.getParameter("products_quantityunit")!=null)){
			products_quantityunit = request.getParameter("products_quantityunit");
		}
		//原材料
		String products_materials = "";
		if ((request.getParameter("products_materials")!=null)){
			products_materials = request.getParameter("products_materials");
		}
		//賞味期限
		String products_deadline = "";
		if ((request.getParameter("products_deadline")!=null)){
			products_deadline = request.getParameter("products_deadline");
		}
		//保存方法
		int products_save = 0;
		if ((request.getParameter("products_save")!=null)){
			products_save = Integer.parseInt(request.getParameter("products_save"));
		}
		//内容量
		String products_capacity = "";
		if ((request.getParameter("products_capacity")!=null)){
			products_capacity = request.getParameter("products_capacity");
		}
		//内容量単位
		String products_capacityunit = "";
		if ((request.getParameter("products_capacityunit")!=null)){
			products_capacityunit = request.getParameter("products_capacityunit");
		}
		//メーカー
		int makers_id = 0;
		if ((request.getParameter("makers_id")!=null)){
			makers_id = Integer.parseInt(request.getParameter("makers_id"));
		}
		//カテゴリ
		int categorys_id = 0;
		if ((request.getParameter("categorys_id")!=null)){
			categorys_id = Integer.parseInt(request.getParameter("categorys_id"));
		}
		//サブカテゴリ
		int subcategorys_id = 0;
		if ((request.getParameter("subcategorys_id")!=null)){
			subcategorys_id = Integer.parseInt(request.getParameter("subcategorys_id"));
		}
		//エリア（市町村）
		int citys_id = 0;
		if ((request.getParameter("citys_id")!=null)){
			citys_id = Integer.parseInt(request.getParameter("citys_id"));
		}
		//味
		int products_taste = 0;
		if ((request.getParameter("products_taste")!=null)){
			products_taste = Integer.parseInt(request.getParameter("products_taste"));
		}
		//シーン
		int products_scene = 0;
		if ((request.getParameter("products_scene")!=null)){
			products_scene = Integer.parseInt(request.getParameter("products_taste"));
		}
		//評価
		float products_star = 0;
		if ((request.getParameter("products_star")!=null)){
			products_star = Float.parseFloat(request.getParameter("products_star"));
		}
		//商品説明
		String products_text = "";
		if ((request.getParameter("products_text")!=null)){
			products_text = request.getParameter("products_text");
		}
		//商品写真2
		String products_photo2 = "";
		if ((request.getParameter("products_photo2")!=null)){
			products_photo2 = request.getParameter("products_photo2");
		}
		//商品写真3
		String products_photo3 = "";
		if ((request.getParameter("products_photo3")!=null)){
			products_photo3 = request.getParameter("products_photo3");
		}
		//名産品
		boolean products_local = true;
		if ((request.getParameter("products_local")!=null)){
			String bool = request.getParameter("products_local");
			products_local = Boolean.valueOf(bool);
		}
		//推しみやげ
		boolean products_recommend = true;
		if ((request.getParameter("products_recommend")!=null)){
			String bool = request.getParameter("products_recommend");
			products_recommend = Boolean.valueOf(bool);
		}
		//表示/非表示
		boolean products_show = true;
		if ((request.getParameter("products_show")!=null)){
			String bool = request.getParameter("products_show");
			products_show = Boolean.valueOf(bool);
		}

		//アイキャッチの登録確認
		int photo_check = 0;
		if (request.getParameter("photo_check")!=""){
			photo_check = Integer.parseInt(request.getParameter("photo_check"));
		}
		System.out.println("photocheck: " + photo_check);

		//入力時に自動で取得
		//入力時刻
		//協定世界時のUTC 1970年1月1日深夜零時との差をミリ秒で取得
		long millis = System.currentTimeMillis();
		//ミリ秒を引数としてTimestampオブジェクトを作成
		Timestamp register_time = new Timestamp(millis);

		//入力ユーザー
		String register_person = "testuser";

		//Products Beanのオブジェクトを生成する
		Products products = new Products();

		//Beanインスタンスに値を代入する
		products.setProducts_name(products_name);
		products.setProducts_description(products_description);
		products.setProducts_price(products_price);
		products.setProducts_pricerange(products_pricerange);
		products.setProducts_quantity(products_quantity);
		products.setProducts_quantityunit(products_quantityunit);
		products.setProducts_materials(products_materials);
		products.setProducts_deadline(products_deadline);
		products.setProducts_save(products_save);
		products.setProducts_capacity(products_capacity);
		products.setProducts_capacityunit(products_capacityunit);
		products.setMakers_id(makers_id);
		products.setCategorys_id(categorys_id);
		products.setSubcategorys_id(subcategorys_id);
		products.setCitys_id(citys_id);
		products.setProducts_taste(products_taste);
		products.setProducts_scene(products_scene);
		products.setProducts_star(products_star);
		products.setProducts_text(products_text);
		products.setProducts_photo2(products_photo2);
		products.setProducts_photo3(products_photo3);
		products.setProducts_local(products_local);
		products.setProducts_recommend(products_recommend);
		products.setRegister_time(register_time);
		products.setRegister_person(register_person);
		products.setProducts_show(products_show);

		//データベースに商品を挿入する
		ProductsDAO idao = new ProductsDAO();
		id = idao.insert(products);

		//パスの格納
		String products_eyecatch = "";
		int count = 0;

		//写真追加
		//任意のIDのフォルダ作成
		if(photo_check != 0) {
			//実際に画像を格納するパス
			String dirPath= "/Applications/Eclipse_2019-12.app/Contents/workspace/Awamiyage/Awamiyage/WebContent/img/img_products/" + id;
			//img表示用のパス
			String imgPath= "./img/img_products/" + id;

			//idの名前がついたフォルダを作成
			File folder = new File(dirPath);

			if (folder.mkdir()) {
				System.out.println("フォルダの作成に成功しました");

				//ファイル情報取得
		        Part part1 = request.getPart("products_eyecatch");
		        //元ファイル名の取得
		        String old_name1 = part1.getSubmittedFileName();
		        //拡張子を取得
		        String extension1 = old_name1.substring(old_name1.lastIndexOf("."));

		        //ファイル名の設定
		        String new_name1 = id + "-1" + extension1;
		        //指定パスへ画像の書き出し
		        part1.write(dirPath + "/" + new_name1);

		        //DBへのパス保存（実際の表示用パス）
		        products_eyecatch = imgPath + "/" + new_name1;
//		        System.out.println(products_eyecatch);
				products.setProducts_eyecatch(products_eyecatch);

		        if(photo_check == 2 || photo_check == 3) {
			        Part part2 = request.getPart("products_photo2");
			        String old_name2 = part2.getSubmittedFileName();
			        String extension2 = old_name2.substring(old_name2.lastIndexOf("."));

			        String new_name2 = id + "-2" + extension2;
			        part2.write(dirPath + "/" + new_name2);

			        products_photo2 = imgPath + "/" + new_name2;
			        products.setProducts_photo2(products_photo2);

			        if(photo_check == 3) {
				        Part part3 = request.getPart("products_photo3");
				        String old_name3 = part3.getSubmittedFileName();
				        String extension3 = old_name3.substring(old_name3.lastIndexOf("."));

				        String new_name3 = id + "-3" + extension3;
				        part3.write(dirPath + "/" + new_name3);

				        products_photo3 = imgPath + "/" + new_name3;
				        products.setProducts_photo3(products_photo3);
			        }
		        }

		        //値のセット
		        products.setProducts_id(id);
		        System.out.println("insert_id: " + id);

				count = idao.update(products);

			} else {
				System.out.println("フォルダの作成に失敗しました");
			}
		}else {
			System.out.println("写真が登録されていません");
	        //no-imageのパスを格納する
	        products_eyecatch = "./img/noimage01.jpg";
	        //値のセット
	        products.setProducts_id(id);
			products.setProducts_eyecatch(products_eyecatch);

			count = idao.update(products);
		}

		//画面に出力
		if (id != 0) {
			request.setAttribute("message", "商品が追加されました");
		}else {
			request.setAttribute("message", "商品追加が失敗しました");
		}
		//画面に出力
		if (count != 0) {
			request.setAttribute("message", "商品が完璧に追加されました");
		}else {
			request.setAttribute("message", "商品追加の画像パス登録が失敗しました");
		}

		//商品一覧画面にフォワード
		request.getRequestDispatcher("PageControlBack?pg_id=512").forward(request, response);

	}

}
