package webapp;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/edit_client.do")
public class EditClientServlet extends HttpServlet {
	
	private ClientService ClientService = new ClientService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("client",ClientService.getClientsByID(id));
		request.getRequestDispatcher("/WEB-INF/views/edit_client.jsp").forward(request, response);
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		String username = ((User)request.getSession().getAttribute("user")).getusername();
		String wo = request.getParameter("wo");
		String address = request.getParameter("address");
		String phone = request.getParameter("phone");
		String mileage = request.getParameter("mileage");
		
		Client client = new Client(id, username, wo, address, phone, mileage);
		
		ClientService.updateClient(client);

		String username1 = ((User)request.getSession().getAttribute("user")).getusername();
		request.setAttribute("clients",ClientService.getClientsByUsername(username1));
		request.getRequestDispatcher("/WEB-INF/views/user_report.jsp").forward(request, response);

	}
}