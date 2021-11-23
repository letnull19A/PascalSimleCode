//вариант 6 задание 2
Program prog;

uses Crt;

const
  length = 10;

var
  sourceArray : array[1..length] of integer;
  resultArray : array[1..length] of integer;
  min, max, i, counter : integer;

begin
  Writeln('Введите минимальное значение для рандома');
  Readln (min);
  Writeln('Введите максимальное значение для рандома');
  Readln (max);
  
  ClrScr();
  
  Writeln('┌───────────────────────────────────┐');
  Writeln('│Введённые числа диапозона:         │');
  Writeln('├───────────────────────────────────┤');
  Writeln($'│Минимальное число: {min:13:0}   │');
  Writeln($'│Максимальное число: {max:12:0}   │');
  
  Writeln('├───────────────────────────────────┤');
  Writeln('│Сгенерированные элементы массива:  │');
  Writeln('├───────────────────────────────────┤');
  
  counter:= 1;
  
  for i:= 1 to length do
  begin
    sourceArray[i]:= Random(min, max);
    
    Writeln($'│[{i:2:0}]{sourceArray[i]:10:0}                     │');
    
    if ((sourceArray[i] mod 2) <> 0) then
    begin
      resultArray[counter]:= sourceArray[i];
      Inc(counter);
    end;
  
  end;
  
  Writeln('├───────────────────────────────────┤');
  Writeln('│Массив из нечётных чисел:          │');
  Writeln('├───────────────────────────────────┤');
  
  for i:= 1 to (counter - 1) do
  begin
    Writeln($'│[{i:2:0}]{resultArray[i]:10:0}                     │');
  end;
  
  Writeln('├───────────────────────────────────┤');
  Writeln($'│Количество нечётных чисел: {i:4:0}    │');
  Writeln('└───────────────────────────────────┘');
  
end.