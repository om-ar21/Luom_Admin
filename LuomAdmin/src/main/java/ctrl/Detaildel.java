package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Commande;
import model.CommandeDAO;
import model.Database;
import model.Detail;
import model.DetailDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class Detaildel
 */
public class Detaildel extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Detaildel() {
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
		
		DetailDAO detail = new DetailDAO();
		int idc = Integer.valueOf(request.getParameter("idsup"));
		ArrayList<Detail> dc= detail.getAllByCommande(idc);
		CommandeDAO cd = new CommandeDAO();
		Commande c = cd.getById(idc);
		System.out.print(c.isDelbis());
		request.setAttribute("c", c.isDelbis());
		request.setAttribute("dc", dc);
		if(!load) {
		request.getRequestDispatcher("detaildel.jsp").forward(request, response);}}}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
