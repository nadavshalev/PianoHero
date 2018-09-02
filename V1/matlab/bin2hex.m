function [hex, hex_string] = bin2hex(bin_str, num)
hex_string = '';
for row = 1:size(bin_str,1)
    i = length(bin_str(row,:));
    % disp(i);
    n = ceil(i/4);
    % disp(n);
    for g = n : -1 : 1
        if i > 4
            hex_str(g) = b2h(bin_str(row,i-3 : i));
            i = i - 4;
        else
            hex_str(g) = b2h(bin_str(row,1 : i));
        end
    end

    if num > length(hex_str)
        if bin_str(row,1) == '0'
            hex_pad(1:num-length(hex_str)) = '0';
        else
            hex_pad(1:num-length(hex_str)) = 'F';
        end
        hex(row,:) = [hex_pad hex_str];
    else
        hex(row,:) = hex_str;
    end
    
    hex_string = [hex_string 'X"' hex(row,:) '",'];
end