package websys2.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import websys2.bean.Categorys;
import websys2.bean.Products;
import websys2.bean.Reports;
import websys2.dao.ReportsDAO;
import websys2.dao.TopDAO;


@WebServlet("/Top")
public class Top extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Top() {
        super();

    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		TopDAO tdao = new TopDAO();
		ReportsDAO rdao = new ReportsDAO();

		int fr_id = (int)request.getAttribute("fr_id");
		System.out.println("top"+fr_id);

		//お得情報リスト
		List<Reports> news_list = new ArrayList();
		news_list = rdao.news_list(fr_id);
		request.setAttribute("news_list", news_list);

		//レビューリスト
		List<Reports> reports_list = new ArrayList();
		reports_list = rdao.reports_list(fr_id);
		request.setAttribute("reports_list", reports_list);

		//タグ（サブカテゴリ）リスト
		List<Categorys> taglist = new ArrayList();
		taglist = tdao.taglist();
		request.setAttribute("taglist", taglist);

		//ランキングリスト
		List<Products> ranking_list = new ArrayList();
		ranking_list = tdao.ranking_list();
		request.setAttribute("ranking_list", ranking_list);

		request.getRequestDispatcher("WEB-INF/jsp/front/top.jsp").forward(request, response);
	}



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
