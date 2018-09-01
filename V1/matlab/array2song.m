function [stringTable, timeTable] = array2song(arr,fName)
stringTable = '';
for i = 1: size(arr,1)
    timeTable(i) = max(arr(i,:));
    stringTable = [stringTable '(' num2str(arr(i,1))];
    for j = 2: size(arr,2)
        stringTable = [stringTable ', ' num2str(arr(i,j))];
    end
    stringTable = [stringTable '),\n'];
end

fileID = fopen(fName,'w');
fprintf(fileID,stringTable);
