program prog;

  const
    length = 16;

  var 
    randomazeArray : array[1..length] of integer;
    randomMin, randomMax, positives, i, sum : integer;
begin
  
  randomMin:= -14;
  randomMax:= 14;
  
  Writeln('Исходный массив:');
  
  for i:= 1 to length do
  begin
    randomazeArray[i]:= Random(randomMin, randomMax);
    
    Writeln($'[{i}] {randomazeArray[i]}');
    
    if (randomazeArray[i] > 0) then
    begin 
      Inc(positives);
      sum:= sum + randomazeArray[i];
    end;
    
  end;
  
  Writeln('Обработанный массив:');
  
  for i:= 1 to length do
  begin
    if ((randomazeArray[i] mod 2) = 0) then
      randomazeArray[i]:= 0;
    
    Writeln($'[{i}] {randomazeArray[i]}');
  end;
  
  Writeln($'Среднее арифметическое положительных чисел: {sum / positives}');
  
end.