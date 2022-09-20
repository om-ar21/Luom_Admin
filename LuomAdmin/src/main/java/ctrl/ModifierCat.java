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

import java.io.IOException;

/**
 * Servlet implementation class ModifierCat
 */
public class ModifierCat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierCat() {
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
		int id = Integer.valueOf(request.getParameter("idcat"));
		request.setAttribute("idamodif", id);
		System.out.println(id);
		Categorie cat = categoriedao.getById(id);
		if(request.getParameter("btncat")!=null) {
			int idamodif=Integer.valueOf(request.getParameter("btncat"));
			
			String titre = request.getParameter("titre");
			if(titre!=null && titre!="") {
			boolean messageok=true;
			request.setAttribute("messageok", messageok);
			cat.setTitre(titre);
			cat.setId(idamodif);
			categoriedao.save(cat);}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
		}
		request.setAttribute("cat", cat);
		if(!load) {
			
		
		request.getRequestDispatcher("modifiercat.jsp").forward(request, response);
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
