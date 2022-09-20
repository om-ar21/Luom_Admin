package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Admin;
import model.AdminDAO;
import model.Database;

import java.io.IOException;

/**
 * Servlet implementation class Connex
 */
public class Connex extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Connex() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Database.Connect();
		
		boolean load=false;
		
		if(request.getParameter("btnco")==null) {
			
		}
		else {
			String login = request.getParameter("email");
			String mdp = request.getParameter("password");

			Admin seco =  new Admin(login,mdp);
			
			AdminDAO adao = new AdminDAO();
			Admin jesuisco = adao.Connexion(seco);
			
			if (jesuisco==null) {
				
				boolean co = false; 
				request.setAttribute("etat", co);
			}else {
				load=true;
				HttpSession session = request.getSession(true);
				
				String pseu = jesuisco.getNom();
				session.setAttribute("p", pseu);
				int privi = jesuisco.getId_privilege();
				session.setAttribute("droit", privi);
				//pour mon panier je dois faire le get id.
				int id = jesuisco.getId();
				session.setAttribute("ID", id);
				response.sendRedirect("IndexAdmin");
			}

		}
		
		if(!load) {
			request.getRequestDispatcher("connex.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
