package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Products;
import dao.SelectDAO;

/**
 * Servlet implementation class TasteList
 */
@WebServlet("/PriceList")
public class PriceList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PriceList() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SelectDAO dao = new SelectDAO();
		List<Products> products_list = new ArrayList();

		products_list = dao.all();

		request.setAttribute("products_list", products_list);

		request.getRequestDispatcher("WEB-INF/jsp/front/price.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SelectDAO dao = new SelectDAO();
		List<Products> products_list = new ArrayList();

		//検索条件のpriceを取得してセット
		int products_pricerange = 0;
		if ((request.getParameter("products_pricerange")!=null)){
			products_pricerange = Integer.parseInt(request.getParameter("products_pricerange"));
		}
		products_list = dao.price(products_pricerange);
		request.setAttribute("products_list", products_list);

		request.getRequestDispatcher("WEB-INF/jsp/front/price.jsp").forward(request, response);

	}

}
