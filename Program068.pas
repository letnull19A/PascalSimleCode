program prog;
  var 
    originArray : array of integer;
    length, i, min, max, counter, sum : integer;
    average : real;
    message : string;
begin
  
  min:= -20;
  max:= 50;
  
  Writeln('Введите длину массива:');
  Readln(length);
  
  SetLength(originArray, length);
  
  Writeln($'Исходный массив: ({length})');
  for i:= 0 to length - 1 do
  begin
    originArray[i]:= Random(min, max);
    message:= message + originArray[i] + ' ';
    
    if (originArray[i] <> 0) then
    begin
      Inc(counter);
      sum:= sum + originArray[i];
    end;
    
  end;
  
  average:= sum / counter;
  
  Writeln(message);
  Writeln($'Среднее арифметическое не нулевых элементов: {average}');
  
end.