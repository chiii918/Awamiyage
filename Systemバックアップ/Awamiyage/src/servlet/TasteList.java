package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import bean.Products;
import dao.SelectDAO;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/TasteList")
public class TasteList extends HttpServlet {

    static Connection connection = null;
    static PreparedStatement preparedStatement = null;
    static ResultSet resultSet = null;
    ArrayList<Object> AllSearch_JSON = new ArrayList<Object>();
    private static final long serialVersionUID = 1L;
    String all_json = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TasteList() {
        super();
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

		SelectDAO dao = new SelectDAO();
		List<Products> products_list = new ArrayList();

		int taste = 0;
		taste = Integer.parseInt(request.getParameter("taste"));
		if(taste==1 || taste==2 || taste==3 || taste==4 || taste==5 || taste==6) {
			products_list = dao.taste(taste);
		}else {
			products_list = dao.all();
		}


		//jsonファイルを作成してjsにjsonファイルをリターンする
        try {
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(products_list);
            response.setContentType("application/json;charset=UTF-8");
            PrintWriter pw = response.getWriter();
            pw.println("{"+"\"products_list\":"+json+"}");
        } catch (Exception e) {

        }
    }
}
