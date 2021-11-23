program prog;
  var 
    originArray : array of integer;
    length, i, min, max, number, index : integer;
    message : string;
begin
  
  min:= -20;
  max:= 50;
  
  Writeln('Введите длину массива:');
  Readln(length);
  
  SetLength(originArray, length);
  
  Writeln('Сгенерированный массив:');
  for i:= 0 to length - 1 do
  begin
    originArray[i]:= Random(min, max);
  end;
  
  Writeln('ведите целое число:');
  Readln(number);
  
  for i:= 0 to length - 1 do
  begin
    if (number = originArray[i]) then
      index:= i;
    
    message:= message + originArray[i] + ' ';
  end;
  Writeln(message);
  Writeln($'Число {number} в массиве имеет индекс: {index}');
  
end.