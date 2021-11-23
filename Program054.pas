(* ПЗ-4 №1 *)

program prog;

const
  length = 10;

type
  Matrix = array[1..length, 1..length] of integer;

var
  originalMatrix: Matrix;
  resultMatrix: Matrix;
  randomMin, randomMax, i, j, number, replaceNumber: integer;
  average, sum: real;

begin

  randomMin:= -11;
  randomMax:= 11;
  replaceNumber:= 1;
  
  for i := 1 to length do
    for j := 1 to length do
    begin
      originalMatrix[i, j] := Random(randomMin, randomMax);
      
      if (originalMatrix[i, j] > 0) then
      begin
        Inc(number);
        sum := sum + originalMatrix[i, j];
      end;
    end;
  
  resultMatrix := originalMatrix;
  
  for i := 1 to length do
    for j := 1 to length do
    begin
      if (i = j) then resultMatrix[i, j] := replaceNumber;
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
  
  if (number <> 0) then
  begin
    average:= (sum / number);
    Writeln($'Среднее арифметическое исходного массива: {average:5:0}');
  end;
    
  Writeln('Готовый массив:');
  for i := 1 to length do
  begin
    for j := 1 to length do
    begin
      Write(resultMatrix[i, j]:5);
    end;
    Writeln();
  end;

end.