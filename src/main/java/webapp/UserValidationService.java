package webapp;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserValidationService
{	
	public static boolean isUserValid(String username, String password)
	{
        User user = getUser(username);
        
        if (user != null && user.getpassword().equals(password))
		{
        	return true;
		}
        return false;
	}
	
	public static User getUser(String username)
	{
		User user = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM users WHERE username = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);

            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String userid = resultSet.getString("userid");
            	String password = resultSet.getString("password");
            	String firstName = resultSet.getString("firstName");
            	String lastName = resultSet.getString("lastName");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	
            	user = new User(id, userid, username, password, firstName, lastName, address, phone);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
	}
	
	public void insertUser(String username, String password)
	{
        Connection connection = Database.getConnection();

        String sql = "INSERT INTO users (username, password) VALUES (?, ?)";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.setString(2, password);
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
