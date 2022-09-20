package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Categorie;
import model.CategorieDAO;
import model.Database;
import model.Souscategorie;
import model.SouscategorieDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class AddScat
 */
public class AddScat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddScat() {
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
			if(dr==4) {
				load=true;
				//si le time faire une page acces refusé.
	            response.sendRedirect("IndexAdmin");
			}else {
				
		CategorieDAO categoriedao = new CategorieDAO();
		ArrayList<Categorie> cat = categoriedao.getAll();
		
		if(request.getParameter("addscat")!=null) {
			
			SouscategorieDAO souscategoriedao = new SouscategorieDAO();
			Souscategorie scat = new Souscategorie();
			String titre = request.getParameter("titre");
			
			if(titre!=null && titre!="") {
			int idcat=Integer.valueOf(request.getParameter("categ"));
			boolean isPop = Boolean.parseBoolean( request.getParameter("isDel") );
			scat.setTitre(titre);
			scat.setDel(isPop);
			scat.setId_cat(idcat);
			souscategoriedao.save(scat);
			boolean messageok=true;
			request.setAttribute("messageok", messageok);}else{
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
			
			
		}
		request.setAttribute("cat", cat);
		if(!load) {
			
		
		request.getRequestDispatcher("addscat.jsp").forward(request, response);
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
