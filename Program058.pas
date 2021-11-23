(* ПЗ-4 №1 *)

program prog;

const
  length = 10;

var
  originalArray: array[1..length, 1..length] of integer;
  i, j, randomMin, randomMax, sum : integer;

begin
  
  randomMin := -15;
  randomMax := 15;
  
  for i := 1 to length do
    for j := 1 to length do
    begin
      originalArray[i, j] := Random(randomMin, randomMax);
    end;
  
  Writeln('Исходный массив:');
  
  for i := 1 to length do
  begin
    for j := 1 to length do
    begin
      
      if (i = j) then sum:= sum + originalArray[i, j];
      
      if (originalArray[i, j] < 0) then originalArray[i, j]:= 1;
      
      Write(originalArray[i, j]:5);
      
    end;
    
    Writeln();
    
  end;
  
  Writeln($'Сумма элементов по главной диагонали: {sum}');

end.