package dal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
/**
 *
 * @author FPT University - PRJ301
 */
public class DBContext {

    public DBContext() {
    }

    private static Connection connection = null;

    static {

        try {
            String user = System.getenv("SQL_USERNAME");
            String pass = System.getenv("SQL_PASSWORD");
            String url = "jdbc:sqlserver://" + System.getenv("SQL_SERVER_NAME") + ""
                    + "\\SQLEXPRESS:" + System.getenv("SQL_EXPRESS_NAME") + ";"
                    + "databaseName=" + System.getenv("SQL_DATABASE_NAME");
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Connection connection() {
        return connection;
    }
}
