package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import model.Database;
import model.Fournisseur;
import model.FournisseurDAO;

import java.io.IOException;

/**
 * Servlet implementation class ModifierFour
 */
public class ModifierFour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierFour() {
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
			if(dr==3 || dr==4) {
				load=true;
				//si le time faire une page acces refusé.
	            response.sendRedirect("IndexAdmin");
			}else {
		FournisseurDAO fdao = new FournisseurDAO();
		
		int id = Integer.valueOf(request.getParameter("id"));
		
		Fournisseur fou = fdao.getById(id);
		if(request.getParameter("btnmod")!=null) {
			int idamodif=Integer.valueOf(request.getParameter("btnmod"));
			boolean isDel = Boolean.parseBoolean( request.getParameter("isDel") );
			load=true;
			String titre = request.getParameter("titre");
			fou.setNom(titre);
			fou.setDel(isDel);
			fou.setId(idamodif);
			fdao.save(fou);
			response.sendRedirect("Four");
		}
		request.setAttribute("fou", fou);
		if(!load) {
			
		
		request.getRequestDispatcher("modifierFour.jsp").forward(request, response);
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
