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

import bean.Reports;
import dao.ReportsDAO;

/**
 * Servlet implementation class TasteList
 */
@WebServlet("/ReportsList")
public class ReportList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ReportList() {
		super();
		// TODO Auto-generated constructor stub
	}


    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		ReportsDAO dao = new ReportsDAO();
		List<Reports> reports_list = new ArrayList();

		//frontからきた場合の分岐用、frontからきた場合はfr_idを持ってる
		int fr_id = (int)request.getAttribute("fr_id");
		System.out.println("fr" + fr_id);

		reports_list = dao.reports_list(fr_id);

		request.setAttribute("reports_list", reports_list);

		//フォワード
		if(fr_id==501) {
			//セッションを取得
			HttpSession session = request.getSession();

			//ログイン状態の確認、
			//ログイン状態でなければ、ログイン画面に移動
			LoginCheck.isLogin(session, request, response);

			request.getRequestDispatcher("WEB-INF/jsp/back/report_list.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("WEB-INF/jsp/front/report_list.jsp").forward(request, response);
		}


	}

}
