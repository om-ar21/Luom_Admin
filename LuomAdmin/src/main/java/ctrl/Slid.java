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
 * Servlet implementation class Slid
 */
public class Slid extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Slid() {
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
				//si le time faire une page acces refus�.
	            response.sendRedirect("IndexAdmin");
			}else {
		
		SliderDAO sdao = new SliderDAO();
		
		if(request.getParameter("idtohide")!=null) {
			load=true;
			int idslid= Integer.valueOf(request.getParameter("idtohide"));
			sdao.hideById(idslid);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtounhide")!=null) {
			load=true;
			int idslid= Integer.valueOf(request.getParameter("idtounhide"));
			Slider s = sdao.getById(idslid);
			s.setDel(false);
			sdao.save(s);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		if(request.getParameter("idtodel")!=null) {
			load=true;
			int idslid= Integer.valueOf(request.getParameter("idtodel"));
			sdao.deleteById(idslid);
			response.sendRedirect(request.getHeader("referer"));
		}
		
		ArrayList<Slider> colslds = sdao.getAllAd();
		
		request.setAttribute("slds", colslds);
		
		if(!load) {
		request.getRequestDispatcher("slider.jsp").forward(request, response);
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
