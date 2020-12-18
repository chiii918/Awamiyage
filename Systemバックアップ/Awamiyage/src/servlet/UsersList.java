package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Users;
import dao.UsersDAO;

/**
 * Servlet implementation class MakersAll
 */
@WebServlet("/UsersList")
public class UsersList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UsersList() {
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
		UsersDAO dao = new UsersDAO();

		//検索結果を保持するリストのインスタンスを生成する
		List<Users> users_list = new ArrayList();

		//daoのallメソッドを呼び出して、検索結果を取得する
		users_list = dao.list();

		//リクエストにBeanを加える
		request.setAttribute("users_list", users_list);

		//フォワード
		request.getRequestDispatcher("WEB-INF/jsp/back/user_list.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
