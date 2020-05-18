package idv.yung.profolio.gold;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import idv.yung.tool.GsonUtil;
import idv.yung.tool.HBUtil;
import idv.yung.tool.PathUtil;

@WebServlet( "/gold-list" )
public class GoldList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		PathUtil.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		
		Session session = HBUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("data", session.createQuery("from Gold").getResultList());
		String jsonString = GsonUtil.toJson(session.createQuery("from Gold").getResultList());
		session.getTransaction().commit();
		
		out.print(jsonString);
		out.flush();
	}
	
	@SuppressWarnings("unused")
	private String test_data() {
		return ""
				  + "["
				  + "{" 
			      + "\"name\": \"Tiger Nixon\","
			      + "\"position\": \"System Architect\","
			      + "\"office\": \"Edinburgh\","
			      + "\"age\": \"15\","
			      + "\"date\": \"2011/04/25\","
			      + "\"salary\": \"$320,800\""
			      + "},"
			      + "{" 
			      + "\"name\": \"Miller Josh\","
			      + "\"position\": \"System Architect\","
			      + "\"office\": \"Edinburgh\","
			      + "\"age\": \"15\","
			      + "\"date\": \"2011/04/25\","
			      + "\"salary\": \"$320,800\""
			      + "}"
			      + "]";
	}
}
