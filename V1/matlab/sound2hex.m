function hexData = sound2hex(soundData, bits)
bin = dec2twos(soundData*16000,4*bits);
hexData = bin2hex(bin,bits);
end