package idv.yung.tool;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PathUtil {
	
	private static final String PATH = "/WEB-INF/index.jsp";

	public static void forward(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setAttribute("path", path(request));
		request.setAttribute("url", request.getContextPath() + request.getServletPath());
		request.setAttribute("form", form(request));
		request.getRequestDispatcher(PATH).forward(request, response);
	}

	private static String path(HttpServletRequest request) {
		String[] split = request.getServletPath().substring(1).split("-");
		return split[0] + File.separator + split[1];
	}
	
	private static String form(HttpServletRequest request) {
		String[] split = request.getServletPath().substring(1).split("-");
		return split[0] + File.separator + "form";
	}
	
//	private static String url(HttpServletRequest request) {
//		return request.getServletPath().split("-")[0] + request.getServletPath();
//	}
	
}
