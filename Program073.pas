program prog;

const
  length = 10;

var
  matrix: array[1..length] of array[1..length] of integer;
  min, max, i, j, sum, counter: integer;

begin
  
  min := -18;
  max := 18;
  
  Writeln('Исходный массив:');
  
  for i := 1 to length do
  begin
    for j := 1 to length do
    begin
      matrix[i, j] := Random(min, max);
      
      if (matrix[i, j] < 0) then
      begin
        Inc(counter);
        sum := sum + matrix[i, j];
      end;
      
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
  
  Writeln('Результирующий массив:');
  
  for i := 1 to length do
  begin
    for j := 1 to length do
    begin
      if (i = j) then 
        matrix[i, j]:= 0;
      
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
  
  Writeln($'Среднее арифметическое отрицательных чисел: {sum / counter}');

end.