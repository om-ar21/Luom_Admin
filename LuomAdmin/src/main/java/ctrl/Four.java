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
import java.util.ArrayList;

/**
 * Servlet implementation class Four
 */
public class Four extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Four() {
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
				
		FournisseurDAO fdao = new FournisseurDAO();
		
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int idf= Integer.valueOf(request.getParameter("idtohide"));
			fdao.hideById(idf);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int idf= Integer.valueOf(request.getParameter("idtounhide"));
			Fournisseur p = fdao.getById(idf);
			p.setDel(false);
			
            if(p.getId()!=1) {
            	fdao.save(p);}
			
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodel")!=null && drco!=1) {//mess si le time.
			System.out.print("INTERDIT");
			boolean interdit=true;
			request.setAttribute("interdit", interdit);
			}else if(request.getParameter("idtodel")!=null && drco==1) {
			load=true;
			int idf= Integer.valueOf(request.getParameter("idtodel"));
			
			 Fournisseur fdel = fdao.getById(idf);
	            if(fdel.getId()!=1) {
	            	fdao.DelById(idf);}
			
			response.sendRedirect(request.getHeader("referer"));
		}
		
		ArrayList<Fournisseur> colfours = fdao.getAllAd();
		
		request.setAttribute("fours", colfours);
		
		if(!load) {
		request.getRequestDispatcher("fournisseur.jsp").forward(request, response);
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
