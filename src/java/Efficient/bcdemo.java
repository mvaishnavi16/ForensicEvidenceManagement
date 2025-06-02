package Efficient;

import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

public class bcdemo {

    // Block class
    static class Block {
        public String hash;
        private String data;

        public Block(String data) {
            this.data = data;
            this.hash = calculateHash();
        }

        // Generate hash using SHA-256
        public String calculateHash() {
            try {
                MessageDigest digest = MessageDigest.getInstance("SHA-256");
                byte[] hashBytes = digest.digest(data.getBytes());
                StringBuilder hashString = new StringBuilder();
                for (byte b : hashBytes) {
                    hashString.append(String.format("%02x", b));
                }
                return hashString.toString().substring(0, 10); // Ensure hash is 10 characters long
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    // Blockchain storage
    private List<Block> blockchain;

    // Constructor
    public bcdemo() {
        blockchain = new ArrayList<>();
    }

    // Add a new block
    public void addBlock(String data) {
        blockchain.add(new Block(data));
    }

    // Get the hash of the last added block
    public String getLastBlockHash() {
        return blockchain.get(blockchain.size() - 1).hash;
    }

    // Get hash for specific data
    public String getHashForData(String data) {
        Block tempBlock = new Block(data);
        return tempBlock.hash;
    }
}
