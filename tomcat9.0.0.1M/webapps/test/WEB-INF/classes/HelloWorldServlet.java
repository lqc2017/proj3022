package test;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.xml.ws.Response;
public class HelloWorldServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("doGet");
		resp.getWriter().write("Writing");
	}
	
}
