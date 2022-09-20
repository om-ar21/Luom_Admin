package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Database;
import model.Ees;
import model.EesDAO;
import model.Fournisseur;
import model.FournisseurDAO;
import model.Produit;
import model.ProduitDAO;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.util.ArrayList;

/**
 * Servlet implementation class InterfaceStock
 */
public class InterfaceStock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InterfaceStock() {
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
		
		int drco = (int) session.getAttribute("droit");
		int id=Integer.valueOf(request.getParameter("id"));
		
		FournisseurDAO f = new FournisseurDAO();
		Fournisseur four = f.getById(id);
		
		EesDAO edao=new EesDAO();
		ArrayList<Ees> eess = edao.getAllAdbyF(id);
		
		ProduitDAO pdao = new ProduitDAO();
		ArrayList<Produit> pds = pdao.getAllAd();
		
		if(request.getParameter("idtodel")!=null && drco!=1) {//mess si le time.
			System.out.print("INTERDIT");
			boolean interdit=true;
			request.setAttribute("interdit", interdit);
			}else if(request.getParameter("idtodel")!=null && drco==1) {
			load=true;
			int idf= Integer.valueOf(request.getParameter("idtodel"));
			
			 Fournisseur fdel = f.getById(idf);
	            if(fdel.getId()!=1) {
	            	f.DelById(idf);}
			
			response.sendRedirect("Four");
		}
		
		
		if(request.getParameter("bajouter")!=null ) {
			if(Integer.valueOf(request.getParameter("qte"))==0 || Integer.valueOf(request.getParameter("qte"))>0) {
				boolean messageno=true;
				request.setAttribute("messageno", messageno);
			}else {
			int q=Integer.valueOf(request.getParameter("qte"));
			int id_p=Integer.valueOf(request.getParameter("id_p"));
			
			Date n=Date.valueOf(LocalDate.now());
			if(q!=0 && q>0) {
			Ees e= new Ees(id_p, id, n, q);
			
			edao.save(e);
			System.out.println("EDIT OK");
			boolean messageok=true;
			request.setAttribute("messageok", messageok);}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
			}
			
		}
		
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int ide= Integer.valueOf(request.getParameter("idtohide"));
			edao.hideById(ide);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int ide= Integer.valueOf(request.getParameter("idtounhide"));
			Ees ebis = edao.getById(ide);
			ebis.setDel(false);
			edao.save(ebis);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodelees")!=null) {
			load=true;
			int ide= Integer.valueOf(request.getParameter("idtodel"));
			edao.deleteById(ide);
			response.sendRedirect(request.getHeader("referer"));
		}

		if(request.getParameter("add")!=null && request.getParameter("idp")!=null && request.getParameter("ide")!=null) {
			//faire un if et si session expirée redirect to index
			
			load=true;
			int idpr= Integer.valueOf(request.getParameter("idp"));
			int idee= Integer.valueOf(request.getParameter("ide"));
			int a= Integer.valueOf(request.getParameter("add"));
			Produit pr = pdao.getById(idpr);
			int s=pr.getStock();
			pr.setStock(s+a);
			
			edao.StById(idee);
			
			pdao.save(pr);
			
			//String idaredirect = String.valueOf(idpr);
			response.sendRedirect(request.getHeader("referer"));
			//response.sendRedirect("VoirProduit?id="+idaredirect);
		}
		
		ArrayList<Ees> eesdel2 = edao.StByIdArP(id);
		
		request.setAttribute("eesdel2", eesdel2);
		request.setAttribute("prods", pds);
		request.setAttribute("eess", eess);
		request.setAttribute("four", four);
		
		if(!load) {
		request.getRequestDispatcher( "interfaceStock.jsp" ).forward( request, response );
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
