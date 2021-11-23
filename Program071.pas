program prog;

  const 
    length = 10;

  var
    matrix : array[1..length] of array[1..length] of integer;
    min, max, sum, i, j : integer;

begin
  
  min:= -15;
  max:= 15;
  
  for i:= 1 to length do
    for j:= 1 to length do
      matrix[i, j]:= Random(min, max);
    
  Writeln('Исходный массив:');
  
  for i:= 1 to length do
  begin
    for j:=1 to length do
    begin
      if (i = j) then
        sum:= sum + matrix[i, j];
      
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
  
  for i:= 1 to length do
    for j:= 1 to length do
      if (matrix[i, j] < 0) then
      begin
        matrix[i, j]:= 1;
      end;
      
  Writeln('Результирующий массив:');
      
  for i:= 1 to length do
  begin
    for j:=1 to length do
    begin
      if (i = j) then
        sum:= sum + matrix[i, j];
      
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
  
  Writeln($'Сумма элементов на главной диагонали: {sum}');
    
end.