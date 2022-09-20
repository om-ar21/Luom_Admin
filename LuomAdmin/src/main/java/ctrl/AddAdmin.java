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
 * Servlet implementation class AddAdmin
 */
public class AddAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddAdmin() {
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
			if(dr!=1) {
				load=true;
				//si le time faire une page acces refusé.
	            response.sendRedirect("IndexAdmin");
			}else {
		
		AdminDAO sdao=new AdminDAO();
		
		if(request.getParameter("bajouter")!=null ) {
			
			String t=request.getParameter("nom");
			String i1=request.getParameter("email");
			String l=request.getParameter("mdp");
			int r = Integer.valueOf(request.getParameter("user_role"));
			boolean isPop = Boolean.parseBoolean( request.getParameter("isDel") );
			
			if(t!=null && i1!=null && l!=null && t!="" && i1!="" && l!="") {
			Admin s = new Admin(t,i1,l,r,isPop);
			sdao.save(s);
			System.out.println("EDIT OK");
			boolean messageok=true;
			request.setAttribute("messageok", messageok);
			}else {
			boolean messagenope=true;
			request.setAttribute("messagenope", messagenope);
			}
		}
			}
		
		if(!load) {
		request.getRequestDispatcher( "addAdmin.jsp" ).forward( request, response );
		}
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
