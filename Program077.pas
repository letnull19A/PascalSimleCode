program prog;

  var
    originalArray : array[1..50] of array[1..50] of integer;
    i, j, length, weigth, halfWeigth : integer;

begin
  
  Writeln('Введите длину двумерного массива < 50');
  Readln(length);
  
  Writeln('Введите длину двумерного массива < 50 (Чётное)');
  Readln(weigth);
  
  while ((weigth mod 2) <> 0) do
  begin
    Writeln('Введите длину двумерного массива < 50 (Чётное)');
    Readln(weigth);
  end;
  
  Writeln('Исходный массив');
  
  halfWeigth:= Round(weigth / 2);
  
  for i:= 1 to length do
  begin
    for j:= 1 to weigth do
    begin
      originalArray[i, j]:= Random(-12, 12);
      Write(originalArray[i, j]:4);
    end;
    Writeln();
  end;
  
  for i:= 1 to length do
  begin
    for j:= 1 to halfWeigth do
    begin
      
      var buffer : integer;
    
      buffer:= originalArray[i, j + halfWeigth];
      originalArray[i, j + halfWeigth]:= originalArray[i, j];
      originalArray[i, j]:= buffer;
      
    end;
  end;
  
  Writeln('Результативный массив');
  
  for i:= 1 to length do
  begin
    for j:= 1 to weigth do
    begin
      Write(originalArray[i, j]:4);
    end;
    Writeln();
  end;
  
end.