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
 * Servlet implementation class ModifierScat
 */
public class ModifierScat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierScat() {
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
		
		SouscategorieDAO souscategoriedao = new SouscategorieDAO();
		CategorieDAO categoriedao = new CategorieDAO();
		int id = Integer.valueOf(request.getParameter("idscat"));
		request.setAttribute("idamodif", id);
		ArrayList<Categorie> cat = categoriedao.getAll();
		System.out.println(id);
		Souscategorie scat = souscategoriedao.getById(id);
		if(request.getParameter("btncat")!=null) {
			int idamodif=Integer.valueOf(request.getParameter("btncat"));
			int idcat=Integer.valueOf(request.getParameter("categ"));
			String titre = request.getParameter("titre");
			
			if(titre!=null && titre!="") {
			scat.setTitre(titre);
			scat.setId_cat(idcat);
			scat.setId(idamodif);
			souscategoriedao.save(scat);
			boolean messageok=true;
			request.setAttribute("messageok", messageok);
			}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
		}
		request.setAttribute("cat", cat);
		request.setAttribute("scat", scat);
		if(!load) {
			
		
		request.getRequestDispatcher("modifierscat.jsp").forward(request, response);
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
