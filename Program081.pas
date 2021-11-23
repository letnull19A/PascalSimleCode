program prog;
  var
    length, i, j : integer;
    matrix : array[1..50] of array[1..50] of integer;
    
begin
  
  length:= -1;
  
  while (not((length > 0) and (length < 50))) do
  begin
    Writeln('Введите длину квадратной матрицы: (< 50)');
    Readln(length);
  end;
  
  Writeln('Исходная матрица:');
  
  for i:= 1 to length do
  begin
    for j:= 1 to length do
    begin
      matrix[i, j]:= Random(-13, 13);
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
  
  for i:= 1 to length do
  begin
    for j:= 1 to i do
    begin
      matrix[i, j]:= 0;
      matrix[i, length - j + 1]:= 0;
    end;
  end;
  
  Writeln('Результирруящая матрица:');
  
  for i:= 1 to length do
  begin
    for j:= 1 to length do
    begin
      Write(matrix[i, j]:4);
    end;
    Writeln();
  end;
  
end.