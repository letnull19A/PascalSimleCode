(* ПЗ-4 №4 *)

program prog;

const
  length = 10;

type
  Matrix = array[1..length, 1..length] of integer;

var
  originalMatrix : Matrix;
  resultMatrix : Matrix;
  i, j, randomMin, randomMax, numberOfNegatives : integer;
  average, sum: real;

begin
  
  randomMin := -18;
  randomMax := 18;
  
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
      
      if (resultMatrix[i, j] < 0) then 
      begin
        Inc(numberOfNegatives);
        sum:= sum + resultMatrix[i, j];
      end;
      
      if (i = j) then resultMatrix[i, j]:= 0;
      
      Write(resultMatrix[i, j]:5);
    end;
    Writeln();
  end;
  
  average:= (sum / numberOfNegatives);
  Writeln($'Среднее арифметическое отрицательных чисел: {average}');

end.