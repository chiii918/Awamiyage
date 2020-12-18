package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Makers;
import dao.MakersDAO;

/**
 * Servlet implementation class ProductsAll
 */
@WebServlet("/MakerDetail")
public class MakerDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MakerDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションを取得
		HttpSession session = request.getSession();

		//ログイン状態の確認、
		//ログイン状態でなければ、ログイン画面に移動
		LoginCheck.isLogin(session, request, response);

		//データベースに接続、読み込み
		MakersDAO dao = new MakersDAO();

		//検索結果を保持するリストのインスタンスを生成する
		Makers maker_detail = new Makers();

		int mk_id = (int)request.getAttribute("mk_id");

		System.out.println("makerdetail");

		//daoのallメソッドを呼び出して、検索結果を取得する
		maker_detail = dao.detail(mk_id);

		//リクエストにBeanを加える
		request.setAttribute("maker_detail", maker_detail);

		//フォワード
		request.getRequestDispatcher("WEB-INF/jsp/back/maker_detail.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
