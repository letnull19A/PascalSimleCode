(* ПЗ-4 №4 *)

program prog;

const
  length = 6;

var
  originalArray: array[1..length, 1..length] of integer;
  i, j, randomMin, randomMax, numberOfNegatives, numberOfPositives: integer;

begin
  
  randomMin := -14;
  randomMax := 14;
  
  for i := 1 to length do
    for j := 1 to length do
    begin
      originalArray[i, j] := Random(randomMin, randomMax);
      
      if (originalArray[i, j] > 0) then
      begin
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
      
      if ((i + j) = (length + 1)) then originalArray[i, j]:= 1;
      
      Write(originalArray[i, j]:5);
      
    end;
    
    Writeln();
    
  end;
  Writeln($'Кличество положительных чисел: {numberOfPositives}');
  Writeln($'Кличество положительных чисел: {numberOfNegatives}');

end.