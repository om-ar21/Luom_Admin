package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Database;
import model.User;
import model.UserDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class UnactiveUser
 */
public class UnactiveUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UnactiveUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Database.Connect();
		
		HttpSession session = request.getSession( true );
		boolean load=false;
		if(session.getAttribute("p")==null) {
			load=true;
            response.sendRedirect("Connex");
		}
		
		if(session.getAttribute("droit")!=null) {
			int dr = (int) session.getAttribute("droit");
			if(dr==4 || dr==3) {
				load=true;
				//si le time faire une page acces refusé.
	            response.sendRedirect("IndexAdmin");
			}else {
		
		UserDAO userdao = new UserDAO();
		
		User guest = userdao.getById(1);
		
		ArrayList<User> user = userdao.getAllHidden();
		request.setAttribute("guest", guest);
		request.setAttribute("user", user);
		
		if(request.getParameter("iduser")!=null) {
			load=true;
			int id= Integer.valueOf(request.getParameter("iduser"));
			userdao.RetById(id);
			response.sendRedirect("UnactiveUser");
		}
		
		if(request.getParameter("del")!=null) {
			load=true;
			int id= Integer.valueOf(request.getParameter("del"));
			userdao.DelById(id);
			response.sendRedirect("UnactiveUser");
		}
		
		if(!load) {
		request.getRequestDispatcher("unactiveUser.jsp").forward(request, response);
		}}}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
