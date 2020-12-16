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
@WebServlet("/ProductDetail")
public class ProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ProductDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//データベースに接続、読み込み
		ProductsDAO dao = new ProductsDAO();

		//検索結果を保持するリストのインスタンスを生成する
		Products products_detail = new Products();

		int pd_id = (int)request.getAttribute("pd_id");
		System.out.println("pd" + pd_id);

		//frontからきた場合の分岐用、frontからきた場合はfr_idを持ってる
		int fr_id = (int)request.getAttribute("fr_id");

		products_detail = dao.detail(pd_id);

		//リクエストにBeanを加える
		request.setAttribute("products_detail", products_detail);

		//フォワード
		if(fr_id!=0) {
			List<Products> products_relation = new ArrayList();
			products_relation = dao.relation(pd_id);
			request.setAttribute("products_relation", products_relation);
			request.setAttribute("fr_id", fr_id);
			request.getRequestDispatcher("WEB-INF/jsp/front/product_detail.jsp").forward(request, response);
		}else {
			//セッションを取得
			HttpSession session = request.getSession();

			//ログイン状態の確認、
			//ログイン状態でなければ、ログイン画面に移動
			LoginCheck.isLogin(session, request, response);

			request.getRequestDispatcher("WEB-INF/jsp/back/product_detail.jsp").forward(request, response);
		}



	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
