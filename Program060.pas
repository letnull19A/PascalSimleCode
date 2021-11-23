(* ПЗ-4 №3 *)

program prog;

const
  length = 10;

type
  Matrix = array[1..length, 1..length] of integer;

var
  originalMatrix : Matrix;
  resultMatrix : Matrix;
  i, j, randomMin, randomMax, numberOfPositives : integer;
  average, sum: real;

begin
  
  randomMin := -17;
  randomMax := 17;
  
  for i := 1 to length do
    for j := 1 to length do
    begin
      originalMatrix[i, j] := Random(randomMin, randomMax);
    end;
  
  Writeln('Исходный массив:');
  
  for i := 1 to length do
  begin
    for j := 1 to length do
    begin
      Write(originalMatrix[i, j]:5);
    end;
    Writeln();
  end;
  
  resultMatrix:= originalMatrix;
  
  Writeln('Результирующий массив:');
  
  for i := 1 to length do
  begin
    for j := 1 to length do
    begin
      
      if (originalMatrix[i, j] < 0) then 
        originalMatrix[i, j]:= 1
      else
        begin
          Inc(numberOfPositives);
          sum:= sum + originalMatrix[i, j];
        end;
      
      Write(originalMatrix[i, j]:5);
    end;
    Writeln();
  end;
  
  average:= (sum / numberOfPositives);
  Writeln($'Среднее арифметическое положительных чисел: {average}');

end.