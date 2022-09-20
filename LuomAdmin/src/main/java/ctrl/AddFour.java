package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Database;
import model.Fournisseur;
import model.FournisseurDAO;

import java.io.IOException;

/**
 * Servlet implementation class AddFour
 */
public class AddFour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddFour() {
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
		
		FournisseurDAO fdao = new FournisseurDAO();
		Fournisseur fou = new Fournisseur();
		
		if(request.getParameter("btnmod")!=null) {
			
			String titre = request.getParameter("titre");
			
			if(titre!=null && titre!="") {
				boolean messageok=true;
			boolean isDel = Boolean.parseBoolean( request.getParameter("isDel") );
			request.setAttribute("messageok", messageok);
			fou.setNom(titre);
			fou.setDel(isDel);
			fdao.save(fou);}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
			
		}
		request.setAttribute("fou", fou);
		if(!load) {
			
		
		request.getRequestDispatcher("addFour.jsp").forward(request, response);
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
