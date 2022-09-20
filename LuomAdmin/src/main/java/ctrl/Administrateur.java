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
import java.util.ArrayList;

/**
 * Servlet implementation class Administrateur
 */
public class Administrateur extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Administrateur() {
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
		
		AdminDAO adao = new AdminDAO();
		
		
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int idad= Integer.valueOf(request.getParameter("idtohide"));
			
			int idconnected = (int) session.getAttribute("ID");
			
			Admin acacher = adao.getById(idad);
			
			if(acacher.getId_privilege()==1) {
				if(idad!=idconnected) {
					System.out.println("tu peux pas faire une blague à ton collegue dommage");
				}else {
					adao.hideById(idad);
				}
			}else {
				adao.hideById(idad);
			}
			
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int idad= Integer.valueOf(request.getParameter("idtounhide"));
			Admin a = adao.getById(idad);
			a.setDel(false);
			adao.save(a);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodel")!=null) {
			load=true;
			int idad= Integer.valueOf(request.getParameter("idtodel"));
			
			int idconnected = (int) session.getAttribute("ID");
			Admin acacher = adao.getById(idad);
			
			if(acacher.getId_privilege()==1) {
				if(idad!=idconnected) {
					System.out.println("tu peux pas faire une blague à ton collegue dommage");
				}else {
					adao.deleteById(idad);
				}
			}else {
				adao.deleteById(idad);
			}
			
			response.sendRedirect(request.getHeader("referer"));
		}
		
		ArrayList<Admin> colads = adao.getAllAd();
		
		request.setAttribute("ads", colads);
		
		if(!load) {
		request.getRequestDispatcher("administrateur.jsp").forward(request, response);
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
