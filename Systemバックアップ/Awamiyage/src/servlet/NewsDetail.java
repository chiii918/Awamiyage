package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Reports;
import dao.ReportsDAO;

/**
 * Servlet implementation class ProductsAll
 */
@WebServlet("/NewsDetail")
public class NewsDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NewsDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//データベースに接続、読み込み
		ReportsDAO dao = new ReportsDAO();

		//frontからきた場合の分岐用、frontからきた場合はfr_idを持ってる
		int fr_id = (int)request.getAttribute("fr_id");
		System.out.println("fr" + fr_id);
		int rp_id = (int)request.getAttribute("rp_id");

		//検索結果を保持するリストのインスタンスを生成する
		Reports report_detail = new Reports();
		//daoのallメソッドを呼び出して、検索結果を取得する
		report_detail = dao.news_detail(rp_id);

		//リクエストにBeanを加える
		request.setAttribute("report_detail", report_detail);

		//フォワード
		if(fr_id!=0) {
			request.getRequestDispatcher("WEB-INF/jsp/front/news_detail.jsp").forward(request, response);
		}else {
			//セッションを取得
			HttpSession session = request.getSession();

			//ログイン状態の確認、
			//ログイン状態でなければ、ログイン画面に移動
			LoginCheck.isLogin(session, request, response);

			request.getRequestDispatcher("WEB-INF/jsp/back/news_detail.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
