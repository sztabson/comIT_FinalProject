package webapp;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    
    public static void main(String[] args) {
        Database database = new Database();
        System.out.println(Database.getConnection());
   }
    private static Connection connection;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                System.out.println("Found JDBC Driver!");
                connection = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/comit",
                       "root",
                       "Nantes11");
                System.out.println("Successfully connected to the DB!");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                System.err.println("Could not find JDBC Driver.");
            }
            catch (SQLException e) {
               e.printStackTrace();
               System.err.println("Cannot connect to the DB.");
            }
        }
        return connection;
    }
}
