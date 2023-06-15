
classdef Block
%     Block(Data,LastBlockHash,nonce,difficulty,hash,timestamp)
% Data: Data to be held in the block in Charachter Array
%LastBlockHash:Character Array of Hash of the previous block in the chain. If this is the
%first block to be added, pass in the Genesis Block's hash.
%nonce: Number used only once, will start from 0, irrespective of the input
% difficulty: Controls the mine rate for the blockchain.difficulty of 1 to
% start is recomennded
%hash: hash of the current block
%timestamp: DateTime object of the current time.datetime('now','Format','MM/dd/yy HH:mm:ss.SSSSSS');

    properties
        
        timestamp
        data
        nonce
        hash
        previous_hash
        difficulty
       
    end
  
    methods
        function b=Block(Data,Previous_hash,nonce ,difficulty , hash,timestamp)
            
           
            b.timestamp=timestamp;
            b.data=Data;
            b.nonce = nonce;
            b.difficulty = difficulty;
           
            b.hash = hash ;
            
            b.previous_hash=Previous_hash;
          
        end
    end
    
    methods(Static)
        function b =   genesis(minerate)
            %edit this function to set the metadata for genisis block.Do
            %not change the format of timestamp. ARguemnt is MINE_RATE
            b = Block('xxxcompany','nullhash' ,1 ,1,'nullhashnow',datetime('now','Format','HH:mm:ss'));
            global MINE_RATE ;
            MINE_RATE = seconds(minerate);
        end
        
        function b = mineBlock(prevBlock , data)
            %mineBlock(prevBlock,data)
            %prevBlock: Block object, previous in the chain. If this is the
            %first block to be added, passin the genisis.
            %data: CHarachter array of data to be held in the block
            
           
           nonce=0;
          
           
           
           found = false;
           
           
            while(~found)
                nonce= nonce+1;
                timestamp=datetime('now','Format','HH:mm:ss');
               
                difficulty = Block.setDifficulty(prevBlock, timestamp);
                 if(difficulty<1)
                     difficulty=1;
                 end
               
                textdata = [char(timestamp),prevBlock.hash , difficulty,data, num2str(nonce)];
                hash = Hashing.createHash(textdata);
                hash = lower(reshape(dec2hex(hash)',1,[]));

                if strcmp( (hash(1:difficulty )) ,strrep(num2str(zeros(1,difficulty)),' ','') )
                    found = true;
                    b=Block(data, prevBlock.hash,nonce ,difficulty , hash,timestamp);
                end


            end
                
                
           
            
        end
        
    
    
        
        function diff = setDifficulty(block , timestamp)
            %setDifficulty(prevBlock,timestamp) : Sets Difficulty based on previous blocks timestamp and current
            %time. To be called within mineBlock
           global MINE_RATE
          difficulty = block.difficulty;
            if(difficulty<1)
                diff =1;
                return
            end
            if((timestamp-block.timestamp)>MINE_RATE)
                diff = difficulty-1;
                return
            end
            
            diff = difficulty+1;
            return 
        end
    end
    
    
end