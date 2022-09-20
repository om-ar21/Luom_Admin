package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Admin;
import model.AdminDAO;
import model.Database;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class ModifierAdmin
 */
public class ModifierAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModifierAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession( true );
		boolean load=false;
		if(session.getAttribute("p")==null) {
			load=true;
            response.sendRedirect("Connex");
		}
		
		boolean messageok=false;
		
		Database.Connect();
		AdminDAO adao=new AdminDAO();

		int id=Integer.valueOf(request.getParameter("id"));
		
		if(session.getAttribute("droit")!=null) {
			int idcon = (int) session.getAttribute("ID");
			int dr = (int) session.getAttribute("droit");
			if(id!=idcon && dr!=1) {
				load=true;
				//si le time faire une page acces refusé.
	            response.sendRedirect("IndexAdmin");
			}else {
		
		Admin adm=adao.getById(id);

		if(request.getParameter("bmail")!=null ) {
			load=true;
			String m=request.getParameter("mail");
			
			adm.setEmail(m);
			
			
			adao.save(adm);
			System.out.println("EDIT OK");
			messageok=true;
			response.sendRedirect(request.getHeader("referer"));
			
		}
		
		if(request.getParameter("bmdp")!=null ) {
			load=true;
			String m=request.getParameter("new_password");
			
			adm.setMdp(m);
			
			
			adao.save(adm);
			System.out.println("EDIT OK");
			messageok=true;
			response.sendRedirect(request.getHeader("referer"));
			
		}
		
		if(request.getParameter("brole")!=null ) {
			load=true;
			int ur=Integer.valueOf(request.getParameter("user_role"));
			
			adm.setId_privilege(ur);
				
			adao.save(adm);
			System.out.println("EDIT OK");
			messageok=true;
			response.sendRedirect(request.getHeader("referer"));
			
		}
		
		if(request.getParameter("bnom")!=null ) {
			load=true;
			String n=request.getParameter("nom");
			
			adm.setNom(n);
			
			
			adao.save(adm);
			System.out.println("EDIT OK");
			messageok=true;
			response.sendRedirect(request.getHeader("referer"));
			
		}
		int drco = (int) session.getAttribute("droit");
		int idconnected = (int) session.getAttribute("ID");
		
		if(request.getParameter("bajouter")!=null && drco!=1) {//mess si le time.
			System.out.print("INTERDIT");
			}else if(request.getParameter("bajouter")!=null && drco==1) {
			load=true;
			
			boolean isPop = Boolean.parseBoolean( request.getParameter("isDel") );
			
			adm.setDel(isPop);
			if(adm.getId_privilege()==1) {
				if(adm.getId()!=idconnected) {
					System.out.println("tu peux pas faire une blague à ton collegue dommage");
				}else {
					adao.save(adm);
				}
			}else {
				adao.save(adm);
			}
			
			System.out.println("EDIT OK");
			messageok=true;
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodel")!=null && drco!=1) {//mess si le time.
			System.out.print("INTERDIT");
			}else if(request.getParameter("idtodel")!=null && drco==1) {
			load=true;
			int idd= Integer.valueOf(request.getParameter("idtodel"));
			
			if(adm.getId_privilege()==1) {
				if(adm.getId()!=idconnected) {
					System.out.println("tu peux pas faire une blague à ton collegue dommage");
				}else {
					adao.deleteById(idd);
				}
			}else {
				adao.deleteById(idd);
			}
			
			response.sendRedirect("Administrateur");
		}
	
		request.setAttribute("ad", adm);
		request.setAttribute("messageok", messageok);
		if(!load) {
		request.getRequestDispatcher( "modifierAdmin.jsp" ).forward( request, response );
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
