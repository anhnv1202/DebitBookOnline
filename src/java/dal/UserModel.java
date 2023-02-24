package dal;

import entities.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import utilities.Crypto;

public class UserModel {

    public UserModel() {
    }

    public void accountConfirmed(String username) {
        try ( PreparedStatement stmt = ModelBase.connection().prepareStatement(
                "update [users] \n"
                + "set confirmed=1\n"
                + "where username=?")) {
            stmt.setString(1, username);
            stmt.executeUpdate();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    public void updateUser(User user) {
        try ( PreparedStatement stmt = ModelBase.connection().prepareStatement(
                "update [users]\n"
                + "  set username=?, password=?,email=?,confirmed=?,isAdmin=?\n"
                + "  where id=?")) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, Crypto.SHA256(user.getPassword()));
            stmt.setString(3, user.getEmail());
            stmt.setBoolean(4, user.getIsConfirmed());
            stmt.setBoolean(5, user.getIsAdmin());
            stmt.setLong(6, user.getId());
            stmt.executeUpdate();
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public String getStringToValidUser(String username, String password) {
        try ( PreparedStatement stmt = ModelBase.connection().prepareStatement(
                "SELECT id,confirmed FROM users WHERE username = ? AND password = ?")) {
            stmt.setString(1, username);
            stmt.setString(2, Crypto.SHA256(password));
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                if (rs.getString(1) != null && rs.getBoolean(2) == true) {
                    return "confirmed";
                }
                if (rs.getString(1) != null && rs.getBoolean(2) == false) {
                    return "not confirmed";
                }
            }

            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "invalid";
    }

    public User getByUsername(String username) {
        try ( PreparedStatement stmt = ModelBase.connection().prepareStatement(
                "SELECT * FROM [users] WHERE [username] = ? COLLATE Latin1_General_CS_AS")) {
            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new User(rs.getLong("id"), username, rs.getString("password"),
                        rs.getString("email"), rs.getBoolean("confirmed"), rs.getBoolean("isAdmin"));
            }
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }


    public void createAccount(String username, String password, String email) {
        try ( PreparedStatement stmt = ModelBase.connection().prepareStatement("insert into [users] (username, password, email) values(?,?,?)")) {
            stmt.setString(1, username);
            stmt.setString(2, Crypto.SHA256(password));
            stmt.setString(3, email);
            stmt.executeUpdate();
            stmt.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

    }


}
