program wnd;

const
  length = 10;

var
  ArrayA: array[1..length] of integer; 
  ArrayB: array[1..length] of integer;
  min, max, i, counter: integer;

begin
  Writeln('Введите минимальное значение масива');
  Readln(min);
  Writeln('Введите максимальное значение масива');
  Readln(max);
  Writeln('Сгенерированные элементы массива:');
  
  counter := 1;
  
  for i := 1 to length do
  begin
    ArrayA[i] := Random(min, max);
    
    Writeln($'[{i}] {ArrayA[i]}');
    
    if ((ArrayA[i] mod 2) <> 0) then
    begin
      ArrayB[counter] := ArrayA[i];
      Inc(counter);
    end;
    
  end;
  
  Writeln('Готовый массив:');
  
  for i:= 1 to length do
  begin
    Writeln($'[{i}] {ArrayB[i]}');
  end;
end. 