package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Coordonnees;
import model.CoordonneesDAO;
import model.Database;

import java.io.IOException;

/**
 * Servlet implementation class Modifiercord
 */
public class Modifiercord extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Modifiercord() {
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
			if(dr!=1) {
				load=true;
				//si le time faire une page acces refusé.
	            response.sendRedirect("IndexAdmin");
			}else {
				
		CoordonneesDAO crd = new CoordonneesDAO();
		Coordonnees cord = crd.getById(1);
		
		if(request.getParameter("btncord")!=null) {
			
			String nom = request.getParameter("nom");
			String adresse = request.getParameter("adresse");
			String tel = request.getParameter("tel");
			String email = request.getParameter("email");
			String logo = request.getParameter("logo");
			
			if(nom!=null && nom!="" && adresse!=null && adresse!="" && tel!=null && tel!="" && email!=null && email!="" && logo!=null && logo!="") {
			cord.setId(1);
			cord.setNom(nom);
			cord.setAdresse(adresse);
			cord.setTel(tel);
			cord.setEmail(email);
			cord.setLogo(logo);
			crd.save(cord);
			boolean messageok=true;
			request.setAttribute("messageok", messageok);}else {
				boolean messagenope=true;
				request.setAttribute("messagenope", messagenope);
			}
			
		}
		request.setAttribute("cord", cord);
		if(!load) {
			request.getRequestDispatcher("modifiercord.jsp").forward(request, response);
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
