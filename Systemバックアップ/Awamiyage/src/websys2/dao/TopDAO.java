package websys2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import websys2.bean.Categorys;
import websys2.bean.Products;

public class TopDAO {

	/* サブカテゴリ（タグ）情報を取得するメソッド */
	public List<Categorys> taglist() {

		List<Categorys> list = new ArrayList();
		try {
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT subcategorys_id, subcategorys_name "
					+ "FROM subcategorys "
					+ "WHERE subcategorys_show = true "
					+ "AND subcategorys_name != 'その他' "
					+ "ORDER BY RANDOM();";

			PreparedStatement pStmt = conn.prepareStatement(sql);
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				Categorys s = new Categorys();

				//productのデータを取得
				s.setSubcategorys_id(rs.getInt("subcategorys_id"));
				s.setSubcategorys_name(rs.getString("subcategorys_name"));

				//セッティング済のBeanをリストに追加する
				list.add(s);
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



	//ランキング
	public List<Products> ranking_list() {
		List<Products> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM products "
					+ "WHERE products_show = true "
					+ "ORDER BY products_star DESC "
					+ "OFFSET 0 LIMIT 5;";

			PreparedStatement pStmt = conn.prepareStatement(sql);

			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				Products p = new Products();

				p.setProducts_id(rs.getInt("products_id"));
				p.setProducts_name(rs.getString("products_name"));
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


}
