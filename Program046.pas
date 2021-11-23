program prog;

const
  length = 9;

var
  arr: array [1..length] of integer;
  _result: array [1..length] of integer;
  middle, summ: real;
  i, j, min, max: integer;

begin
  
  min := -17;
  max:= 17;
  
  Writeln('Элементы массива:');
  for i := 1 to length do
  begin
    arr[i] := Random(min, max);
    if ((arr[i] mod 2) = 0) then
    begin
      _result[i] := arr[i];
    end;
    Writeln(arr[i]);
  end;
  
  Writeln('Чётные элементы массива:');
  for i := 1 to length do
  begin
    if (_result[i] <> 0) then
    begin
      j := j + 1;
      summ := summ + _result[i];
      Writeln(_result[i]);
    end;
  end;
  
  middle := summ / j;
  
  Writeln('Среднее арифметическое чисел : ', middle);
end.