package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Adresse;
import model.AdresseDAO;
import model.Commande;
import model.CommandeDAO;
import model.Commentaire;
import model.CommentaireDAO;
import model.Database;
import model.Favoris;
import model.FavorisDAO;
import model.Recherche;
import model.RechercheDAO;
import model.User;
import model.UserDAO;
import model.Visite;
import model.VisiteDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class Userdetail
 */
public class Userdetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Userdetail() {
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
		
		int iduser = Integer.valueOf(request.getParameter("iduser"));
		
		VisiteDAO vdao = new VisiteDAO();
		ArrayList<Visite> vis = vdao.getAllByUserId(iduser);
		request.setAttribute("vis", vis);
		
		UserDAO userdao = new UserDAO();
		AdresseDAO adressedao = new AdresseDAO();
		RechercheDAO recherchedao = new RechercheDAO();
		CommandeDAO commandedao = new CommandeDAO();
		User user = userdao.getById(iduser);
		ArrayList<Adresse> adr = adressedao.getAllByUserId(iduser);
		ArrayList<Recherche>rech = recherchedao.getAllByIdUser(iduser);
		ArrayList<Commande>cmd=commandedao.getAllById(iduser);
		
		CommentaireDAO cdao = new CommentaireDAO();
		ArrayList<Commentaire> coms = cdao.getAllByClAd(iduser);
		ArrayList<Commentaire> comsv = cdao.getAllByCl(iduser);
		int n = cdao.Moyenne(comsv);
		request.setAttribute("rate", n);
		
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
		
		FavorisDAO fdao = new FavorisDAO();
		ArrayList<Favoris> fav = fdao.getAllById(iduser);
		
		request.setAttribute("fav", fav);
		request.setAttribute("coms", coms);
		request.setAttribute("cmd", cmd);
		request.setAttribute("rech", rech);
		request.setAttribute("adr", adr);
		request.setAttribute("user", user);
		
		if(!load) {
		request.getRequestDispatcher("userdetail.jsp").forward(request, response);
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
