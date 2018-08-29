function [hex,hex_str] = sound2txt(data,byteNum, fName)
bin = dec2twos(data*16000,byteNum*4);
[hex,hex_str] = bin2hex(bin,byteNum);
fileID = fopen(fName,'w');
fprintf(fileID,hex_str);
end

