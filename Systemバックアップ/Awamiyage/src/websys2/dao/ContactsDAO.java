package websys2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import websys2.bean.Contacts;

public class ContactsDAO {

	/* お問い合わせ */
	public List<Contacts> contact() {

		List<Contacts> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "SELECT * FROM contacts "
					+ "ORDER BY contacts_id ASC";

			//						System.out.println(sql);

			PreparedStatement pStmt = conn.prepareStatement(sql);

			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				Contacts c = new Contacts();

				c.setContacts_id(rs.getInt("contacts_id"));
				c.setContacts_title(rs.getString("contacts_title"));
				c.setInput_time(rs.getTimestamp("input_time"));
				c.setContacts_res(rs.getBoolean("contacts_res"));

				list.add(c);
			}

			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	/* お問い合わせを取得するメソッド */
	public Contacts detail(int ct_id) {
		//検索結果を保持するリストのインスタンスを生成する
		Contacts c = new Contacts();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT * FROM contacts WHERE contacts_id = ? ";

						System.out.println(sql);

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);

			//それぞれのプレースホルダに値をセットする
			pStmt.setInt(1,ct_id);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();
						System.out.println("rs "+rs);

			//productのデータを取得
			while(rs.next()) {
				c.setContacts_id(rs.getInt("contacts_id"));
				c.setContacts_type(rs.getInt("contacts_type"));
				c.setContacts_title(rs.getString("contacts_title"));
				c.setContacts_content(rs.getString("contacts_content"));
				c.setContacts_name(rs.getString("contacts_name"));
				c.setContacts_mail(rs.getString("contacts_mail"));
				c.setContacts_company(rs.getString("contacts_company"));
				c.setInput_time(rs.getTimestamp("input_time"));
				c.setContacts_res(rs.getBoolean("contacts_res"));
			}
			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		//検索結果を集めているlistを呼び出す先に返す
		return c;
	}
}
