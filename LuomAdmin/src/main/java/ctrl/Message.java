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
 * Servlet implementation class Message
 */
public class Message extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Message() {
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
				//si le time faire une page acces refusé ou alors juste une alerte.
	            response.sendRedirect("IndexAdmin");
			}else {
		
		ContactDAO cdao=new ContactDAO();

		int id=Integer.valueOf(request.getParameter("id"));
		
		Contact c = cdao.getById(id);
		cdao.Lu(id);
		
		ArrayList<Contact> cts = cdao.getAllAd();
		
		//je le fais sur tout les messages pour ne pas faire deux servlet car sinon la liste serait getAll pour la boite de recep
		//et getAllHidden pour les messages archivés
		
		ArrayList<Integer> array = new ArrayList<Integer>();
		for(Contact ct:cts) {
			int idl = ct.getId();
			array.add(idl);
		}
		int monmess = array.indexOf(id);
		
		int last = cdao.getCountAllContacts();
		
		//int lm = array.indexOf(last-1);//cas de l'avant dernier a ne pas oublier
		int lastplusone = last+1;
		
		int idsuiv=lastplusone;
		int idprec=0;
		
		if((monmess-1)==-1)
		{idprec=array.get(array.size()-1);}else {
		idprec = array.get(monmess-1);
		
		}
		
		if(monmess==last-1){
		idsuiv = array.get(0);
		}else if(monmess<last-1){
		idsuiv = array.get(monmess+1);
		
		}
		
		//ajouter plus un pour avoir le suivant et moins un le precedent.
		
		int nm = cdao.getCountContacts();
		request.setAttribute("nm", nm);
		
		request.setAttribute("index", monmess+1);
		request.setAttribute("idprec", idprec);
		request.setAttribute("idsuiv", idsuiv);
		request.setAttribute("last", last);
		request.setAttribute("last1", lastplusone);
		
		System.out.print(monmess+""+idprec+""+idsuiv+""+last+""+lastplusone);
		request.setAttribute("c", c);
		if(!load) {
		request.getRequestDispatcher( "message.jsp" ).forward( request, response );}}}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
