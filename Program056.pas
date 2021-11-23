(* ПЗ-4 №3 *)

program prog;

const
  length = 12;

var
  originalArray: array[1..length, 1..length] of integer;
  i, j, randomMin, randomMax, numberOfNegatives, numberOfPositives: integer;
  average, sum: real;

begin
  
  randomMin := -13;
  randomMax := 13;
  
  for i := 1 to length do
    for j := 1 to length do
    begin
      originalArray[i, j] := Random(randomMin, randomMax);
      
      if (originalArray[i, j] > 0) then
      begin
        sum := sum + originalArray[i, j];
        Inc(numberOfPositives);
      end 
      else 
      begin
        Inc(numberOfNegatives);
      end;
    end;
  
  Writeln('Исходный массив:');
  
  for i := 1 to length do
  begin
    for j := 1 to length do
    begin
      
      if (originalArray[i, j] > 0) then originalArray[i, j]:= 0;
      
      Write(originalArray[i, j]:5);
      
    end;
    
    Writeln();
    
  end;
  
  average:= (sum / numberOfPositives);
  Writeln($'Среднее арифметическое положительных чисел: {average}');

end.