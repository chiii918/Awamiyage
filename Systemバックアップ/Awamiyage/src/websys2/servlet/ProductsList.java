package websys2.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import websys2.bean.Products;
import websys2.dao.ProductsDAO;

/**
 * Servlet implementation class ProductsAll
 */
@WebServlet("/ProductsList")
public class ProductsList extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductsList() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//セッションを取得
		HttpSession session = request.getSession();

		//ログイン状態の確認、
		//ログイン状態でなければ、ログイン画面に移動
		LoginCheck.isLogin(session, request, response);


		//データベースに接続、読み込み
		ProductsDAO dao = new ProductsDAO();

		//検索結果を保持するリストのインスタンスを生成する
		List<Products> products_list = new ArrayList();

		//daoのlistメソッドを呼び出して、検索結果を取得する
		products_list = dao.list();

		//リクエストにBeanを加える
		request.setAttribute("products_list", products_list);

		//フォワード
		request.getRequestDispatcher("WEB-INF/jsp/back/product_list.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
