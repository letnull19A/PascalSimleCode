program prog;

const
  length = 15;

var
  sourceArray : array[1..length] of integer;
  resultArray : array[1..length] of integer;
  i: integer;
  number: integer;

begin
  
  Writeln('Введите целое число');
  Readln(number);
  
  if (number <> 0) then
  begin
    
    Writeln('Элементы массива:');
    
    for i := 1 to length do
    begin
      sourceArray[i] := Random(-13, 13);
      
      if ((sourceArray[i] mod number) = 0) then
        resultArray[i] := sourceArray[i];
    end;
    
    Writeln('Изменённый массив:');
    
    for i := 1 to length do
    begin
      if (resultArray[i] <> 0) then
        Writeln('Число ', resultArray[i], ' кратно ', number);
    end;
  end else Writeln('Число не должно быть равно 0');
end.