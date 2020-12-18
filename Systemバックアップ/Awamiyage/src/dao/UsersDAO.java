package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import bean.Users;

public class UsersDAO {
	/* ユーザー追加 */
	public int insert(Users users) {
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
			String sql3 = "SELECT setval('users_users_id_seq', (SELECT MAX(users_id) FROM users));";
			stmt3.executeQuery(sql3);

			//SELECT文を準備
			String sql = "";
			sql += "INSERT INTO users ";
			sql += "( users_name, users_nickname, users_password ) ";
			sql += "VALUES( ?, ?, ? );";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダにpriceをセットする
			pStmt.setString(1,users.getUsers_name());
			pStmt.setString(2,users.getUsers_nickname());
			pStmt.setString(3,users.getUsers_password());

			//仮でSQL文を実行する
			count = pStmt.executeUpdate();

			System.out.println(pStmt);

			System.out.println("count:" + count);

			//画面に出力
			if (count==1) {
				conn.commit();		//コミットする
				System.out.println(count + "人のユーザーを追加しました");
			}else {
				conn.rollback();	//ロールバック
				System.out.println("ユーザー登録に失敗しました");
			}

			pStmt.close();

			//データベースの接続から切断する
			//			DAO.closeConnection(conn);

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
			System.out.println("ユーザーの追加時にエラーが発生しました");
		}

		return count;
	}



	/**
	 * 顧客Login Idで顧客情報を取得するメソッド
	 * @param login
	 * @return
	 */
	public Users Login(String users_name) {

		//検索結果を保持する顧客インスタンスを生成する
		Users user = new Users();

		try {

			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT * FROM users WHERE users_name = ?";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setString(1, users_name);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//productにデータを代入
			if (rs.next()) {
				//userのデータを取得
				user.setUsers_id(rs.getInt("users_id"));	//user_id
				user.setUsers_name(rs.getString("users_name"));			//login
				user.setUsers_password(rs.getString("users_password"));		//password
				user.setUsers_nickname(rs.getString("users_nickname"));	//nick_name
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
		return user;

	}



	/* ユーザーリスト */
	public List<Users> list() {
		//検索結果を保持するリストのインスタンスを生成する
		List<Users> list = new ArrayList();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT users_id, users_nickname FROM users ORDER BY users_id DESC;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();

			//rs結果表に格納されたレコードを行ごとに取得して出力する
			while (rs.next()) {
				//Product Beanのインスタンスを生成する
				Users u = new Users();

				//productのデータを取得
				u.setUsers_id(rs.getInt("users_id"));			//Id
				u.setUsers_nickname(rs.getString("users_nickname"));	//name

				//セッティング済のBeanをリストに追加する
				list.add(u);
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
