package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
//import model.Categorie;
//import model.CategorieDAO;
import model.Commentaire;
import model.CommentaireDAO;
import model.Database;
import model.Ees;
import model.EesDAO;
import model.Fournisseur;
import model.FournisseurDAO;
import model.Produit;
import model.ProduitDAO;
import model.Souscategorie;
import model.SouscategorieDAO;
import model.VisiteDAO;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
//import java.sql.Date;
//import java.time.LocalDate;
import java.util.ArrayList;

/**
 * Servlet implementation class ModifierProduit
 */
public class ModifierProduit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierProduit() {
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

		int id=Integer.valueOf(request.getParameter("id"));
		
		Produit cproduit=produitdao.getById(id);
		
		VisiteDAO vdao = new VisiteDAO();
		
		int nbv = vdao.CountAllByProductId(id);
		
		CommentaireDAO cdao = new CommentaireDAO();
		
		SouscategorieDAO sdao = new SouscategorieDAO();
		
		ArrayList<Commentaire> coms = cdao.getAllByProdsAd(id);
		ArrayList<Commentaire> comsv = cdao.getAllByProds(id);
		int n = cdao.Moyenne(comsv);
		request.setAttribute("rate", n);
		
		ArrayList<Souscategorie> sscats = sdao.getAll();

		if(request.getParameter("bajouter")!=null ) {
			
			String titre=request.getParameter("titre");
			String desc=request.getParameter("description");
			String i1=request.getParameter("img");
			double prix=Double.parseDouble(request.getParameter("prix"));
			int qte=Integer.valueOf(request.getParameter("qte"));
			int qtecrit=Integer.valueOf(request.getParameter("qtecrit"));
//			Date n=Date.valueOf(LocalDate.now());
			boolean isPop = Boolean.parseBoolean( request.getParameter("isDel") );
			int id_categories=Integer.valueOf(request.getParameter("id_categories"));
			
			if(i1!=null && i1!="" && desc!=null && desc!="" && titre!=null && titre!="" && qte!=0 && qte>0 && qtecrit!=0 && qtecrit>0 && prix!=0 && prix>0) {
				
			cproduit.setTitre(titre);
			cproduit.setPresentation(desc);
			cproduit.setImg(i1);
			cproduit.setPrix(prix);
			cproduit.setStock(qte);
			cproduit.setStock_minimum(qtecrit);
			cproduit.setDel(isPop);
			cproduit.setId_s_cat(id_categories);
			
			produitdao.save(cproduit);
			System.out.println("EDIT OK");
			boolean messageok=true;
			request.setAttribute("messageok", messageok);}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
			
		}
		
		if(request.getParameter("idtodel")!=null ) {
			load=true;
			int idd= Integer.valueOf(request.getParameter("idtodel"));
			produitdao.deleteById(idd);
			response.sendRedirect("ProduitAdmin");
		}
	
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int idcom= Integer.valueOf(request.getParameter("idtohide"));
			cdao.hideById(idcom);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int idcom= Integer.valueOf(request.getParameter("idtounhide"));
			Commentaire c = cdao.getById(idcom);
			c.setDel(false);
			cdao.save(c);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodelcom")!=null) {
			load=true;
			int idcom= Integer.valueOf(request.getParameter("idtodelcom"));
			cdao.deleteById(idcom);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		Souscategorie cat = cproduit.getSCat();
		
		int qcom = 0;
		
		EesDAO ed = new EesDAO();
		
		if(request.getParameter("bajouterc")!=null ) {
			load=true;
			int q=Integer.valueOf(request.getParameter("qtec"));
			int id_f=Integer.valueOf(request.getParameter("id_f"));
			Date c=Date.valueOf(LocalDate.now());
			
			Ees e= new Ees(id, id_f, c, q);
			
			ed.save(e);
			System.out.println("EDIT OK");
			response.sendRedirect(request.getHeader("referer"));
			
		}
		
		ArrayList<Ees> e = ed.getAllAdbyP(id);
		
		for(Ees ees:e){ 
			if(ees.isDel()==true) {
			qcom+= 0;
			}else {
			qcom+= ees.getQte();
			}
		}
		
		FournisseurDAO fdao = new FournisseurDAO();
		
		ArrayList<Fournisseur> fours = fdao.getAll();
		
		ArrayList<Ees> eess = ed.getAllAdbyP(id);
		ArrayList<Ees> eesdel2 = ed.StByIdArPr(id);
		ArrayList<Ees> eesd1 = ed.HByIdArPr(id);
		if(eesd1.isEmpty()) {
			System.out.println("Null");
		}else {
			System.out.println("Not Null");	
			boolean recu=true;
			request.setAttribute("recu", recu);
		}//permet d'afficher qu'un produit doit etre ajouté au stock.
		
		request.setAttribute("eesdel2", eesdel2);
		request.setAttribute("eess", eess);
		request.setAttribute("fours", fours);
		request.setAttribute("qcom", qcom);
		request.setAttribute("coms", coms);
		request.setAttribute("v", nbv);
		request.setAttribute("sscats", sscats);
		request.setAttribute("cate", cat);
		request.setAttribute("cproduit", cproduit);
		if(!load) {
		request.getRequestDispatcher( "modifierProduit.jsp" ).forward( request, response );
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
