import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class simpleBlocks {

//	int index;
//	String timeStamp, data, prevHash;
	
    simpleBlocks(int ind, String ts, String d, String ph) {
//		this.index = ind;
//		this.timeStamp = ts;
//		this.data = d;
//		this.prevHash = ph;
	}
      
	//Calculate hash 
	//public String calculateHash() throws NoSuchAlgorithmException {
		
//		String text = (this.index+this.timeStamp+this.data+this.prevHash).toString();
//		
//		MessageDigest digest = MessageDigest.getInstance("SHA-256");
//		byte[] hash = digest.digest(text.getBytes(StandardCharsets.UTF_8));
//		BigInteger number = new BigInteger(1, hash); // Convert byte array into signum representation
//		StringBuilder hexString = new StringBuilder(number.toString(16)); // Convert message digest into hex value
//		
//		while (hexString.length() < 32)// Pad with leading zeros
//		{
//			hexString.insert(0, '0');
//		}	
//		
//		String encoded = hexString.toString();
//		
//		return encoded; 

	//}
    
    
	public static void main(String[] args) throws NoSuchAlgorithmException {
		
//		// first block or genesis block
//		simpleBlocks block1 = new simpleBlocks(0,"01/01/2021","first block","0");
//		String hash1 = block1.calculateHash();
//		System.out.println("hash of block1: "+hash1);
//		
//		simpleBlocks block2 = new simpleBlocks(1,"01/01/2021","Second block",hash1);
//		String hash2 = block2.calculateHash();
//		System.out.println("hash of block2: "+hash2);

	}

}
