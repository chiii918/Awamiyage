package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Products;

public class ProductsDAO {
	/* Productsテーブルに商品を追加する */
	public int insert(Products products) {
		int id = 0;			//処理件数、0＝異常

		//データベースに接続、読み込み、出力
		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return id;

			//自動的コミットを無効させる
			conn.setAutoCommit(false);

			//Insert時のid重複エラーに対する対処
			Statement stmt3 = conn.createStatement();
			String sql3 = "SELECT setval('products_products_id_seq', (SELECT MAX(products_id) FROM products));";
			stmt3.executeQuery(sql3);

			//SELECT文を準備
			String sql = "";
			sql += "INSERT INTO products ";
			sql += "( products_name, products_price, products_quantity, products_quantityunit, products_materials, "
					+ "products_deadline, products_save, products_capacity, products_capacityunit, makers_id, "
					+ "categorys_id, subcategorys_id, citys_id, products_taste, products_scene, "
					+ "products_star, products_text, products_local, products_recommend, register_time, "
					+ "register_person, products_show, products_description, products_pricerange ) ";
			sql += "VALUES( ?, ?, ?, ?, ?, "
					+ "?, ?, ?, ?, ?,"
					+ "?, ?, ?, ?, ?,"
					+ "?, ?, ?, ?, ?,"
					+ "?, ?, ?, ?)";
			sql += "RETURNING products_id;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダに値をセットする
			pStmt.setString(1,products.getProducts_name());
			pStmt.setString(2,products.getProducts_price());
			pStmt.setString(3,products.getProducts_quantity());
			pStmt.setString(4,products.getProducts_quantityunit());
			pStmt.setString(5,products.getProducts_materials());

			pStmt.setString(6,products.getProducts_deadline());
			pStmt.setInt(7,products.getProducts_save());
			pStmt.setString(8,products.getProducts_capacity());
			pStmt.setString(9,products.getProducts_capacityunit());
			pStmt.setInt(10,products.getMakers_id());

			pStmt.setInt(11,products.getCategorys_id());
			pStmt.setInt(12,products.getSubcategorys_id());
			pStmt.setInt(13,products.getCitys_id());
			pStmt.setInt(14,products.getProducts_taste());
			pStmt.setInt(15,products.getProducts_scene());

			pStmt.setFloat(16,products.getProducts_star());
			pStmt.setString(17,products.getProducts_text());
			pStmt.setBoolean(18,products.isProducts_local());
			pStmt.setBoolean(19,products.isProducts_recommend());
			pStmt.setTimestamp(20,products.getRegister_time());

			pStmt.setString(21,products.getRegister_person());
			pStmt.setBoolean(22,products.isProducts_show());
			pStmt.setString(23,products.getProducts_description());
			pStmt.setInt(24,products.getProducts_pricerange());

			System.out.println(pStmt);

			//仮でSQL文（INSERT）を実行する
			ResultSet rs = pStmt.executeQuery();
			while(rs.next()){
				id = rs.getInt("products_id");
			}

			System.out.println("insert_id:" + id);

			//画面に出力
			if (id!=0) {
				conn.commit();		//コミットする
				System.out.println("商品を追加しました");
			}else {
				conn.rollback();	//ロールバック
				System.out.println("商品の登録に失敗しました");
			}

			pStmt.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("商品の追加にエラー発生しました");
		}

		return id;
	}



	/* 商品情報を更新する */
	public int update(Products products) {
		int count = 0;			//処理件数、0＝異常

		//データベースに接続、読み込み、出力
		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return count;

			//自動的コミットを無効させる
			conn.setAutoCommit(false);

			//SELECT文を準備
			String sql = "";
			sql += "UPDATE products SET ";
			sql += "products_name = ?, ";
			sql += "products_price = ?, ";
			sql += "products_quantity = ?, ";
			sql += "products_quantityunit = ?, ";
			sql += "products_materials = ?, ";

			sql += "products_deadline = ?, ";
			sql += "products_save = ?, ";
			sql += "products_capacity = ?, ";
			sql += "products_capacityunit = ?, ";
			sql += "makers_id = ?, ";

			sql += "categorys_id = ?, ";
			sql += "subcategorys_id = ?, ";
			sql += "citys_id = ?, ";
			sql += "products_taste = ?, ";
			sql += "products_scene = ?, ";

			sql += "products_star = ?, ";
			sql += "products_text = ?, ";
			sql += "products_eyecatch = ?, ";
			sql += "products_photo2 = ?, ";
			sql += "products_photo3 = ?, ";

			sql += "products_local = ?, ";
			sql += "products_recommend = ?, ";
			sql += "update_time = ?, ";
			sql += "update_person = ?, ";
			sql += "products_show = ?, ";

			sql += "products_description = ?, ";
			sql += "products_pricerange = ? ";
			sql += "WHERE products_id = ? ";

			System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダに値をセットする
			pStmt.setString(1,products.getProducts_name());
			pStmt.setString(2,products.getProducts_price());
			pStmt.setString(3,products.getProducts_quantity());
			pStmt.setString(4,products.getProducts_quantityunit());
			pStmt.setString(5,products.getProducts_materials());

			pStmt.setString(6,products.getProducts_deadline());
			pStmt.setInt(7,products.getProducts_save());
			pStmt.setString(8,products.getProducts_capacity());
			pStmt.setString(9,products.getProducts_capacityunit());
			pStmt.setInt(10,products.getMakers_id());

			pStmt.setInt(11,products.getCategorys_id());
			pStmt.setInt(12,products.getSubcategorys_id());
			pStmt.setInt(13,products.getCitys_id());
			pStmt.setInt(14,products.getProducts_taste());
			pStmt.setInt(15,products.getProducts_scene());

			pStmt.setFloat(16,products.getProducts_star());
			pStmt.setString(17,products.getProducts_text());
			pStmt.setString(18,products.getProducts_eyecatch());
			pStmt.setString(19,products.getProducts_photo2());
			pStmt.setString(20,products.getProducts_photo3());

			pStmt.setBoolean(21,products.isProducts_local());
			pStmt.setBoolean(22,products.isProducts_recommend());
			pStmt.setTimestamp(23,products.getUpdate_time());
			pStmt.setString(24,products.getUpdate_person());
			pStmt.setBoolean(25,products.isProducts_show());

			pStmt.setString(26,products.getProducts_description());
			pStmt.setInt(27,products.getProducts_pricerange());
			pStmt.setInt(28,products.getProducts_id());

			System.out.println(pStmt);

			//仮でSQL文を実行する
			count = pStmt.executeUpdate();

			System.out.println("count:" + count);

			//画面に出力
			if (count==1) {
				conn.commit();		//コミットする
				System.out.println(count + "つの商品を更新しました");
			}else {
				conn.rollback();	//ロールバック
				System.out.println("商品情報の更新に失敗しました");
			}

			pStmt.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("商品情報の更新時にエラーが発生しました");
		}

		return count;
	}



	/* 商品情報を削除する */
	public int delete(Products products) {
		int count = 0;			//処理件数、0＝異常

		//データベースに接続、読み込み、出力
		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return count;

			//自動的コミットを無効させる
			conn.setAutoCommit(false);

			//SELECT文を準備
			String sql = "";
			sql += "UPDATE products SET ";
			sql += "delete_time = ?, ";
			sql += "delete_person = ? ";
			sql += "WHERE products_id = ? ";

			System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダにpriceをセットする
			pStmt.setTimestamp(1,products.getDelete_time());
			pStmt.setString(2,products.getDelete_person());
			pStmt.setInt(3,products.getProducts_id());

			System.out.println(pStmt);

			//仮でSQL文を実行する
			count = pStmt.executeUpdate();

			System.out.println("count:" + count);

			//画面に出力
			if (count==1) {
				conn.commit();		//コミットする
				System.out.println(count + "社のメーカーを削除しました");
			}else {
				conn.rollback();	//ロールバック
				System.out.println("メーカー情報の削除に失敗しました");
			}

			pStmt.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("メーカー情報の削除時にエラーが発生しました");
		}

		return count;
	}



	/* すべての商品情報を取得するメソッド */
	public List<Products> list() {
		//検索結果を保持するリストのインスタンスを生成する
		List<Products> list = new ArrayList();
		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備「削除日時と削除者がnull（未登録）のidと商品名を表示」
			//→削除ボタンが押されているものは「削除日時」と「削除者名」が入っているはず（DB上にデータとしては残している）
			String sql = "SELECT products_id, products_name FROM products WHERE delete_time IS NULL OR delete_person IS NULL ORDER BY products_id DESC";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				//Product Beanのインスタンスを生成する
				Products p = new Products();

				//productのデータを取得
				p.setProducts_id(rs.getInt("products_id"));			//Id
				p.setProducts_name(rs.getString("products_name"));

				//セッティング済のBeanをリストに追加する
				list.add(p);
			}

			pStmt.close();
			rs.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		//検索結果を集めているlistを呼び出す先に返す
		return list;
	}



	/* 商品情報を取得するメソッド */
	public Products detail(int pd_id) {
		//検索結果を保持するリストのインスタンスを生成する
		Products p = new Products();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql =
					"SELECT " +
					"products_id" +
					",products_name" +
					",products_price" +
					",products_quantity" +
					",products_quantityunit" +
					",products_materials" +
					",products_deadline" +
					",products_save" +
					",products_capacity" +
					",products_capacityunit" +
					",products.makers_id" +
					",products.categorys_id" +
					",products.subcategorys_id" +
					",products.citys_id" +
					",products_taste" +
					",products_scene" +
					",products_star" +
					",products_text" +
					",products_eyecatch" +
					",products_photo2" +
					",products_photo3" +
					",products_local" +
					",products_recommend" +
					",products.register_time" +
					",products.register_person" +
					",products.update_time" +
					",products.update_person" +
					",products.delete_time" +
					",products.delete_person" +
					",products_show" +
					",products_description" +
					",products_pricerange" +

					",makers_name" +
					",makers_homepage" +
					",shop_name" +
					",makers_netshop" +
					",categorys_name" +
					",subcategorys_name " +
					",citys_name " +
					"FROM products " +
					"INNER JOIN makers ON products.makers_id = makers.makers_id " +
					"INNER JOIN categorys ON products.categorys_id = categorys.categorys_id " +
					"INNER JOIN subcategorys ON products.categorys_id = subcategorys.categorys_id " +
					"INNER JOIN citys ON products.citys_id = citys.citys_id " +
					"WHERE products.products_id = ?";

//			System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダに値をセットする
			pStmt.setInt(1,pd_id);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();
//			System.out.println("rs "+rs);

			//productのデータを取得
			while(rs.next()) {
				p.setProducts_id(rs.getInt("products_id"));
				p.setProducts_name(rs.getString("products_name"));
				p.setProducts_price(rs.getString("products_price"));
				p.setProducts_quantity(rs.getString("products_quantity"));
				p.setProducts_quantityunit(rs.getString("products_quantityunit"));
				p.setProducts_materials(rs.getString("products_materials"));
				p.setProducts_deadline(rs.getString("products_deadline"));
				p.setProducts_save(rs.getInt("products_save"));
				p.setProducts_capacity(rs.getString("products_capacity"));
				p.setProducts_capacityunit(rs.getString("products_capacityunit"));
				p.setMakers_id(rs.getInt("makers_id"));
				p.setCategorys_id(rs.getInt("categorys_id"));
				p.setSubcategorys_id(rs.getInt("subcategorys_id"));
				p.setCitys_id(rs.getInt("citys_id"));
				p.setProducts_taste(rs.getInt("products_taste"));
				p.setProducts_scene(rs.getInt("products_scene"));
				p.setProducts_star(rs.getFloat("products_star"));
				p.setProducts_text(rs.getString("products_text"));
				p.setProducts_eyecatch(rs.getString("products_eyecatch"));
				p.setProducts_photo2(rs.getString("products_photo2"));
				p.setProducts_photo3(rs.getString("products_photo3"));
				p.setProducts_local(rs.getBoolean("products_local"));
				p.setProducts_recommend(rs.getBoolean("products_recommend"));
				p.setRegister_time(rs.getTimestamp("register_time"));
				p.setRegister_person(rs.getString("register_person"));
				p.setUpdate_time(rs.getTimestamp("update_time"));
				p.setUpdate_person(rs.getString("update_person"));
				p.setDelete_time(rs.getTimestamp("delete_time"));
				p.setDelete_person(rs.getString("delete_person"));
				p.setProducts_show(rs.getBoolean("products_show"));
				p.setProducts_description(rs.getString("products_description"));
				p.setProducts_pricerange(rs.getInt("products_pricerange"));

				p.setMakers_name(rs.getString("makers_name"));
				p.setMakers_homepage(rs.getString("makers_homepage"));
				p.setShop_name(rs.getString("shop_name"));
				p.setMakers_netshop(rs.getString("makers_netshop"));
				p.setCategorys_name(rs.getString("categorys_name"));
				p.setSubcategorys_name(rs.getString("subcategorys_name"));
				p.setCitys_name(rs.getString("citys_name"));

			}
			pStmt.close();
			rs.close();

			//データベースの接続から切断する
			//DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		//検索結果を集めているlistを呼び出す先に返す
		return p;
	}



	//productdetail関連商品
	/* カテゴリ別 */
	public List<Products> relation(int pd_id) {

		List<Products> list = new ArrayList();
		int category_id = 0;

		try {
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//任意のpd_id情報を取得
			String sql1 = "SELECT * FROM products WHERE products_id = ? ";

			PreparedStatement pStmt = conn.prepareStatement(sql1);
			pStmt.setInt(1,pd_id);
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				Products p = new Products();
				category_id = rs.getInt("categorys_id");
			}

			//任意の商品が持つcategoryidと同じ商品を検索
			String sql2 = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products.categorys_id = ? "
					+ "ORDER BY RANDOM() limit 4;";

			pStmt = conn.prepareStatement(sql2);
			pStmt.setInt(1, category_id);
			rs = pStmt.executeQuery();

			while (rs.next()) {
				Products p = new Products();

				p.setProducts_id(rs.getInt("products_id"));
				p.setProducts_name(rs.getString("products_name"));
				p.setCategorys_name(rs.getString("categorys_name"));
				p.setProducts_taste(rs.getInt("products_taste"));
				p.setProducts_eyecatch(rs.getString("products_eyecatch"));
				p.setProducts_show(rs.getBoolean("products_show"));

				list.add(p);
			}

			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}



	/* 商品評価 */
	public int star(int pd_id, float input_star) {
		int count = 0;			//処理件数、0＝異常
		float pro_star = 0;			//元々商品が所持していたstar
		float star = 0;			//計算後のstar

		//データベースに接続、読み込み、出力
		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return count;

			//自動的コミットを無効させる
			conn.setAutoCommit(false);

			//任意のpd_idが所持していたstarを取得
			String sql1 = "SELECT products_star FROM products WHERE products_id = ? ";

			PreparedStatement pStmt = conn.prepareStatement(sql1);
			pStmt.setInt(1,pd_id);
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				Products p = new Products();
				pro_star = rs.getFloat("products_star");
			}

			//評価計算
			star = (pro_star + input_star)/2;
			star = ((float)Math.round(star * 10))/10;	//小数点第2位で四捨五入

			//UPDATE文を準備
			String sql2 = "UPDATE products SET products_star = ? "
					+ "WHERE products_id = ? ";

			pStmt = conn.prepareStatement(sql2);
			pStmt.setFloat(1, star);
			pStmt.setInt(2, pd_id);

			//仮でSQL文を実行する
			count = pStmt.executeUpdate();

			System.out.println("count:" + count);

			//画面に出力
			if (count==1) {
				conn.commit();		//コミットする
				System.out.println(count + "つの商品を更新しました");
			}else {
				conn.rollback();	//ロールバック
				System.out.println("商品情報の更新に失敗しました");
			}

			pStmt.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("商品情報の更新時にエラーが発生しました");
		}

		return count;
	}


}
