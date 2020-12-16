package websys2.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import websys2.bean.Users;
import websys2.dao.UsersDAO;

/**
 * Servlet implementation class Insert
 */
@WebServlet("/UserEntry")
public class UserEntry extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UserEntry() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションを取得
		HttpSession session = request.getSession();

		//ログイン状態の確認、
		//ログイン状態でなければ、ログイン画面に移動
		LoginCheck.isLogin(session, request, response);

		int count = 0;		//登録処理した件数

		//入力データを取得する
		//会社名
		String users_name = "";
		if ((request.getParameter("users_name")!=null)){
			users_name = request.getParameter("users_name");
		}
		//住所
		String users_nickname = "";
		if ((request.getParameter("users_nickname")!=null)){
			users_nickname = request.getParameter("users_nickname");
		}
		//TEL
		String users_password = "";
		if ((request.getParameter("users_password")!=null)){
			users_password = request.getParameter("users_password");
		};

		Users users = new Users();

		//Beanインスタンスに値を代入する
		users.setUsers_name(users_name);
		users.setUsers_nickname(users_nickname);
		users.setUsers_password(users_password);

		//データベースに商品を挿入する
		UsersDAO dao = new UsersDAO();
		count = dao.insert(users);

		//画面に出力
		if (count == 1) {
			request.setAttribute("message", "人のユーザーを追加しました");
		}else {
			request.setAttribute("message", "ユーザー追加が失敗しました");
		}

		//ユーザー一覧画面にフォワード
		request.getRequestDispatcher("PageControlBack?pg_id=524").forward(request, response);

	}
}

