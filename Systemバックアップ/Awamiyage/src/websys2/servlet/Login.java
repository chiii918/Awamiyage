package websys2.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import websys2.bean.Users;
import websys2.dao.UsersDAO;;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッション開始
		HttpSession session = request.getSession();

		//入力データを取得する
		//ログインID
		String users_name = "";		//初期値を空白にする
		if ((request.getParameter("users_name")!=null)){
			users_name = request.getParameter("users_name");
		}

		//パスワード
		String users_password = "";		//初期値を空白にする
		if ((request.getParameter("users_password")!=null)){
			users_password = request.getParameter("users_password");
		}

		//user Beanのオブジェクトを生成する
		Users user = new Users();

		//データベースにLonginIDでユーザーを検索する
		UsersDAO dao = new UsersDAO();
		user = dao.Login(users_name);

		if(user!=null) {
			//パスワードの確認

			if(user.getUsers_password().equals(users_password)) {

				//ログインしたユーザーをセッションに保存する
				session.setAttribute("login_user", user);

				//リクエストにメッセージを加える
				request.setAttribute("message", "ログインしました");
				//フォワード
				request.getRequestDispatcher("./PageControlBack?pg_id=502").forward(request, response);

			}
		}

		//リクエストにログイン失敗したメッセージを加える
		request.setAttribute("message", "ログインID・パスワードが間違っています");
		//ログイン画面にフォワード
		request.getRequestDispatcher("./PageControlBack?pg_id=501").forward(request, response);


	}

}
