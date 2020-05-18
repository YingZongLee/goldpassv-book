package idv.yung.profolio.gold;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;

import idv.yung.tool.FileUtil;
import idv.yung.tool.HBUtil;
import idv.yung.tool.PathUtil;

@WebServlet("/gold-upload")
@MultipartConfig
public class GoldUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		PathUtil.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		FileUtil.read(request.getParts());
		Session session = HBUtil.getSessionFactory().getCurrentSession();
		session.beginTransaction();
		render(FileUtil.read(request.getParts()), session);
		session.getTransaction().commit();
//		HBUtil.close();
	}
	
	private void render(List<List<String>> lList, Session session) {
		session.createQuery("delete from Gold").executeUpdate();
		for(int _r = 1 ; _r < lList.size() ; _r++) {
			// currency
			lList.get(_r).set(1, getCurrency(lList.get(_r).get(1)));
			// weight
			lList.get(_r).set(2, getWeight(lList.get(_r).get(2)));
//			System.out.println(lList.get(_r).toString());
			session.save(new Gold(lList.get(_r)));
		}
	}
	
	private String getCurrency(String currency) {
		return currency.substring(currency.indexOf("(")+1, currency.length()-1);
	}
	
	private String getWeight(String weight) {
		return weight.substring(0, 1);
	}
}
