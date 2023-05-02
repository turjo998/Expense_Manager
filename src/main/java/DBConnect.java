import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

    Connection conn;
    public void doConnectDB() {
        String connectionStr = "jdbc:mysql://localhost:3306/expenseManagerDB";
        String user = "root";
        String password = "";

        // Connect to the database

        {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(connectionStr, user, password);

                System.out.print("DB Connection is seccussful!");
            } catch (SQLException e) {
                throw new RuntimeException(e);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }

    }

    public static void main(String[] args) {
        DBConnect ob = new DBConnect();
        ob.doConnectDB();
    }

}