package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Database;
import model.Slider;
import model.SliderDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class ModifierSlid
 */
public class ModifierSlid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierSlid() {
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
				
		SliderDAO sdao=new SliderDAO();

		int id=Integer.valueOf(request.getParameter("id"));
		
		Slider s = sdao.getById(id);
		
		if(request.getParameter("bajouter")!=null ) {
		
			String t=request.getParameter("titre");
			String i1=request.getParameter("img");
			String l=request.getParameter("lien");
			boolean isPop = Boolean.parseBoolean( request.getParameter("isDel") );
			
			if(i1!=null && i1!="" && t!=null && t!="" && l!=null && l!="") {
			s.setTitre(t);
			s.setImg(i1);
			s.setLien(l);
			s.setDel(isPop);
			
			sdao.save(s);
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
			sdao.deleteById(idd);
			response.sendRedirect("Slid");
		}
		
		request.setAttribute("sl", s);
		
		if(!load) {
		request.getRequestDispatcher( "modifierSlid.jsp" ).forward( request, response );
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
