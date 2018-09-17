package webapp;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

import webapp.Database;
import webapp.Client;

public class ClientService {

	public static List<Client> getClients()
	{
		List<Client> clients = new ArrayList<Client>();
        Connection connection = Database.getConnection();
        

        String sql = "SELECT * FROM clients";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	clients.add(new Client(id, username, wo, address, phone, mileage, install));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return clients;
	}
	
	public static List<Client> getClientsByUsername(String username)
	{
		List<Client> clients = new ArrayList<Client>();
        Connection connection = Database.getConnection();
        

        String sql = "SELECT * FROM clients WHERE username = ? ORDER BY date";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String username1 = resultSet.getString("username");
            	String wo = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	clients.add(new Client( id, username1, wo, address, phone, mileage, install));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return clients;
	}
	
	public List<Client> getClientByID(int id)
	{
		List<Client> clients = new ArrayList<Client>();
        Connection connection = Database.getConnection();
        

        String sql = "SELECT * FROM clients WHERE id = ? ORDER BY date";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
            	String username = resultSet.getString("username");
            	String wo = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	clients.add(new Client(username, wo, address, phone, mileage, install));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return clients;
	}
	public Client getClientsByID(int id)
	{
		Client client = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM clients WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, id);
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id1 = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo1 = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	client = new Client(id1, username, wo1, address, phone, mileage, install);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return client;
	}	
	public static List<Client> getClientByWO(String x)
	{
		List<Client> clients = new ArrayList<Client>();
        Connection connection = Database.getConnection();
        

        String sql = "SELECT * FROM clients WHERE wo = ? ORDER BY date";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, x);
            ResultSet resultSet = statement.executeQuery();

            while(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	clients.add(new Client(id, username, wo, address, phone, mileage, install));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return clients;
	}
	
	/*public static Client getClientByWO(String x)
	{
		Client clients = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM clients WHERE wo = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, x);
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo1 = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	clients = new Client(id, username, wo1, address, phone, mileage, install);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return clients;
	}*/
	
	public Client getClientByAddress(String address)
	{
		Client client = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM clients WHERE address = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, address);
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo = resultSet.getString("wo");
            	String address1 = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	client = new Client(id, username, wo, address1, phone, mileage, install);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return client;
	}
	
	public Client getClientByPhone(String phone)
	{
		Client client = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM clients WHERE phone = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, phone);
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone1 = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	client = new Client(id, username, wo, address, phone1, mileage, install);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return client;
	}
	public static Client getClientByAll(String x)
	{
		Client clients = null;
        Connection connection = Database.getConnection();

        String sql = "SELECT * FROM clients WHERE wo = ? or phone = ? or address = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, x);
/*            statement.setString(2, x);
            statement.setString(3, x);*/
            
            ResultSet resultSet = statement.executeQuery();

            if(resultSet.next()) {
            	int id = resultSet.getInt("id");
            	String username = resultSet.getString("username");
            	String wo = resultSet.getString("wo");
            	String address = resultSet.getString("address");
            	String phone = resultSet.getString("phone");
            	String mileage = resultSet.getString("mileage");
            	String install = resultSet.getString("install");
            	clients = new Client(id, username, wo, address, phone, mileage, install);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

		return clients;
	}
	
	public static void insertClient(Client client)
	{
        Connection connection = Database.getConnection();

        String sql = "INSERT INTO clients (username, wo, address, phone, mileage, install) VALUES (?, ?, ?, ?, ?, ?)";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, client.getUsername());
            statement.setString(2, client.getWO());
            statement.setString(3, client.getAddress());
            statement.setString(4, client.getPhone());
            statement.setString(5, client.getMileage());
            statement.setString(6, client.getinstall());
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public void updateClient(Client client)
	{
        Connection connection = Database.getConnection();

        String sql = "UPDATE clients SET username = ?, wo = ?, address = ?, phone = ?, mileage = ?, install = ? WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);


            statement.setString(1, client.getUsername());
            statement.setString(2, client.getWO());
            statement.setString(3, client.getAddress());
            statement.setString(4, client.getPhone());
            statement.setString(5, client.getMileage());
            statement.setString(6, client.getinstall());
            statement.setInt(7, client.getID());
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}
	
	public void deleteClient(int id)
	{
        Connection connection = Database.getConnection();

        String sql = "DELETE FROM clients WHERE id = ?";

        try {
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setInt(1, id);
            
            statement.execute();

        } catch (SQLException e) {
            e.printStackTrace();
        }
	}


}
