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
import websys2.dao.SelectDAO;

/**
 * Servlet implementation class ProductsAll
 */
@WebServlet("/Subcategory")
public class Subcategory extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Subcategory() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SelectDAO dao = new SelectDAO();
		List<Products> products_list = new ArrayList();
		Categorys subcategorys_name = new Categorys();

		int fr_id = (int)request.getAttribute("fr_id");
		request.setAttribute("fr_id", fr_id);
		//サブカテゴリid
		int sc_id = (int)request.getAttribute("sc_id");

		products_list = dao.subcategorys(sc_id);
		subcategorys_name = dao.subcategorys_name(sc_id);

		request.setAttribute("products_list", products_list);
		request.setAttribute("subcategorys_name", subcategorys_name);

		//フォワード
		request.getRequestDispatcher("WEB-INF/jsp/front/subcategory.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
