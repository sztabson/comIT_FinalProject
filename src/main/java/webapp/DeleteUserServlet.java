package webapp;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns="/delete_user.do")
public class DeleteUserServlet extends HttpServlet {
	
	private UserService UserService = new UserService();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id = Integer.parseInt(request.getParameter("id"));
		
		UserService.deleteUser(id);

		request.setAttribute("users", UserService.getUsers());
		request.getRequestDispatcher("/WEB-INF/views/users.jsp").forward(request, response);
	}
}