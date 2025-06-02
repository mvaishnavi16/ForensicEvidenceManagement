/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Efficient;
import java.security.MessageDigest;
import java.util.Date;
/**
 *
 * @author dell
 */
public class BC {
    
    private BC() {}

    /**
     * Generates a unique 8-character blockchain-style key based on the username and current timestamp.
     * @param username The username for which the key is generated.
     * @return A short, unique blockchain-style key.
     */
    public static String generateShortKey(String username) {
        String timestamp = Long.toString(new Date().getTime()); // Get current time in milliseconds
        String input = username + timestamp; // Combine username and timestamp for uniqueness
        String fullHash = applySha256(input); // Hash the combined string
        return fullHash.substring(0, 8); // Truncate to the first 8 characters for a shorter key
    }

    /**
     * Applies SHA-256 hashing to the provided input string.
     * @param input The string to be hashed.
     * @return The SHA-256 hash in hexadecimal format.
     */
    private static String applySha256(String input) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(input.getBytes("UTF-8"));
            StringBuilder hexString = new StringBuilder();

            // Convert hash bytes to hex format
            for (byte b : hash) {
                String hex = Integer.toHexString(0xff & b);
                if (hex.length() == 1) hexString.append('0');
                hexString.append(hex);
            }
            return hexString.toString();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
