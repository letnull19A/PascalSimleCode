program prog;

  const
    length = 10;
    
  var
    matrix : array[1..length] of array[1..length] of integer;
    min, max, countNegative, countPositive, i, j, sum : integer;

begin
  
  min:= -12;
  max:= 12;
  
  Writeln($'Исходный массив ({length}x{length})');
  
  for i:=1 to length do
  begin
    for j:= 1 to length do
    begin
      matrix[i, j]:= Random(min, max);
      Write(matrix[i, j]:4);
      if (matrix[i, j] >= 0) then
      begin
        Inc(countPositive);
        sum:= sum + matrix[i, j];
      end else Inc(countNegative);
      
    end;
    Writeln();
  end;
  
  Writeln($'Среднее арифметическое значение положительных элементов: {sum / countPositive}');
  Writeln($'Отрицательных: {countNegative}')
  
end.