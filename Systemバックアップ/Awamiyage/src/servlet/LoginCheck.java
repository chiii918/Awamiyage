package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Users;

public class LoginCheck {

	public static void isLogin(HttpSession session, ServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションを開始し、ログインユーザーの情報を取得
		Users login_user = (Users) session.getAttribute("login_user");

		//ログイン中でなければログイン画面にフォワードする
		if(login_user==null) {
			//フォワード
			request.getRequestDispatcher("./PageControlBack?pg_id=501").forward(request, response);
		}
	}
}
