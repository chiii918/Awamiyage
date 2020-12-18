package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Makers;

public class MakersDAO {
	/* Makersテーブルにメーカーを追加する */
	public int insert(Makers makers) {
		int count = 0;			//処理件数、0＝異常

		//データベースに接続、読み込み、出力
		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return count;

			//自動的コミットを無効させる
			conn.setAutoCommit(false);

			//Insert時のid重複エラーに対する対処
			//executeQueryメソッド（データベースへの問い合わせ）を実行した結果、
			//データベースから何らかの結果が帰ってくる場合には「ResultSet」インターフェースのオブジェクトとして取得可能
			Statement stmt3 = conn.createStatement();
			String sql3 = "SELECT setval('makers_makers_id_seq', (SELECT MAX(makers_id) FROM makers));";
			stmt3.executeQuery(sql3);

			//SELECT文を準備
			String sql = "";
			sql += "INSERT INTO makers ";
			sql += "( makers_name, makers_address, makers_tel, makers_homepage, makers_netshop, "
					+ "shop_name, register_time, register_person, makers_show ) ";
			sql += "VALUES( ?, ?, ?, ?, ?, ?, ?, ?, ? )";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			System.out.println("aaaaa");

			//それぞれのプレースホルダにpriceをセットする
			pStmt.setString(1,makers.getMakers_name());
			pStmt.setString(2,makers.getMakers_address());
			pStmt.setString(3,makers.getMakers_tel());
			pStmt.setString(4,makers.getMakers_homepage());
			pStmt.setString(5,makers.getMakers_netshop());

			pStmt.setString(6,makers.getShop_name());
			pStmt.setTimestamp(7,makers.getRegister_time());
			pStmt.setString(8,makers.getRegister_person());
			pStmt.setBoolean(9,makers.isMakers_show());


			//仮でSQL文を実行する
			count = pStmt.executeUpdate();

			System.out.println("count:" + count);

			//画面に出力
			if (count==1) {
				conn.commit();		//コミットする
				System.out.println(count + "社のメーカーを追加しました");
			}else {
				conn.rollback();	//ロールバック
				System.out.println("メーカーの登録に失敗しました");
			}

			pStmt.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("メーカーの追加時にエラーが発生しました");
		}

		return count;
	}


	/* メーカー情報を更新する */
	public int update(Makers makers) {
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
			sql += "UPDATE makers SET ";

			sql += "makers_name = ?, ";
			sql += "makers_address = ?, ";
			sql += "makers_tel= ?, ";
			sql += "makers_homepage = ?, ";
			sql += "makers_netshop = ?, ";

			sql += "shop_name = ?, ";
			sql += "update_time = ?, ";
			sql += "update_person = ?, ";
			sql += "makers_show = ? ";
			sql += "WHERE makers_id = ? ";

			System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダにpriceをセットする
			pStmt.setString(1,makers.getMakers_name());
			pStmt.setString(2,makers.getMakers_address());
			pStmt.setString(3,makers.getMakers_tel());
			pStmt.setString(4,makers.getMakers_homepage());
			pStmt.setString(5,makers.getMakers_netshop());

			pStmt.setString(6,makers.getShop_name());
			pStmt.setTimestamp(7,makers.getUpdate_time());
			pStmt.setString(8,makers.getUpdate_person());
			pStmt.setBoolean(9,makers.isMakers_show());
			pStmt.setInt(10,makers.getMakers_id());

			//仮でSQL文を実行する
			count = pStmt.executeUpdate();

			System.out.println("count:" + count);

			//画面に出力
			if (count==1) {
				conn.commit();		//コミットする
				System.out.println(count + "社のメーカーを更新しました");
			}else {
				conn.rollback();	//ロールバック
				System.out.println("メーカー情報の更新に失敗しました");
			}

			pStmt.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("メーカー情報の更新時にエラーが発生しました");
		}

		return count;
	}



	/* メーカー情報を削除する */
	public int delete(Makers makers) {
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
			sql += "UPDATE makers SET ";
			sql += "delete_time = ?, ";
			sql += "delete_person = ? ";
			sql += "WHERE makers_id = ? ";

			System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダにpriceをセットする
			pStmt.setTimestamp(1,makers.getDelete_time());
			pStmt.setString(2,makers.getDelete_person());
			pStmt.setInt(3,makers.getMakers_id());

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



	/* すべてのメーカー情報を取得するメソッド */
	public List<Makers> list() {
		//検索結果を保持するリストのインスタンスを生成する
		List<Makers> list = new ArrayList();

		try {

			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備「削除日時と削除者がnull（未登録）のidと社名を表示」
			//→削除ボタンが押されているものは「削除日時」と「削除者名」が入っているはず（DB上にデータとしては残している）
			String sql = "SELECT makers_id, makers_name FROM makers WHERE delete_time IS NULL AND delete_person IS NULL ORDER BY makers_id DESC;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				//Product Beanのインスタンスを生成する
				Makers m = new Makers();

				//productのデータを取得
				m.setMakers_id(rs.getInt("makers_id"));			//Id
				m.setMakers_name(rs.getString("makers_name"));	//name

				//セッティング済のBeanをリストに追加する
				list.add(m);
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
	public Makers detail(int mk_id) {
		//検索結果を保持するリストのインスタンスを生成する
		Makers m = new Makers();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT * FROM makers WHERE makers_id = ?";

			System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			pStmt.setInt(1,mk_id);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//productのデータを取得
			while(rs.next()) {
				m.setMakers_id(rs.getInt("makers_id"));
				m.setMakers_name(rs.getString("makers_name"));
				m.setMakers_address(rs.getString("makers_address"));
				m.setMakers_tel(rs.getString("makers_tel"));
				m.setMakers_homepage(rs.getString("makers_homepage"));
				m.setMakers_netshop(rs.getString("makers_netshop"));
				m.setShop_name(rs.getString("shop_name"));
				m.setRegister_time(rs.getTimestamp("register_time"));
				m.setRegister_person(rs.getString("register_person"));
				m.setUpdate_time(rs.getTimestamp("update_time"));
				m.setUpdate_person(rs.getString("update_person"));
				m.setDelete_time(rs.getTimestamp("delete_time"));
				m.setDelete_person(rs.getString("delete_person"));
				m.setMakers_show(rs.getBoolean("makers_show"));

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
		return m;
	}

}
