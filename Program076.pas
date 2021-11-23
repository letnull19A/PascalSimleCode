program prog;

  var
    originalArray : array[1..50] of array[1..50] of integer;
    bufferMax, bufferMin : array[1..50] of integer;
    i, j, length, minValue, maxValue, minIndex, maxIndex : integer;

begin
  
  Writeln('Введите длину двумерного массива < 50');
  Readln(length);
  
  Writeln('Исходный массив');
  
  for i:= 1 to length do
  begin
    for j:= 1 to length do
    begin
      originalArray[i, j]:= Random(-12, 12);
      Write(originalArray[i, j]:4);
    end;
    Writeln();
  end;
  
  for i:= 1 to length do
  begin
    
    for j:= 1 to length do
    begin
      
      if (originalArray[i, j] > maxValue) then
      begin
        maxValue:= originalArray[i, j];
        maxIndex:= i;
      end;
      
      if (originalArray[i, j] < minValue) then
      begin
        minValue:= originalArray[i, j];
        minIndex:= i;
      end;
      
    end;
  end;
  
  for i:= 1 to length do
  begin
    bufferMax[i]:= originalArray[maxIndex, i];
    bufferMin[i]:= originalArray[minIndex, i];
  end;
  
  for i:= 1 to length do
  begin
    for j:= 1 to length do
    begin
      originalArray[maxIndex, i]:= bufferMin[i];
      originalArray[minIndex, i]:= bufferMax[i];
    end;
  end;
  
  Writeln($'[{minIndex}] Min {minValue} [{maxIndex}]Max {maxValue}');
  
  Writeln('Результативный массив:');
  
  for i:= 1 to length do
  begin
    for j:= 1 to length do
    begin
      Write(originalArray[i, j]:4);
    end;
    Writeln();
  end;
  
end.