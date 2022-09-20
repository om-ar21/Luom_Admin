package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Database;
import model.Image;
import model.ImageDAO;
import model.Produit;
import model.ProduitDAO;
import model.Souscategorie;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class ModifierImage
 */
public class ModifierImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierImage() {
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
				
		ImageDAO idao=new ImageDAO();

		int id=Integer.valueOf(request.getParameter("id"));
		
		Image im = idao.getById(id);
		
		ProduitDAO pdao=new ProduitDAO();
		
		Produit prd = pdao.getById(im.getId_produit());
		
		ArrayList<Produit> prods = pdao.getAll();
		
		if(request.getParameter("bajouter")!=null ) {
			
			String i1=request.getParameter("img");
			boolean isPop = Boolean.parseBoolean( request.getParameter("isDel") );
			int idp=Integer.valueOf(request.getParameter("id_prods"));
			
			if(i1!=null && i1!="") {
			im.setLien(i1);
			im.setDel(isPop);
			im.setId_produit(idp);
			
			idao.save(im);
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
			idao.deleteById(idd);
			response.sendRedirect("ProduitAdmin");
		}
		
		request.setAttribute("image", im);
		request.setAttribute("prods", prods);
		request.setAttribute("prd", prd);
		
		if(!load) {
		request.getRequestDispatcher( "modifierImage.jsp" ).forward( request, response );
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
