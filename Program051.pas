program abc;
 const length = 5;
 var 
  sourceArray : array[1..length] of integer;
  readyArray : array[1..length] of integer;
  i, min, max, counter : integer;
 
 Begin
 
  counter:= 1;
 
  Writeln('Введите минимальное значение масива');
  Readln (min);
  Writeln('Введите максимальное значение масива');
  Readln (max);
  
  Writeln('Исходный массив:');
 
  for i:=1 to Length do
  begin
    sourceArray[i]:= Random(min, max);
    Writeln($'[{i}] {sourceArray[i]}');
  end;
  
  for i:=1 to length do 
  begin
  
    if (((i mod 2) = 0) AND (i < length)) then
    begin
    
      readyArray[counter]:= sourceArray[i];
      Inc(counter);
    end;
  end;
  
  Writeln('Готовые массивы:');
  
  for i:= 1 to length do
  begin
    Writeln($'[{i}] {readyArray[i]}');
  end;
  
  Writeln('Исходный массив после обработки:');
  
  for i:= 1 to length do
  begin
    Writeln($'[{i}] {sourceArray[i]}');
  end;
  
  
 End.