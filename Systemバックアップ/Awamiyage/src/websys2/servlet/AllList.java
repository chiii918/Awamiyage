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
@WebServlet("/AllList")
public class AllList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AllList() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		SelectDAO dao = new SelectDAO();
		List<Products> products_list = new ArrayList();

		int fr_id = (int)request.getAttribute("fr_id");
		int ct_id = (int)request.getAttribute("ct_id");

		//遷移元のfr_idによって処理メソッドを変更
		if(fr_id==1) {
			//price
			if(ct_id==1 | ct_id==2 |ct_id==3 |ct_id==4 |ct_id==5 ) {
				//ラジオボタンを押された時
				products_list = dao.price(ct_id);
			}else {
				//初期画面
				products_list = dao.all();
			}

		}
		else if(fr_id==5) {
			//taste
			if(ct_id==1 | ct_id==2 |ct_id==3 |ct_id==4 ) {
				//ラジオボタンを押された時
				products_list = dao.taste(ct_id);
			}else {
				//初期画面
				products_list = dao.all();
			}
		}
		else if(fr_id==6) {
			//scene
			if(ct_id==1 | ct_id==2 |ct_id==3 |ct_id==4 |ct_id==5 |ct_id==6 ) {
				//ラジオボタンを押された時
				products_list = dao.scene(ct_id);
			}else {
				//初期画面
				products_list = dao.all();
			}
		}
		else if(fr_id==7) {
			//category
			if(ct_id==1 | ct_id==2 |ct_id==3 |ct_id==4 |ct_id==5 |ct_id==6 |ct_id==7 ) {
				//ラジオボタンを押された時
				products_list = dao.category(ct_id);
			}else {
				//初期画面
				products_list = dao.all();
			}

		}else if(fr_id==8) {
			//quantity
			//初期画面 ラジオボタンなし
			products_list = dao.all();

		}


		request.setAttribute("products_list", products_list);
		request.setAttribute("fr_id", fr_id);


		//遷移元のfr_idによって遷移先を変更
		if(fr_id==1) {
			//price
			request.getRequestDispatcher("WEB-INF/jsp/front/price.jsp").forward(request, response);
		}
		else if(fr_id==5) {
			//taste
			request.getRequestDispatcher("WEB-INF/jsp/front/taste.jsp").forward(request, response);
		}
		else if(fr_id==6) {
			//scene
			request.getRequestDispatcher("WEB-INF/jsp/front/scene.jsp").forward(request, response);
		}
		else if(fr_id==7) {
			//category
			request.getRequestDispatcher("WEB-INF/jsp/front/category.jsp").forward(request, response);
		}
		else if(fr_id==8) {
			//quantity
			request.getRequestDispatcher("WEB-INF/jsp/front/quantity.jsp").forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
