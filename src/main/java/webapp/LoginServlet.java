package webapp;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webapp.User;

@WebServlet(urlPatterns = "/login.do")
public class LoginServlet extends HttpServlet {

	private UserValidationService service = new UserValidationService();
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean isUserValid = false;
		try {
			isUserValid = UserValidationService.isUserValid(username, password);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if (isUserValid) {
			User user = null;
			try {
				user = UserValidationService.getUser(username);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.getSession().setAttribute("user", user);
			String admin = ((User)request.getSession().getAttribute("user")).getusername();
			if (admin.equals("Admin")) {
				request.setAttribute("users",UserService.getUsers());
				request.getRequestDispatcher("/WEB-INF/views/admin.jsp").forward(request, response);				
			}
			else {
				request.setAttribute("users",UserService.getUsers());
				request.getRequestDispatcher("/WEB-INF/views/welcome.jsp").forward(request, response);
			}
		}
		else {
			request.setAttribute("errorMessage", "Invalid Credentials");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
		}	
	}
	
}
