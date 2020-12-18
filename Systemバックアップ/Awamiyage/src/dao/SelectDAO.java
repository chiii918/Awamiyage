package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Categorys;
import bean.Products;

public class SelectDAO {
	//全ての商品を表示（ただしランダムに）
	public List<Products> all() {
		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "ORDER BY RANDOM() limit 8";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				Products p = new Products();

				p.setProducts_id(rs.getInt("products_id"));
				p.setProducts_name(rs.getString("products_name"));
				p.setCategorys_name(rs.getString("categorys_name"));
				p.setProducts_taste(rs.getInt("products_taste"));
				p.setProducts_eyecatch(rs.getString("products_eyecatch"));

				list.add(p);
			}

			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}



	/* 味 */
	public List<Products> taste(int ct_id) {
		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products_taste = ? "
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, ct_id);

			ResultSet rs = pStmt.executeQuery();

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


	/* 価格別 */
	public List<Products> price(int ct_id) {

		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products_pricerange = ? "
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1,ct_id);
			ResultSet rs = pStmt.executeQuery();

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



	/* シーン別 */
	public List<Products> scene(int ct_id) {

		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products_scene = ? "
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1,ct_id);
			ResultSet rs = pStmt.executeQuery();

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



	/* カテゴリ別 */
	public List<Products> category(int ct_id) {

		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products.categorys_id = ? "
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1,ct_id);
			ResultSet rs = pStmt.executeQuery();

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


	/* 名産品 */
	public List<Products> local() {

		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products_local = true "
					+ "ORDER BY RANDOM();";

			//			System.out.println(sql);

			PreparedStatement pStmt = conn.prepareStatement(sql);

			ResultSet rs = pStmt.executeQuery();

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



	/* 推しみやげ */
	public List<Products> recommend() {

		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products_recommend = true "
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			ResultSet rs = pStmt.executeQuery();

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



	/* 個数別 */
	public List<Products> quantity(String quantity) {

		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			System.out.println(quantity);

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND (products_quantity LIKE ? "
					+ "OR products_quantity LIKE ? "
					+ "OR products_quantity LIKE ? "
					+ "OR products_quantity = ? )"
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, quantity + ",%");
			pStmt.setString(2, "%," + quantity + ",%");
			pStmt.setString(3, "%," + quantity);
			pStmt.setString(4, quantity);
			ResultSet rs = pStmt.executeQuery();
			System.out.println(pStmt);
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



	//エリア別の商品を表示（ランダム）
	public List<Products> area(int pg_id) {

		//結果格納用リスト
		List<Products> list = new ArrayList<Products>();

		//fr_idからテーブルに格納されているarea_idに変換
		int area = 0;
		if (pg_id==107) {
			//県東
			area = 1;
		}else if(pg_id==108) {
			//県南
			area = 2;
		}else if (pg_id==106) {
			//県西
			area = 3;
		}

		try {
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "INNER JOIN citys ON products.citys_id = citys.citys_id "
					+ "WHERE products_show = true "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND area_id = ? "
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1,area);
			ResultSet rs = pStmt.executeQuery();

			//citys_idごとに商品に関する値を格納
			while (rs.next()) {
				Products p = new Products();

				System.out.println("ID: "+rs.getInt("products_id"));

				p.setProducts_id(rs.getInt("products_id"));
				p.setProducts_name(rs.getString("products_name"));
				p.setCategorys_name(rs.getString("categorys_name"));
				p.setProducts_taste(rs.getInt("products_taste"));
				p.setProducts_eyecatch(rs.getString("products_eyecatch"));
				p.setCitys_id(rs.getInt("citys_id"));

				list.add(p);
			}

			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}


	/* 任意のサブカテゴリに属する商品を取得するメソッド */
	public List<Products> subcategorys(int sc_id) {
		//検索結果を保持するリストのインスタンスを生成する
		List<Products> list = new ArrayList();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT * FROM products "
					+ "INNER JOIN categorys ON products.categorys_id = categorys.categorys_id "
					+ "WHERE subcategorys_id = ? "
					+ "AND delete_time IS NULL AND delete_person IS NULL "
					+ "AND products_show = true "
					+ "ORDER BY RANDOM();";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, sc_id);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				Products p = new Products();

				p.setProducts_id(rs.getInt("products_id"));
				p.setProducts_name(rs.getString("products_name"));
				p.setCategorys_name(rs.getString("categorys_name"));
				p.setProducts_taste(rs.getInt("products_taste"));
				p.setProducts_eyecatch(rs.getString("products_eyecatch"));

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
	public Categorys subcategorys_name(int sc_id) {
		//検索結果を保持するリストのインスタンスを生成する
		Categorys s = new Categorys();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT * FROM subcategorys WHERE subcategorys_id = ?";

			System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setInt(1,sc_id);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			while(rs.next()) {
				s.setSubcategorys_name(rs.getString("subcategorys_name"));
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
		return s;
	}

}
