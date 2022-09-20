package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Database;
import model.Produit;
import model.ProduitDAO;
import model.Visite;
import model.VisiteDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class IndexAdmin
 */
public class IndexAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession( true );
		boolean load=false;
		if(session.getAttribute("p")==null) {
			load=true;
            response.sendRedirect("Connex");
		}
		
		Database.Connect();
		
		ProduitDAO pdao = new ProduitDAO();
		
		VisiteDAO vd = new VisiteDAO();
		
		ArrayList<Produit> prods = pdao.getAllAdCrit();
		ArrayList<Produit> prodsv = pdao.getAllAd();
		
		ArrayList<Visite> v = vd.getAll();
		
		String char_prods_ref="";
		String char_prods_refv="";
		String char_prods_nbr="";
		String char_prods_nbrv="";
		
		int nb = pdao.getCountProduits();
		
		for(Produit p:prods){ 
			char_prods_ref+= "'"+p.getId()+"',";
			
			char_prods_nbr+= pdao.getCountProduitsById(p.getId())+",";
		
		}
		
		for(Produit p:prodsv){ 
			char_prods_refv+= "'"+p.getId()+"',";
			
			char_prods_nbrv+= vd.getCountProduitsById(p.getId())+",";
		
		}
		request.setAttribute("char_prods_ref", char_prods_ref);
		request.setAttribute("char_prods_nbr", char_prods_nbr);
		request.setAttribute("char_prods_refv", char_prods_refv);
		request.setAttribute("char_prods_nbrv", char_prods_nbrv);
		request.setAttribute("nb", nb);
		
		
		if(!load) {
		request.getRequestDispatcher("index.jsp").forward(request, response);
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
