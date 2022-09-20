package ctrl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Database;
import model.Detail;
import model.DetailDAO;

import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class Detailcmd
 */
public class Detailcmd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Detailcmd() {
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
		
		int idc = Integer.valueOf(request.getParameter("idc"));
		ArrayList<Detail> dc= detail.getAllByCommande(idc);
		if(request.getParameter("del")!=null) {
			load=true;
			int id = Integer.valueOf(request.getParameter("del"));
			int idcom = Integer.valueOf(request.getParameter("idc"));
			detail.hideById(id);
			response.sendRedirect("Detailcmd"+"?idc="+idcom);
		}
		if(request.getParameter("add")!=null) {
			load=true;
			int id = Integer.valueOf(request.getParameter("add"));
			int idcom = Integer.valueOf(request.getParameter("idc"));
			detail.addById(id);
			response.sendRedirect("Detailcmd"+"?idc="+idcom);
		}
		
		request.setAttribute("dc", dc);
		if(!load) {
		request.getRequestDispatcher("detailcmd.jsp").forward(request, response);}}}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
