
classdef Blockchain
    %Blockchain(minerate) Takes in minerate as an arguemnt.Returns an
    %Blockchain instance.
    %Properties: .chain ,Array of Blocks,  gets populated with a genisis block.
    %Methoeds: 
        %add_block(data): Addes a block to the existing chain, and returns
        %the chain.
        %replaceChain(receivedChain): Replaces the current chain with the
        %receive chain , after a validation check.
        %isValidChain(chain): Takes in an array of block obejects, checks
        %if the chain is an valid chain.Returns logical True or False.
    
    properties
        chain
        
    end
    methods
        function b=Blockchain(minerate)
            global MINE_RATE;
            MINE_RATE=minerate;
            
            b.chain=Block.empty;
            b.chain(1,1)=Block.genesis(minerate);
            
        end
        
           function name = add_block(name,data)
           
            name.chain(end+1)=Block.mineBlock(name.chain(end),data);
          
           end
        
           function obj =  replaceChain(obj,chain1)
            if(chain1.length>obj.chain.length)
                 if(chain1.isValidChain())
                
                   obj.chain = chain1;
                end
            end
            %this one is complete
        end
        
    end
    methods(Static=true)
     
        function b=isValidChain(chain)
            
             
            %have to add code here
            k=2;
            while(k <= length(chain))
                textdata = [char(chain(k).timestamp),chain(k).previous_hash , chain(k).difficulty,chain(k).data, num2str(chain(k).nonce)];
                disp(textdata);
                crhash=Hashing.createHash(textdata);
              
                crhash=lower(reshape(dec2hex(crhash)',1,[]));
                  disp(crhash);
                if(convertCharsToStrings(crhash)~=convertCharsToStrings(chain(k).hash))
                    b=false;
                    disp("Hashes dont match");
                    return;
                    
                end
                if(chain(k-1).hash~=chain(k).previous_hash)
                    disp("Prev Block out of sync ");
                        b=false;
                        return;
                        
                end
                if(abs(chain(k-1).difficulty-chain(k).difficulty)~=1 && abs(chain(k-1).difficulty-chain(k).difficulty)~=0)
                    disp("Difficulties Tamperd");
                    b=false;
                    return;
                end
                if (~(isnumeric(chain(k).data)) && ~(ischar(chain(k).data)) && ~(isstring(chain(k).data)))
                    disp("Data should be numeric,char or string");
                    b=false;
                    return;
                end
                if(isnumeric(chain(k).nonce)~=1)
                    disp("Nonce is not numeric");
                    b=false;
                    return;
                    
                end
                if(isnumeric(chain(k).difficulty)~=1)
                    disp("Difficulty is not numeric");
                    b=false;
                    return;
                    
                end
                
                k=k+1;
            end
            
              b=true;
        end
        
        
    end

end