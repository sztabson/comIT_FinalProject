package webapp;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClientValidationService
{	
	public static boolean isClientValid(int id)
	{
        Client client = getClient(id);
        
        if (client != null)
		{
        	return true;
		}
        return false;
	}
	
	public static Client getClient(int id)
	{
		Client client = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM clients WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setLong(1, id);

            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
            	int id1 = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo1 = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	client = new Client(id1, username, wo1, address, phone, mileage);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return client;
	}
	
	public void insertClient(int id)
	{
        Connection connection = Database.getConnection();

        String sql = "INSERT INTO clients (id) VALUES (?)";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setLong(1, id);
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
}
