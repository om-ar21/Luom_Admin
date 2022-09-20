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
import model.ProduitDAO;
import model.SouscategorieDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class Cat
 */
public class Cat extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Cat() {
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
		
				
				int drco = (int) session.getAttribute("droit");
		CategorieDAO categoriedao = new CategorieDAO();
		ProduitDAO produitdao = new ProduitDAO();
		
		Categorie f = categoriedao.getById(6);
		
		SouscategorieDAO scat= new SouscategorieDAO();
		ArrayList<Categorie>cat = categoriedao.getAll();
		request.setAttribute("cat", cat);
		request.setAttribute("f", f);
		
		if(request.getParameter("delete")!=null && drco!=1) {//mess si le time.
			System.out.print("INTERDIT");
			}else if(request.getParameter("delete")!=null && drco==1) {
	            load=true;

	            
	            int id = Integer.valueOf(request.getParameter("delete"));

	            Categorie categd = categoriedao.getById(id);
	            if(categd.getId()!=6) {
	            	scat.deleteById(id);
		            categoriedao.deleteById(id);}
	    			
	            response.sendRedirect("Cat");
	        }
		 
		 
		 
	        if(request.getParameter("hide")!=null) {
	            load=true;
	            int id = Integer.valueOf(request.getParameter("hide"));
	            produitdao.hideAllByIdCat(id);
	            categoriedao.hideById(id);
	            scat.hideById(id);
	            response.sendRedirect("Cat");
	        }
	        if(request.getParameter("unhide")!=null) {
	            load=true;
	            int id = Integer.valueOf(request.getParameter("unhide"));
	            categoriedao.unhideById(id);
	            scat.unhideById(id);
	            produitdao.unhideAllByIdCat(id);
	            response.sendRedirect("Cat");
	        }
		
		if(!load) {
			
		
		request.getRequestDispatcher("cat.jsp").forward(request, response);
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
