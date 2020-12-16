package websys2.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import websys2.bean.Products;
import websys2.dao.SelectDAO;

/**
 * Servlet implementation class TasteList
 */
@WebServlet("/Quantity")
public class Quantity extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Quantity() {
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


		//検索キーワードを取得する
		String quantity = "";
		if ((request.getParameter("quantity")!=null)){
			quantity = request.getParameter("quantity");
		}

		SelectDAO dao = new SelectDAO();
		List<Products> products_list = new ArrayList();

		//daoのsearchメソッドを呼び出して、検索結果を取得する
		products_list = dao.quantity(quantity);

		//リクエストにBeanを加える
		request.setAttribute("products_list", products_list);

		//フォワード
		request.getRequestDispatcher("WEB-INF/jsp/front/quantity.jsp").forward(request, response);
	}

}
