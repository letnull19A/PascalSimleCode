program prog;

const
  length = 11;

var
  min, max: integer;
  arr: array[1..length] of integer;
  arrResult: array[1..length] of integer;
  i, _result: integer;

begin
  min := -15;
  max := 15;
  
  Writeln('Исходный массив');
  
  for i := 1 to length do
  begin
    
    arr[i] := Random(min, max);
    
    Writeln(arr[i]);
    
    if ((i mod 2) = 0) then
      arrResult[i] := arr[i];
  end;
  
  Writeln('Изменённый массив');
  
  for i := 1 to length do
  begin
    if ((arrResult[i] <> 0) AND ((i + 1) < length)) then
    begin
      _result := (arrResult[i] > arrResult[i + 1]) ? arrResult[i] : arrResult[i + 1];
      Writeln(arrResult[i]);
    end;
  end;
  
  Writeln('Результат: ', _result);
end.