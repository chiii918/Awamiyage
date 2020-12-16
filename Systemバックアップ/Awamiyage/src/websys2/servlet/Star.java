package websys2.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import websys2.dao.ProductsDAO;

/**
 * Servlet implementation class TasteList
 */
@WebServlet("/Star")
public class Star extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Star() {
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

		int pd_id = (int)request.getAttribute("pd_id");
		System.out.println("pd" + pd_id);

		//入力された評価を取得する
		float input_star = 0;
		if ((request.getParameter("star")!=null)){
			input_star = Float.parseFloat(request.getParameter("star"));
		}

		int count = 0;		//登録処理した件数
		//データベースに商品を挿入する
		ProductsDAO dao = new ProductsDAO();
		count = dao.star(pd_id, input_star);

		//画面に出力
		if (count == 1) {
			request.setAttribute("message", "商品評価を更新しました");
		}else {
			request.setAttribute("message", "商品評価の更新に失敗しました");
		}

		//フォワード
		request.getRequestDispatcher("./PageControlFront?pg_id=113&fr_id=101&pd_id=" + pd_id).forward(request, response);
	}

}
