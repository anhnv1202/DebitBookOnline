/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utilities;

/**
 *
 * @author phanv
 */
public class GlobalConstants {

    private GlobalConstants() {
        throw new IllegalStateException("Utility class");
    }
    
    //Generate key
    public static final String GLOBAL_GENERATE_KEY="ODB_Group1";
     // Google ReCaptcha
    public static final String GOOGLE_RECAPTCHA_SITE_KEY = "6LfmnoEkAAAAABOUgIhNz6MpA-xs2ABmGyRc3225";
    public static final String GOOGLE_RECAPTCHA_SECRET_KEY = "6LfmnoEkAAAAAKOsjUoLCveSkAk4CHgLeWMxLEIl";
    // SMTP Account
    public static final String SMTP_HOST = "smtp.gmail.com";
    public static final String SMTP_PORT = "587";
    public static final String SMTP_ACCOUNT_EMAIL = "nva.shinki@gmail.com";
    public static final String SMTP_ACCOUNT_PASSWORD = "bomwkvhvyixkazrn";

    // SQL Authentication
    public static final String SQL_SERVER_NAME = "localhost";
    public static final String SQL_DATABASE_NAME = "ODB";
    public static final String SQL_EXPRESS_NAME = "1433";
    public static final String SQL_USERNAME = "sa";
    public static final String SQL_PASSWORD = "sa";
    
    // Deployment
    public static final String DOMAIN = "localhost";
    public static final Integer PORT = 9999;

    public static final String HOST = DOMAIN + ":" + PORT + "/ODBOnline";
    public static final String COMMENT_WSPATH = "/comment";
}
