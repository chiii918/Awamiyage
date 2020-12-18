package servlet;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Makers;
import dao.MakersDAO;

/**
 * Servlet implementation class Insert
 */
@WebServlet("/MakerProcess")
public class MakerProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MakerProcess() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションを取得
		HttpSession session = request.getSession();

		//ログイン状態の確認、
		//ログイン状態でなければ、ログイン画面に移動
		LoginCheck.isLogin(session, request, response);

		int count = 0;		//登録処理した件数


		//「更新」or「削除」判断用の値を取得
		String process = "";
		if ((request.getParameter("process")!=null)){
			process = request.getParameter("process");
		}

		System.out.println(process);

		if(process.equals("update")) {
			//メーカー情報の更新処理
			//入力データを取得する
			//メーカーID
			int makers_id = 0;
			if ((request.getParameter("makers_id")!=null)){
				makers_id = Integer.parseInt(request.getParameter("makers_id"));
			}
			//会社名
			String makers_name = "";
			if ((request.getParameter("makers_name")!=null)){
				makers_name = request.getParameter("makers_name");
			}
			//住所
			String makers_address = "";
			if ((request.getParameter("makers_address")!=null)){
				makers_address = request.getParameter("makers_address");
			}
			//TEL
			String makers_tel = "";
			if ((request.getParameter("makers_tel")!=null)){
				makers_tel = request.getParameter("makers_tel");
			}
			//ホームページ
			String makers_homepage = null;
			if ((request.getParameter("makers_homepage")!="")){
				makers_homepage = request.getParameter("makers_homepage");
			}
			//ネットショップ
			String makers_netshop = null;
			if ((request.getParameter("makers_netshop")!="")){
				makers_netshop = request.getParameter("makers_netshop");
			}
			//直営店
			String shop_name = null;
			if ((request.getParameter("shop_name")!="")){
				shop_name = request.getParameter("shop_name");
			}

			//表示/非表示
			boolean makers_show = true;
			if ((request.getParameter("makers_show")!=null)){
				String bool = request.getParameter("makers_show");
				makers_show = Boolean.valueOf(bool);
			}

			//更新時に自動で取得
			//更新時刻
		    //協定世界時のUTC 1970年1月1日深夜零時との差をミリ秒で取得
		    long millis = System.currentTimeMillis();
		    //ミリ秒を引数としてTimestampオブジェクトを作成
		    Timestamp update_time = new Timestamp(millis);

		    //更新ユーザー
		    String update_person = "testuser";

			//Makers Beanのオブジェクトを生成する
			Makers makers = new Makers();

			//Beanインスタンスに値を代入する
			makers.setMakers_id(makers_id);
			makers.setMakers_name(makers_name);
			makers.setMakers_address(makers_address);
			makers.setMakers_tel(makers_tel);
			makers.setMakers_homepage(makers_homepage);
			makers.setMakers_netshop(makers_netshop);
			makers.setShop_name(shop_name);
			makers.setUpdate_time(update_time);
			makers.setUpdate_person(update_person);
			makers.setMakers_show(makers_show);

			//データベースに商品を挿入する
			MakersDAO dao = new MakersDAO();
			count = dao.update(makers);

			//画面に出力
			if (count == 1) {
				request.setAttribute("message", "メーカー情報を更新しました");
			}else {
				request.setAttribute("message", "メーカー情報の更新に失敗しました");
			}

		}else if(process.equals("delete")) {
			//メーカー情報の削除処理
			//入力データを取得する
			//メーカーID
			int makers_id = 0;
			if ((request.getParameter("makers_id")!=null)){
				makers_id = Integer.parseInt(request.getParameter("makers_id"));
			}
			//入力時に自動で取得
			//入力時刻
		    //協定世界時のUTC 1970年1月1日深夜零時との差をミリ秒で取得
		    long millis = System.currentTimeMillis();
		    //ミリ秒を引数としてTimestampオブジェクトを作成
		    Timestamp delete_time = new Timestamp(millis);

		    //入力ユーザー
		    String delete_person = "testuser";

			//Makers Beanのオブジェクトを生成する
			Makers makers = new Makers();

			//Beanインスタンスに値を代入する
			makers.setMakers_id(makers_id);
			makers.setDelete_time(delete_time);
			makers.setDelete_person(delete_person);

			//データベースに商品を挿入する
			MakersDAO dao = new MakersDAO();
			count = dao.delete(makers);

			//画面に出力
			if (count == 1) {
				request.setAttribute("message", "メーカー情報を削除しました");
			}else {
				request.setAttribute("message", "メーカー情報の削除に失敗しました");
			}
		}else {
			System.out.println("processの値取得に失敗しました");
		}

		//メーカー一覧画面にフォワード
		request.getRequestDispatcher("PageControlBack?pg_id=516").forward(request, response);

	}
}

