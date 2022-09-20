package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Admin;
import model.Database;
import model.Panier;
import model.Produit;
import model.ProduitDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class ProduitAdmin
 */
public class ProduitAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProduitAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//faire les verif d'url si le temps et dans le front aussi
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
		
		ProduitDAO produitdao = new ProduitDAO();
		
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int idprod= Integer.valueOf(request.getParameter("idtohide"));
			produitdao.hideById(idprod);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int idprod= Integer.valueOf(request.getParameter("idtounhide"));
			Produit p = produitdao.getById(idprod);
			p.setDel(false);
			produitdao.save(p);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodel")!=null) {
			load=true;
			int idprod= Integer.valueOf(request.getParameter("idtodel"));
			produitdao.deleteById(idprod);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		ArrayList<Produit> colprods = produitdao.getAllAd();
		
		request.setAttribute("prods", colprods);
		
		if(!load) {
		request.getRequestDispatcher("produit.jsp").forward(request, response);
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
