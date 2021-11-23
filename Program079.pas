program prog;

var
  columns, rows, i, j, k: integer;
  originalArray: array[1..50] of array[1..50] of integer;
  queue: array of integer;

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
  
  SetLength(queue, rows);
  
  Writeln('Исходный массив:');
  
  for i := 1 to rows + 1 do
  begin
    
    for j := 1 to columns do
    begin
      
      originalArray[i, j] := Random(-13, 13);
      Write(originalArray[i, j]:4);
    
    end;
    Writeln();
  end;
  
  for j := 1 to rows do
    for i := 1 to rows do
    begin
      var buffer: integer;
      
      if (originalArray[i, 1] < originalArray[i + 1, 1]) then
      begin
        
        for k := 1 to columns do
        begin
          buffer := originalArray[i, k];
          originalArray[i, k] := originalArray[i + 1, k];
          originalArray[i + 1, k] := buffer;
        end;
      
      end;
    end;
  
  Writeln('Результирующий массив:');
  
  for i := 1 to rows + 1 do
  begin
    for j := 1 to columns do
      Write(originalArray[i, j]:4);
    Writeln();
  end;

end.