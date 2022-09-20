package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Contact;
import model.ContactDAO;
import model.Database;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class Archive
 */
public class Archive extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Archive() {
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
			if(dr==2 || dr==3) {
				load=true;
				//si le time faire une page acces refusé.
	            response.sendRedirect("IndexAdmin");
			}else {
				
		int drco = (int) session.getAttribute("droit");
		
		ContactDAO cdao = new ContactDAO();
		
		if(request.getParameter("idtodel")!=null && drco!=1) {//mess si le time.
			System.out.print("INTERDIT");
			boolean interdit=true;
			request.setAttribute("interdit", interdit);
			}else if(request.getParameter("idtodel")!=null && drco==1) {
			load=true;
			
			
			int idc= Integer.valueOf(request.getParameter("idtodel"));
			
			Contact cadel = cdao.getById(idc);
			if(cadel.isDel()==true) {
			cdao.deleteById(idc);}
			
			boolean messageok=true;
			request.setAttribute("messageok", messageok);
			/*mais on ne le verra âs car je suis obligée de faire le send redirect. */
			response.sendRedirect("Archive");
		}
		
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int idc= Integer.valueOf(request.getParameter("idtohide"));
			cdao.Lu(idc);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int idc= Integer.valueOf(request.getParameter("idtounhide"));
			cdao.NotLu(idc);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idunarch")!=null) {
			load=true;
			int idc= Integer.valueOf(request.getParameter("idunarch"));
			cdao.unhideById(idc);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		int nm = cdao.getCountContacts();
		
		ArrayList<Contact> colcts = cdao.getAllHidden();
		
		request.setAttribute("cts", colcts);
		request.setAttribute("nm", nm);
		
		if(!load) {
		request.getRequestDispatcher("archive.jsp").forward(request, response);
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
