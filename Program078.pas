program prog;

  var
    originalArray : array[1..50] of array[1..50] of integer;
    columns, rows, half, i, j : integer;

begin
  
  rows:= -1;;
  columns:= -1;
  
  while (not((rows < 50) and (columns < 50) and (rows > 0) and (columns > 0) )) do
  begin
    Writeln('Введите количество строк массива: (< 50)');
    Readln(rows);
    Writeln('Введите количество рядов массива: (< 50)');
    Readln(columns);
  end;
  
  Writeln('Исходный массив:');
  
  for i:= 1 to rows do
  begin
    
    for j:= 1 to columns do
    begin
      
      originalArray[i, j]:= Random(-13, 13);
      Write(originalArray[i, j]:4);
      
    end;
    Writeln();
  end;
  
  half:= Round(columns / 2);
  
  for i:= 1 to rows do
  begin
    
    var buffer1 : integer;
    var buffer2 : integer;
    
    for j:= 1 to half do
    begin
      
      buffer1:= originalArray[i, j];
      buffer2:= originalArray[i, columns - j + 1];
      
      originalArray[i, j]:= buffer2;
      originalArray[i, columns - j + 1]:= buffer1;
      
    end;
  end;
  
  Writeln('Результирующий массив:');
  
  for i:= 1 to rows do
  begin
    for j:= 1 to columns do
    begin
      Write(originalArray[i, j]:4);
    end;
    Writeln();
  end;
  
end.