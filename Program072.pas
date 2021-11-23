program prog;
  var
    originArray : array of integer;
    length, min, max, i, j, buffer : integer;
begin
  
  min:= 20;
  max:= 70;
  
  Writeln('Введите длину массива:');
  Readln(length);
  
  SetLength(originArray, length);
  
  Writeln('Исходный массив');
  
  length:= length - 1;
  
  for i:= 0 to length do
  begin
    originArray[i]:= Random(min, max);  
    Write(originArray[i]:4);
  end;
  Writeln();
  
  for i:= 0 to length - 1 do
  begin
    for j:= 0 to length - 1 do
    begin
      if (originArray[j] < originArray[j + 1]) then
      begin
        buffer:= originArray[j];
        originArray[j]:= originArray[j + 1];
        originArray[j + 1]:= buffer;
      end;
    end;
  end;
  
  Writeln('Результирующий массив:');
  
  for i:= 0 to length do
  begin
    Write(originArray[i]:4);
  end;
  
end.