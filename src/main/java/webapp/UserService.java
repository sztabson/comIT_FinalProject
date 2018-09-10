package webapp;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import webapp.Database;
import webapp.User;

public class UserService {

	public static List<User> getUsers()
	{
		List<User> users = new ArrayList<User>();
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM users";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String userid = resultSet.getString("userid");
            	String username = resultSet.getString("username");
            	String password = resultSet.getString("password");
            	String firstname = resultSet.getString("firstname");
            	String lastname = resultSet.getString("lastname");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	users.add(new User(id, userid, username, password, firstname, lastname, address, phone));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return users;
	}
	
	public User getUserByUserName(String username)
	{
		User user = null;
        Connection connection = Database.getConnection();
        //SELECT * FROM users WHERE firstname like "%?%"; do wyszukiwarki
        String sql = "SELECT * FROM users WHERE username = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String userid = resultSet.getString("userid");
            	String username1 = resultSet.getString("username");
            	String password = resultSet.getString("password");
            	String firstname = resultSet.getString("firstname");
            	String lastname = resultSet.getString("lastname");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	user = new User(id, userid, username1, password, firstname, lastname, address, phone);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return user;
	}
	
	public static User getUserByID(int id)
	{
		User user = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM users WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, id);
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id1 = resultSet.getInt("id");
            	String userid = resultSet.getString("userid");
            	String username1 = resultSet.getString("username");
            	String password = resultSet.getString("password");
            	String firstname = resultSet.getString("firstname");
            	String lastname = resultSet.getString("lastname");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	user = new User(id1, userid, username1, password, firstname, lastname, address, phone);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return user;
	}
	public User getUsersByID(int id)
	{
		User user = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM users WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, id);
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id1 = resultSet.getInt("id");
            	String userid = resultSet.getString("userid");
            	String username1 = resultSet.getString("username");
            	String password = resultSet.getString("password");
            	String firstname = resultSet.getString("firstname");
            	String lastname = resultSet.getString("lastname");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	user = new User(id1, userid, username1, password, firstname, lastname, address, phone);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return user;
	}
	
	public static void insertUser(User user)
	{
        Connection connection = Database.getConnection();

        String sql = "INSERT INTO users (userid, username, password, firstname, lastname, address, phone) VALUES (?, ?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);


            statement.setString(1, user.getuserid());
            statement.setString(2, user.getusername());
            statement.setString(3, user.getpassword());
            statement.setString(4, user.getfirstname());
            statement.setString(5, user.getlastname());
            statement.setString(6, user.getaddress());
            statement.setString(7, user.getphone());
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public void updateUser(User user)
	{
        Connection connection = Database.getConnection();

        String sql = "UPDATE users SET userid = ?, username = ?, password = ?, firstname = ?, lastname = ?, address = ?, phone = ? WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);


            statement.setString(1, user.getuserid());
            statement.setString(2, user.getusername());
            statement.setString(3, user.getpassword());
            statement.setString(4, user.getfirstname());
            statement.setString(5, user.getlastname());
            statement.setString(6, user.getaddress());
            statement.setString(7, user.getphone());
            statement.setInt(8, user.getid());
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public void deleteUser(int id)
	{
        Connection connection = Database.getConnection();

        String sql = "DELETE FROM users WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, id);
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
