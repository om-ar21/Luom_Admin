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
import model.SouscategorieDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class AddImage
 */
public class AddImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddImage() {
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
		int id=Integer.valueOf(request.getParameter("id"));
		
		ProduitDAO produitdao=new ProduitDAO();
		Produit cproduit=produitdao.getById(id);
		
		ImageDAO idao = new ImageDAO();
		ArrayList<Image> limg = idao.getByIdprod(id);
		
		SouscategorieDAO sdao = new SouscategorieDAO();
		ArrayList<Souscategorie> sscats = sdao.getAll();

		if(request.getParameter("bajouter")!=null ) {
			
			String i1=request.getParameter("img");
			
			if(i1!=null && i1!="") {
			boolean messageok=true;
			request.setAttribute("messageok", messageok);
			boolean isDel = Boolean.parseBoolean( request.getParameter("isDeleted") );
			Image img= new Image(id,i1,isDel);
			idao.save(img);
			load=true;
			response.sendRedirect(request.getHeader("referer"));
			//obligée pour que l'image apparaisse.
			System.out.println("EDIT OK");}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
		}
		
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int idi= Integer.valueOf(request.getParameter("idtohide"));
			idao.hideById(idi);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int idi= Integer.valueOf(request.getParameter("idtounhide"));
			Image i = idao.getById(idi);
			i.setDel(false);
			idao.save(i);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodel")!=null && drco!=1) {//mess si le time.
		System.out.print("INTERDIT");
		boolean interdit=true;
		request.setAttribute("interdit", interdit);
		}else if(request.getParameter("idtodel")!=null && drco==1) {
			load=true;
			int idi= Integer.valueOf(request.getParameter("idtodel"));
			idao.deleteById(idi);
			response.sendRedirect(request.getHeader("referer"));
		}

		Souscategorie cat = cproduit.getSCat();
		
		request.setAttribute("sscats", sscats);
		request.setAttribute("imgs", limg);
		request.setAttribute("cate", cat);
		request.setAttribute("cproduit", cproduit);
		
		if(!load) {
		request.getRequestDispatcher( "addImage.jsp" ).forward( request, response );
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
