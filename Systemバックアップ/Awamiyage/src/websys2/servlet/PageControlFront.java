package websys2.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PageControl
 */
@WebServlet("/PageControlFront")
public class PageControlFront extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PageControlFront() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//リクエストパラメータ（ページ番号）を取得する
		String page = request.getParameter("pg_id");
		//リクエストパラメータ（商品ID）を取得する
		String product = request.getParameter("pd_id");
		//リクエストパラメータ（遷移元 ※パンクズ用）を取得する
		String from = request.getParameter("fr_id");
		//リクエストパラメータ（サブカテゴリID）を取得する
		String subc = request.getParameter("sc_id");
		//リクエストパラメータ（カテゴリ、ラジオボタンを押された時に取得した値）を取得する
		String category = request.getParameter("ct_id");
		//リクエストパラメータ（レポートID）を取得する
		String repo = request.getParameter("rp_id");

//		System.out.println("page" + page);
//		System.out.println("from" + from);

		//変数宣言
		String forward = "";
		int pg_id = 0;
		int pd_id = 0;
		int fr_id = 0;
		int sc_id = 0;
		int ct_id = 0;
		int rp_id = 0;

		//入力値チェック
		if (page != null && page.length() != 0) {
			pg_id = Integer.parseInt(page);
//			System.out.println("pg_id: " + pg_id);
		}
		if (product != null && product.length() != 0) {
			pd_id = Integer.parseInt(product);
//			System.out.println("pd_id: " + pd_id);
		}
		if (from != null && from.length() != 0) {
			fr_id = Integer.parseInt(from);
//			System.out.println("fr_id: " + fr_id);
		}
		if (subc != null && subc.length() != 0) {
			sc_id = Integer.parseInt(subc);
//			System.out.println("sc_id: " + sc_id);
		}
		if (category != null && category.length() != 0) {
			ct_id = Integer.parseInt(category);
//			System.out.println("ct_id: " + ct_id);
		}
		if (repo != null && repo.length() != 0) {
			rp_id = Integer.parseInt(repo);
		}

		// リクエストスコープに保存
		request.setAttribute("pg_id", pg_id);
		request.setAttribute("pd_id", pd_id);
		request.setAttribute("fr_id", fr_id);
		request.setAttribute("sc_id", sc_id);
		request.setAttribute("ct_id", ct_id);
		request.setAttribute("rp_id", rp_id);


		//リクエストスコープに各ページ用情報保存、フォワード先を設定
		if (pg_id==101) {
			//top.jsp	トップページ
			forward = movetoTop(request);
		} else if (pg_id==102) {
			//news_all.jsp	お得情報一覧
			forward = movetoNewsAll(request);
		} else if (pg_id==103) {
			//news_detail.jsp	お得情報詳細
			forward = movetoNewsDetail(request);
		} else if (pg_id==104) {
			//local_food.jsp	徳島の名産品
			forward = movetoLocalFood(request);
		} else if (pg_id==105) {
			//recommend_food.jsp	推し土産
			forward = movetoRecommendFood(request);
		} else if (pg_id==106) {
			//west.jsp	県西
			forward = movetoWest(request);
		} else if (pg_id==107) {
			//east.jsp	県東
			forward = movetoEast(request);
		} else if (pg_id==108) {
			//south.jsp	県南
			forward = movetoSouth(request);
		} else if (pg_id==109) {
			//report_all.jsp	試食レポート一覧
			forward = movetoReportAll(request);
		} else if (pg_id==110) {
			//report_detail.jsp	試食レポート詳細
			forward = movetoReportDetail(request);
		} else if (pg_id==111) {
			//subcategory.jsp	各サブカテゴリ一覧
			forward = movetoSubcategory(request);
		} else if (pg_id==112) {
			//contact.jsp	お問い合わせ
			forward = movetoContact(request);
		} else if (pg_id==113) {
			//product_detail.jsp	商品詳細
			forward = movetoProductDetail(request);
		} else if (pg_id==114) {
			//price.jsp	価格別選択
			forward = movetoPrice(request);
		} else if (pg_id==115) {
			//area.jsp	地域別選択
			forward = movetoArea(request);
		} else if (pg_id==116) {
			//taste.jsp	味別選択
			forward = movetoTaste(request);
		} else if (pg_id==117) {
			//quantity.jsp	数量別選択
			forward = movetoQuantity(request);
		} else if (pg_id==118) {
			//scene.jsp	対象別選択
			forward = movetoScene(request);
		} else if (pg_id==119) {
			//category.jsp	カテゴリ別
			forward = movetoCategory(request);
		} else if (pg_id==120) {
			//privacypolicy.jsp	（静的）プライバシーポリシー
			forward = movetoPrivacyPolicy(request);
		} else if (pg_id==121) {
			//商品評価
			forward = movetoStar(request);
		}


		else {
			//トップページ
			forward = movetoTop(request);
		}


		//変数forwardに格納されたURLにフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward);
		dispatcher.forward(request, response);

	}

	/* フォワード前処理 */
	//index.jsp	トップページ
	private String movetoTop(HttpServletRequest request) {
		String forward = "Top";
		return forward;
	}


	//news_all.jsp	お得情報一覧
	private String movetoNewsAll(HttpServletRequest request) {
		String forward = "NewsList";
		return forward;
	}
	//news_detail.jsp	お得情報詳細
	private String movetoNewsDetail(HttpServletRequest request) {
		String forward = "NewsDetail";
		return forward;
	}


	//local_food.jsp	徳島の名産品
	private String movetoLocalFood(HttpServletRequest request) {
		String forward = "LocalList";
		return forward;
	}
	//recommend_food.jsp	推し土産
	private String movetoRecommendFood(HttpServletRequest request) {
		String forward = "RecommendList";
		return forward;
	}
	//west.jsp	県西
	private String movetoWest(HttpServletRequest request) {
//		String forward = "Top";
		String forward = "AreaList1";
		return forward;
	}
	//east.jsp	県東
	private String movetoEast(HttpServletRequest request) {
//		String forward = "Top";
		String forward = "AreaList1";
		return forward;
	}
	//south.jsp	県南
	private String movetoSouth(HttpServletRequest request) {
//		String forward = "Top";
		String forward = "AreaList1";
		return forward;
	}


	//report_all.jsp	試食レポート一覧
	private String movetoReportAll(HttpServletRequest request) {
		String forward = "ReportsList";
		return forward;
	}
	//report_detail.jsp	試食レポート詳細
	private String movetoReportDetail(HttpServletRequest request) {
		String forward = "ReportDetail";
		return forward;
	}


	//subcategory.jsp	各サブカテゴリ一覧
	private String movetoSubcategory(HttpServletRequest request) {
		String forward = "Subcategory";
		return forward;
	}
	//contact.jsp	お問い合わせ
	private String movetoContact(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/front/contact.jsp";
		return forward;
	}
	//product_detail.jsp	商品詳細
	private String movetoProductDetail(HttpServletRequest request) {
		String forward = "ProductDetail";
		return forward;
	}
	//price.jsp	価格別選択
	private String movetoPrice(HttpServletRequest request) {
		String forward = "AllList";
		return forward;
	}
	//area.jsp	地域別選択
	private String movetoArea(HttpServletRequest request) {
		String forward = "Area";
		return forward;
	}
	//taste.jsp	味別選択
	private String movetoTaste(HttpServletRequest request) {
		String forward = "AllList";
		return forward;
	}
	//quantity.jsp	数量別選択
	private String movetoQuantity(HttpServletRequest request) {
		String forward = "AllList";
		return forward;
	}
	//scene.jsp	対象別選択
	private String movetoScene(HttpServletRequest request) {
		String forward = "AllList";
		return forward;
	}
	//category.jsp	カテゴリ別
	private String movetoCategory(HttpServletRequest request) {
		String forward = "AllList";
		return forward;
	}
	//privacypolicy.jsp	（静的）プライバシーポリシー
	private String movetoPrivacyPolicy(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/front/privacypolicy.jsp";
		return forward;
	}


	//商品評価
	private String movetoStar(HttpServletRequest request) {
		String forward = "Star";
		return forward;
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
