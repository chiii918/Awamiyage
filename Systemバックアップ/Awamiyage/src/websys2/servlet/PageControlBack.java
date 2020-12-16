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
@WebServlet("/PageControlBack")
public class PageControlBack extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PageControlBack() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//リクエストパラメータ（ページ番号）を取得する
		String page_id = request.getParameter("pg_id");
		//リクエストパラメータ（プロダクトID）を取得する
		String product_id = request.getParameter("pd_id");
		//リクエストパラメータ（メーカーID）を取得する
		String maker_id = request.getParameter("mk_id");
		//リクエストパラメータ（遷移元）を取得する
		String from = request.getParameter("fr_id");
		//リクエストパラメータ（レポートID）を取得する
		String repo = request.getParameter("rp_id");

		//変数宣言
		String forward = "";
		int pg_id = 0;
		int pd_id = 0;
		int mk_id = 0;
		int fr_id = 0;
		int rp_id = 0;

		//入力値チェック（ページ番号）
		if (page_id != null && page_id.length() != 0) {
			pg_id = Integer.parseInt(page_id);
		}
		//入力値チェック（プロダクトID）
		if (product_id != null && product_id.length() != 0) {
			pd_id = Integer.parseInt(product_id);
		}
		//入力値チェック（メーカーID）
		if (maker_id != null && maker_id.length() != 0) {
			mk_id = Integer.parseInt(maker_id);
		}
		//入力値チェック（遷移元）
		if (from != null && from.length() != 0) {
			fr_id = Integer.parseInt(from);
		}
		//入力値チェック（レポート）
		if (repo != null && repo.length() != 0) {
			rp_id = Integer.parseInt(repo);
		}

		// リクエストスコープに保存
		request.setAttribute("pg_id", pg_id);
		request.setAttribute("pd_id", pd_id);
		request.setAttribute("mk_id", mk_id);
		request.setAttribute("fr_id", fr_id);
		request.setAttribute("rp_id", rp_id);
		System.out.println("コントロールpg_id " + pg_id);
		System.out.println("コントロールpd_id " + pd_id);
		System.out.println("コントロールmk_id " + mk_id);
		System.out.println("コントロールfr_id " + fr_id);

		//リクエストスコープに各ページ用情報保存、フォワード先を設定
		if (pg_id==501) {
			//login.jsp	ログイン
			forward = movetoLogin(request);
		} else if (pg_id==502) {
			//mypage.jsp	マイページ
			forward = movetoMypage(request);
		} else if (pg_id==503) {
			//report_entry.jsp	試食レポート投稿
			forward = movetoReportEntry(request);
		} else if (pg_id==504) {
			//report_list.jsp	試食レポート一覧
			forward = movetoReportList(request);
		} else if (pg_id==505) {
			//report_edit.jsp	試食レポート編集
			forward = movetoReportEdit(request);
		} else if (pg_id==506) {
			//report_detail.jsp	試食レポート個別詳細
			forward = movetoReportDetail(request);
		} else if (pg_id==507) {
			//news_entry.jsp	お得情報投稿
			forward = movetoNewsEntry(request);
		} else if (pg_id==508) {
			//news_list.jsp	お得情報一覧
			forward = movetoNewsList(request);
		} else if (pg_id==509) {
			//news_edit.jsp	お得情報編集
			forward = movetoNewsEdit(request);
		} else if (pg_id==510) {
			//news_detail.jsp	お得情報個別詳細
			forward = movetoNewsDetail(request);
		} else if (pg_id==511) {
			//product_entry.jsp	商品記事投稿
			forward = movetoProductEntry(request);
		} else if (pg_id==512) {
			//product_list.jsp	商品記事一覧
			forward = movetoProductList(request);
		} else if (pg_id==513) {
			//product_edit.jsp	商品記事編集
			forward = movetoProductEdit(request);
		} else if (pg_id==514) {
			//product_detail.jsp	商品記事個別詳細
			forward = movetoProductDetail(request);
		} else if (pg_id==515) {
			//maker_entry.jsp	メーカー情報登録
			forward = movetoMakerEntry(request);
		} else if (pg_id==516) {
			//maker_list.jsp	メーカ情報一覧
			forward = movetoMakerList(request);
		} else if (pg_id==517) {
			//maker_edit.jsp	メーカー情報編集
			forward = movetoMakerEdit(request);
		} else if (pg_id==518) {
			//maker_detail.jsp	メーカー個別詳細
			forward = movetoMakerDetail(request);
		} else if (pg_id==523) {
			//user_entry.jsp	ユーザー情報登録
			forward = movetoUserEntry(request);
		} else if (pg_id==524) {
			//user_list.jsp	ユーザー情報一覧
			forward = movetoUserList(request);
		} else if (pg_id==525) {
			//user_edit.jsp	ユーザー情報編集
			forward = movetoUserEdit(request);
		} else if (pg_id==526) {
			//contact_list.jsp	お問い合わせ一覧
			forward = movetoContactList(request);
		} else if (pg_id==527) {
			//contact_list.jsp	お問い合わせ一覧
			forward = movetoContactDetail(request);
		} else if (pg_id==528) {
			//ログアウト
			forward = movetoLogout(request);
		}
		else {
			//login.jsp	ログイン
			forward = movetoLogin(request);
		}

		//変数forwardに格納されたURLにフォワード
		RequestDispatcher dispatcher = request.getRequestDispatcher(forward);
		dispatcher.forward(request, response);

	}

	/* フォワード前処理 */
	//login.jsp	ログイン
	private String movetoLogin(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/login.jsp";
		return forward;
	}
	//mypage.jsp	マイページ
	private String movetoMypage(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/mypage.jsp";
		return forward;
	}


	//report_entry.jsp	試食レポート投稿
	private String movetoReportEntry(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/report_entry.jsp";
		return forward;
	}
	//report_list.jsp	試食レポート一覧
	private String movetoReportList(HttpServletRequest request) {
		String forward = "ReportsList";
		return forward;
	}
	//report_edit.jsp	試食レポート編集
	private String movetoReportEdit(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/report_edit.jsp";
		return forward;
	}
	//report_detail.jsp	試食レポート個別詳細
	private String movetoReportDetail(HttpServletRequest request) {
		String forward = "ReportDetail";
		return forward;
	}


	//news_entry.jsp	お得情報投稿
	private String movetoNewsEntry(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/news_entry.jsp";
		return forward;
	}
	//news_list.jsp	お得情報一覧
	private String movetoNewsList(HttpServletRequest request) {
		String forward = "NewsList";
		return forward;
	}
	//news_edit.jsp	お得情報編集
	private String movetoNewsEdit(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/news_edit.jsp";
		return forward;
	}
	//news_detail.jsp	お得情報個別詳細
	private String movetoNewsDetail(HttpServletRequest request) {
		String forward = "NewsDetail";
		return forward;
	}


	//product_entry.jsp	商品記事投稿
	private String movetoProductEntry(HttpServletRequest request) {
		String forward = "ProductCategory";
		return forward;
	}
	//product_list.jsp	商品記事一覧
	private String movetoProductList(HttpServletRequest request) {
		String forward = "ProductsList";
		return forward;
	}
	//product_edit.jsp	商品記事編集
	private String movetoProductEdit(HttpServletRequest request) {
		String forward = "ProductEdit";
		return forward;
	}
	//product_detail.jsp	商品記事個別詳細
	private String movetoProductDetail(HttpServletRequest request) {
		String forward = "ProductDetail";
		return forward;
	}


	//maker_entry.jsp	メーカー情報登録
	private String movetoMakerEntry(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/maker_entry.jsp";
		return forward;
	}
	//maker_list.jsp	メーカ情報一覧
	private String movetoMakerList(HttpServletRequest request) {
		String forward = "MakersList";
		return forward;
	}
	//maker_edit.jsp	メーカー情報編集
	private String movetoMakerEdit(HttpServletRequest request) {
		String forward = "MakerEdit";
		return forward;
	}
	//maker_detail.jsp	メーカー個別詳細
	private String movetoMakerDetail(HttpServletRequest request) {
		String forward = "MakerDetail";
		return forward;
	}


	//user_entry.jsp	ユーザー情報登録
	private String movetoUserEntry(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/user_entry.jsp";
		return forward;
	}
	//user_list.jsp	ユーザー情報一覧
	private String movetoUserList(HttpServletRequest request) {
		String forward = "UsersList";
		return forward;
	}
	//user_edit.jsp	ユーザー情報編集
	private String movetoUserEdit(HttpServletRequest request) {
		String forward = "WEB-INF/jsp/back/user_edit.jsp";
		return forward;
	}


	//contact_list.jsp	お問い合わせ一覧
	private String movetoContactList(HttpServletRequest request) {
		String forward = "ContactList";
		return forward;
	}
	//contact_detail.jsp	お問い合わせ一覧
	private String movetoContactDetail(HttpServletRequest request) {
		String forward = "ContactDetail";
		return forward;
	}
	//ログアウトに送信
	private String movetoLogout(HttpServletRequest request) {
		String forward = "Logout";
		System.out.println("ログアウト");
		return forward;
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
