package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Commentaire;
import model.CommentaireDAO;
import model.Database;
import model.Produit;
import model.ProduitDAO;
import model.Souscategorie;
import model.SouscategorieDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class AddProduit
 */
public class AddProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduit() {
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
		
		ProduitDAO produitdao=new ProduitDAO();
		
		SouscategorieDAO sdao = new SouscategorieDAO();
		ArrayList<Souscategorie> sscats = sdao.getAll();

		if(request.getParameter("bajouter")!=null ) {
			
			String titre=request.getParameter("titre");
			String desc=request.getParameter("description");
			String i1=request.getParameter("img");
			double prix=Double.parseDouble(request.getParameter("prix"));
			int qte=Integer.valueOf(request.getParameter("qte"));
			int qtemin=Integer.valueOf(request.getParameter("qtemin"));
			
			if(i1!=null && i1!="" && desc!=null && desc!="" && titre!=null && titre!="" && qte!=0 && qte>0 && qtemin!=0 && qtemin>0 && prix!=0 && prix>0) {
			
//			Date n=Date.valueOf(LocalDate.now());
			boolean isPop = Boolean.parseBoolean( request.getParameter("isDel") );
			int id_categories=Integer.valueOf(request.getParameter("id_categories"));
			
			Produit p=new Produit(id_categories, titre, desc, i1, prix, qte, qtemin, isPop);
			produitdao.save(p);
			System.out.println("EDIT OK");
			boolean messageok=true;
			request.setAttribute("messageok", messageok);}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
			
		}
	
		request.setAttribute("sscats", sscats);
		if(!load) {
		request.getRequestDispatcher( "addProduit.jsp" ).forward( request, response );
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
