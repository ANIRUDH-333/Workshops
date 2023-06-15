import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

public class Block {
	
//	public String hash;
//	public String previousHash; 
//	private String data; //our data will be a simple message.
//	private long timeStamp; //as number of milliseconds since 1/1/1970.
//	private int nonce;
	
	//Block Constructor.  
	public Block(String data,String previousHash ) throws NoSuchAlgorithmException {
//		this.data = data;
//		this.previousHash = previousHash;
//		this.timeStamp = new Date().getTime();
//		this.hash = calculateHash(); //Making sure we do this after we set the other values.
	}
	
	//Calculate new hash based on blocks contents
	public String calculateHash() throws NoSuchAlgorithmException {
//		
//		String text = (this.data+this.previousHash+this.timeStamp+this.nonce).toString();
//		MessageDigest digest = MessageDigest.getInstance("SHA-256");
//		byte[] hash = digest.digest(text.getBytes(StandardCharsets.UTF_8));
//		BigInteger number = new BigInteger(1, hash); // Convert byte array into signum representation
//		StringBuilder hexString = new StringBuilder(number.toString(16)); // Convert message digest into hex value
//		
//		while (hexString.length() < 32)// Pad with leading zeros
//		{
//			hexString.insert(0, '0');
//		}	
//		String encoded = hexString.toString();
//		return encoded; 
//		
//		//String h = String.valueOf(text.hashCode());
//		//return h;
	}

	public void mineBlock(int difficulty) throws NoSuchAlgorithmException {
//		String target = new String(new char[difficulty]).replace('\0', '0'); //Create a string with difficulty * "0" 
//		//System.out.println(target+" "+hash.substring( 0, difficulty));
//		while(!hash.substring( 0, difficulty).equals(target)) {
//			nonce ++;
//			hash = calculateHash();
//			System.out.println(nonce);
//		}
//		
//		System.out.println("Block Mined!!! : " + hash);
	}

}
