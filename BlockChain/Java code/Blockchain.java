import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;

public class Blockchain {

	//public static ArrayList<Block> chain = new ArrayList<Block>();
	//public static int difficulty = 2;
	
	
	public static void main(String[] args) throws NoSuchAlgorithmException {
		
		
//		Block firstBlock = new Block("first block","0");
//		chain.add(firstBlock);
//		chain.get(0).mineBlock(difficulty);
//		
//		Block secondBlock = new Block("second block",firstBlock.hash.toString());
//		chain.add(secondBlock);
//		//chain.get(1).mineBlock(difficulty);
//		
//		Block thirdBlock = new Block("third block",secondBlock.hash.toString());
//		chain.add(thirdBlock);
//		//chain.get(2).mineBlock(difficulty);
//		
//		System.out.println("\nBlockchain is Valid: " + isChainValid());

	}
	
	public static Boolean isChainValid() throws NoSuchAlgorithmException {
//		Block currentBlock; 
//		Block previousBlock;
//		String hashTarget = new String(new char[difficulty]).replace('\0', '0');
//		
//		//loop through blockchain to check hashes:
//		for(int i=1; i < chain.size(); i++) {
//			currentBlock = chain.get(i);
//			previousBlock = chain.get(i-1);
//			//compare registered hash and calculated hash:
//			if(!currentBlock.hash.equals(currentBlock.calculateHash()) ){
//				System.out.println("Current Hashes not equal");			
//				return false;
//			}
//			//compare previous hash and registered previous hash
//			if(!previousBlock.hash.equals(currentBlock.previousHash) ) {
//				System.out.println("Previous Hashes not equal");
//				return false;
//			}
//			
//			//check if hash is solved
//			/*if(!currentBlock.hash.substring( 0, difficulty).equals(hashTarget)) {
//				System.out.println("This block hasn't been mined");
//				return false;
//			}*/
//		}
//		return true;
	}

}
