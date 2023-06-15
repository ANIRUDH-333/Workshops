import java.math.BigInteger;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class hashTest {

	//Calculate hash 
	/*public static String calculateHash(String text) throws NoSuchAlgorithmException {
		
		MessageDigest digest = MessageDigest.getInstance("SHA-256");
		byte[] hash = digest.digest(text.getBytes(StandardCharsets.UTF_8));
		BigInteger number = new BigInteger(1, hash); // Convert byte array into signum representation
		StringBuilder hexString = new StringBuilder(number.toString(16)); // Convert message digest into hex value
		
		while (hexString.length() < 32)// Pad with leading zeros
		{
			hexString.insert(0, '0');
		}	
		String encoded = hexString.toString();
		return encoded; 

	}*/
	
	public static void main(String[] args) throws NoSuchAlgorithmException {
		
		String text = "Blockchain";
		
		System.out.println(text.hashCode());
		
//		String encoded = calculateHash(text);
//
//		System.out.println("text: "+text+" \n"+"hash: "+encoded);
		
		
	}

}
