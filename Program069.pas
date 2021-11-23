program prog;
  const
    length = 10;
    
  var
    matrix : array[1..length] of array[1..length] of integer;
    min, max, counter, i, j, sum : integer; 
    average : real;
begin
  min:= -11;
  max:= 11;
  
  Writeln($'Исходный массив: ({length}x{length})');
  
  for i:= 1 to length do
  begin
    for j:= 1 to length do
    begin
      matrix[i, j]:= Random(min, max);
      
      if (matrix[i, j] > 0) then
      begin
        sum:= sum + matrix[i, j];
        Inc(counter);
      end;
      
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
  
  average:= sum / counter;
  
  Writeln($'Среднее арифметическое положительных чисел: {average}');
  
  for i:= 1 to length do
    for j:= 1 to length do
      if (i = j) then
        matrix[i, j]:= 1;
  
  Writeln('Результирующий массив:');
  
  for i:= 1 to length do
  begin
    for j:= 1 to length do
    begin
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
end.