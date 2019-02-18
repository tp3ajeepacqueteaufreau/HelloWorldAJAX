package org.mines.douai.tp.j2ee.pacqueteau_freau;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JSPYellowJacketServlet
 */
@WebServlet("/JSPYellowJacketServlet")
public class JSPYellowJacketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public JSPYellowJacketServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
