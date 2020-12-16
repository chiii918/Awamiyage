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
 * Servlet implementation class ProductsAll
 */
//なぜか「AreaList」にするとサーバーが起動しなくなるため末尾に1をつけた
@WebServlet("/AreaList1")
public class AreaList1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AreaList1() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SelectDAO dao = new SelectDAO();
		List<Products> products_list = new ArrayList();

		//遷移先
		int pg_id = (int)request.getAttribute("pg_id");

		products_list = dao.area(pg_id);
		request.setAttribute("products_list", products_list);


		//フォワード
		if(pg_id==107) {
			//県東
			request.getRequestDispatcher("WEB-INF/jsp/front/east.jsp").forward(request, response);
		}else if(pg_id==108) {
			//県南
			request.getRequestDispatcher("WEB-INF/jsp/front/south.jsp").forward(request, response);
		}else if(pg_id==106) {
			//県西
			request.getRequestDispatcher("WEB-INF/jsp/front/west.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("WEB-INF/jsp/front/top.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
