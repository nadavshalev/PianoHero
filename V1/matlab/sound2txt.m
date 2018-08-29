function [hex,hex_str] = sound2txt(data,byteNum)
bin = dec2twos(data*16000,byteNum*4);
[hex,hex_str] = bin2hex(bin,byteNum);
end

