package websys2.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import websys2.bean.Reports;

public class ReportsDAO {

	/* お得情報一覧 */
	public List<Reports> news_list(int fr_id) {

		List<Reports> list = new ArrayList();
		System.out.println("top repo"+fr_id);

		try {
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "";
			//フロントの日付のみ表記の格納用
			String str ="";

			if (fr_id == 501) {
				//バック 一覧画面
				sql = "SELECT * FROM news_view;";
			}else if(fr_id == 15) {
				//フロント 一覧画面
				sql = "SELECT * FROM news_view "
					+ "WHERE reports_show = true;";
			}else {
				//フロント トップページ 上位5件のみ表示
				sql = "SELECT * FROM news_view "
					+ "WHERE reports_show = true "
					+ "OFFSET 0 LIMIT 5;";
			}

			PreparedStatement pStmt = conn.prepareStatement(sql);
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				Reports r = new Reports();

				if (fr_id == 501) {
					//バック 時間まで取得
					r.setRegister_time(rs.getTimestamp("register_time"));
				}else {
					//フロント 日付だけ取得
			        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			        str = sdf.format(rs.getTimestamp("register_time"));
			        r.setRegister_date(str);
//			        System.out.println(str);
				}

				r.setReports_id(rs.getInt("reports_id"));
				r.setReports_name(rs.getString("reports_name"));


				list.add(r);
			}

			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}

	/* レビュー一覧 */
	public List<Reports> reports_list(int fr_id) {

		List<Reports> list = new ArrayList();

		try {

			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			String sql = "";
			//フロントの日付のみ表記の格納用
			String str ="";

			if (fr_id == 501) {
				//バック 一覧画面
				sql = "SELECT * FROM reports_view;";
			}else if(fr_id == 15) {
				//フロント 一覧画面
				sql = "SELECT * FROM reports_view "
					+ "WHERE reports_show = true;";
			}else {
				//フロント トップページ 上位5件のみ表示
				sql = "SELECT * FROM reports_view "
					+ "WHERE reports_show = true "
					+ "OFFSET 0 LIMIT 5;";
			}

			PreparedStatement pStmt = conn.prepareStatement(sql);
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				Reports r = new Reports();

				if (fr_id == 501) {
					//バック 時間まで取得
					r.setRegister_time(rs.getTimestamp("register_time"));
				}else {
					//フロント 日付だけ取得
			        SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd");
			        str = sdf.format(rs.getTimestamp("register_time"));
			        r.setRegister_date(str);
//			        System.out.println(str);
				}

				r.setReports_id(rs.getInt("reports_id"));
				r.setReports_name(rs.getString("reports_name"));
				r.setReports_content1(rs.getString("reports_content1"));
				r.setReports_eyecatch(rs.getString("reports_eyecatch"));

				list.add(r);
			}

			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return list;
	}



	/* レビュー記事情報を取得するメソッド */
	public Reports report_detail(int rp_id) {
		//検索結果を保持するリストのインスタンスを生成する
		Reports r = new Reports();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT * FROM reports_view WHERE reports_id = ?;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, rp_id);
			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();
//			System.out.println("sql実行文 "+pStmt);

			//データを取得
			while(rs.next()) {
				r.setReports_id(rs.getInt("reports_id"));
				r.setReports_name(rs.getString("reports_name"));
				r.setReports_type(rs.getInt("reports_type"));
				r.setReports_content1(rs.getString("reports_content1"));
				r.setReports_content2(rs.getString("reports_content2"));
				r.setReports_content3(rs.getString("reports_content3"));
				r.setReports_content4(rs.getString("reports_content4"));
				r.setReports_eyecatch(rs.getString("reports_eyecatch"));
				r.setReports_photo2(rs.getString("reports_photo2"));
				r.setReports_photo3(rs.getString("reports_photo3"));
				r.setReports_heading1(rs.getString("reports_heading1"));
				r.setReports_heading2(rs.getString("reports_heading2"));
				r.setReports_heading3(rs.getString("reports_heading3"));
				r.setRegister_time(rs.getTimestamp("register_time"));
				r.setRegister_person(rs.getString("register_person"));
				r.setUpdate_time(rs.getTimestamp("update_time"));
				r.setUpdate_person(rs.getString("update_person"));

				r.setProducts_name1(rs.getString("p1_name"));
				r.setProducts_name2(rs.getString("p2_name"));
				r.setProducts_name3(rs.getString("p3_name"));
				r.setProducts_name4(rs.getString("p4_name"));
				r.setProducts_name5(rs.getString("p5_name"));

				r.setMakers_name1(rs.getString("m1_name"));
				r.setMakers_name2(rs.getString("m2_name"));
				r.setMakers_name3(rs.getString("m3_name"));
				r.setMakers_name4(rs.getString("m4_name"));
				r.setMakers_name5(rs.getString("m5_name"));

			}
			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		//検索結果を集めているlistを呼び出す先に返す
		return r;
	}



	/* レビュー記事情報を取得するメソッド */
	public Reports news_detail(int rp_id) {
		//検索結果を保持するリストのインスタンスを生成する
		Reports r = new Reports();

		try {
			//データベース接続インスタンスを取得する
			Connection conn = null;
			conn = DAO.conn;
			if(conn == null) return null;

			//SELECT文を準備
			String sql = "SELECT * FROM news_view WHERE reports_id = ?;";

			//SQLを送信
			PreparedStatement pStmt = conn.prepareStatement(sql);
			pStmt.setInt(1, rp_id);

			//SELECTを実行し、結果を取得してResultSetのインスタンスに代入
			ResultSet rs = pStmt.executeQuery();
//			System.out.println("sql実行文 "+pStmt);

			//データを取得
			while(rs.next()) {
				r.setReports_id(rs.getInt("reports_id"));
				r.setReports_name(rs.getString("reports_name"));
				r.setReports_type(rs.getInt("reports_type"));
				r.setReports_content1(rs.getString("reports_content1"));
				r.setReports_eyecatch(rs.getString("reports_eyecatch"));
				r.setRegister_time(rs.getTimestamp("register_time"));
				r.setRegister_person(rs.getString("register_person"));

				r.setMakers_name1(rs.getString("makers_name"));
				r.setMakers_homepage(rs.getString("makers_homepage"));

			}
			pStmt.close();
			rs.close();

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		//検索結果を集めているlistを呼び出す先に返す
		return r;
	}
}

