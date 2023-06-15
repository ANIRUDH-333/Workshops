classdef Hashing
    methods 
        function g=Hashing()
            fprintf("Hashing object assigning");
        end
    end
    methods (Static)
        
        
        function str2= hex2Bin(str_data)
            a = hexToBinaryVector(str_data);
            b=['0','1'];
            str2 = b(a+1);
        end
        function j=bin2Hex(strdata)
            str3=bin2dec(strdata);
            j=dec2hex(str3);
        end
        function [k]=createHash(stringdata)
            sha256hasher = System.Security.Cryptography.SHA256Managed;
            k = uint8(sha256hasher.ComputeHash(uint8(stringdata)));
          
            
          
            
        end
    end
end