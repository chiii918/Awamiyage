package websys2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import websys2.bean.Categorys;

public class CategorysDAO {

	/* すべてのカテゴリ情報を取得するメソッド */
	public List<Categorys> categorys() {
		//検索結果を保持するリストのインスタンスを生成する
		List<Categorys> list = new ArrayList();

		try {

			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT categorys_id, categorys_name FROM categorys ORDER BY categorys_id ASC;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				//Product Beanのインスタンスを生成する
				Categorys c = new Categorys();

				//productのデータを取得
				c.setCategorys_id(rs.getInt("categorys_id"));
				c.setCategorys_name(rs.getString("categorys_name"));;

				//セッティング済のBeanをリストに追加する
				list.add(c);
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



	/* すべてのサブカテゴリ情報を取得するメソッド */
	public List<Categorys> subcategorys() {
		//検索結果を保持するリストのインスタンスを生成する
		List<Categorys> list = new ArrayList();

		try {

			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT subcategorys_id, subcategorys_name, categorys_id FROM subcategorys ORDER BY categorys_id ASC;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				//Product Beanのインスタンスを生成する
				Categorys s = new Categorys();

				//subcategorysのデータを取得
				s.setSubcategorys_id(rs.getInt("subcategorys_id"));
				s.setSubcategorys_name(rs.getString("subcategorys_name"));
				s.setSub_categorys_id(rs.getInt("categorys_id"));

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



	/* 市町村を取得するメソッド */
	public List<Categorys> citys() {
		//検索結果を保持するリストのインスタンスを生成する
		List<Categorys> list = new ArrayList();

		try {

			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT citys_id, citys_name FROM citys ORDER BY citys_id ASC;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				//Product Beanのインスタンスを生成する
				Categorys s = new Categorys();

				//productのデータを取得
				s.setCitys_id(rs.getInt("citys_id"));
				s.setCitys_name(rs.getString("citys_name"));

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

}
