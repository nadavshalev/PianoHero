angle = (1:256)/256*2*pi-pi;
numSin = sin(angle);
bin = dec2twos(numSin*16000,16);
[hex,hex_str] = bin2hex(bin,4);