package websys2.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ProductsAll
 */
@WebServlet("/Area")
public class Area extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Area() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int fr_id = (int)request.getAttribute("fr_id");
		//fr_id_1: 1階層前（ここだとarea）のfr_idをセットする　※パンクズ用
		request.setAttribute("fr_id_1", fr_id);

		//フォワード
		request.getRequestDispatcher("WEB-INF/jsp/front/area.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
