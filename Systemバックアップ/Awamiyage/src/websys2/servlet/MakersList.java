package websys2.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import websys2.bean.Makers;
import websys2.dao.MakersDAO;

/**
 * Servlet implementation class MakersAll
 */
@WebServlet("/MakersList")
public class MakersList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MakersList() {
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
		List<Makers> makers_list = new ArrayList();

		//daoのallメソッドを呼び出して、検索結果を取得する
		makers_list = dao.list();

		//リクエストにBeanを加える
		request.setAttribute("makers_list", makers_list);

		//フォワード
		request.getRequestDispatcher("WEB-INF/jsp/back/maker_list.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
