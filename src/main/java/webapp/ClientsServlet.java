package webapp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/clients.do")
public class ClientsServlet extends HttpServlet {
	
	private ClientService clientService = new ClientService();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = ((User)request.getSession().getAttribute("user")).getusername();
		request.setAttribute("clients",ClientService.getClientsByUsername(username));
		request.getRequestDispatcher("/WEB-INF/views/user_report.jsp").forward(request, response);

}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
}
}
