program prog;

  const
    length = 15;

  var 
    randomazeArray : array[1..length] of integer;
    randomMin, randomMax, positives, negatives, i : integer;
begin
  
  randomMin:= -18;
  randomMax:= 18;
  
  Writeln('Исходный массив:');
  
  for i:= 1 to length do
  begin
    randomazeArray[i]:= Random(randomMin, randomMax);
    
    Writeln($'[{i}] {randomazeArray[i]}');
    
    if (randomazeArray[i] > 0) then 
      Inc(positives) 
    else 
      Inc(negatives);
    
  end;
  
  Writeln('Обработанный массив:');
  
  for i:= 1 to length do
  begin
    if (randomazeArray[i] < 0) then
      randomazeArray[i]:= Round(Power(randomazeArray[i], 2));
    
    Writeln($'[{i}] {randomazeArray[i]}');
  end;
  
  Writeln($'Положительные: {positives}');
  Writeln($'Отрицательные: {negatives}');
  
end.