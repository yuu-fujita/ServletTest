package test3;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TestForm
 */
@WebServlet("/jsp/testform")
public class TestForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TestForm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//入力されたフォームデータの処理
		String name = request.getParameter("name");
		String company = request.getParameter("company");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		String[] mailmagas = request.getParameterValues("mailmaga");
		String requestType = request.getParameter("request");
		
		request.setAttribute("name", name);
		request.setAttribute("company", company);
		request.setAttribute("email", email);
		request.setAttribute("message", message);
		request.setAttribute("mailmagas", mailmagas);
		request.setAttribute("requestType", requestType);
		
		request.getRequestDispatcher("Result.jsp").forward(request, response);
		
	}
}
