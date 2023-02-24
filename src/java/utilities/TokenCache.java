package utilities;

import java.util.concurrent.ConcurrentHashMap;

public class TokenCache {
    private static ConcurrentHashMap<String, Boolean> usedTokens = new ConcurrentHashMap<>();

    public static void cacheToken(String token) {
        usedTokens.put(token, false);
    }

    public static boolean isTokenUsed(String token) {
        Boolean used = usedTokens.get(token);
        if (used != null && used) {
            return true;
        } else {
            return false;
        }
    }

    public static void markTokenAsUsed(String token) {
        usedTokens.put(token, true);
    }

    public static void removeToken(String token) {
        usedTokens.remove(token);
    }
}