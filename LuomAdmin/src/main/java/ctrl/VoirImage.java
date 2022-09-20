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

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class VoirImage
 */
public class VoirImage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VoirImage() {
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
		
		request.setAttribute("image", im);
		request.setAttribute("prods", prods);
		request.setAttribute("prd", prd);
		if(!load) {
		request.getRequestDispatcher( "voirImage.jsp" ).forward( request, response );}}}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
