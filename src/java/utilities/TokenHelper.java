/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utilities;

import dal.UserModel;
import java.util.Date;
import org.json.JSONObject;

/**
 *
 * @author nvash
 */
public class TokenHelper {

    public static boolean isValidTokenSignUp( String token) {
        try {
            JSONObject json = TokenGenerator.decrypt(token);
            String username = json.getString("username");
            UserModel userModel = new UserModel();
            if (new Date().after(new Date(json.getLong("expiry")))) {
                TokenCache.removeToken(token);
                return false;
            }

            if (TokenCache.isTokenUsed(token)) {
                TokenCache.removeToken(token);
                return false;
            }

            boolean valid = TokenGenerator.validCheck(token, GlobalConstants.GLOBAL_GENERATE_KEY);

            if (valid) {
                TokenCache.markTokenAsUsed(token);
            }
            else{
                 TokenCache.removeToken(token);
            }
            return valid;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isValidTokenReset(String token) {
        try {
            JSONObject json = TokenGenerator.decrypt(token);
            String username = json.getString("username");
            UserModel userModel = new UserModel();
            if (new Date().after(new Date(json.getLong("expiry")))) {
                TokenCache.removeToken(token);
                return false;
            }

            if (TokenCache.isTokenUsed(token)) {
                // Token has already been used
                TokenCache.removeToken(token);
                return false;
            }

            boolean valid = TokenGenerator.validCheck(token, userModel.getByUsername(username).getPassword());

            if (valid) {
                TokenCache.markTokenAsUsed(token);
            }
            else{
                TokenCache.removeToken(token);
            }

            return valid;
        } catch (Exception e) {
            return false;
        }
    }
}
