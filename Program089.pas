program prog;

  var
    message : string;
    i, j, count : integer;

begin
  
  Writeln('Введите строку:');
  Readln(message);
  
  for i:= 1 to Length(message) do
  begin
    for j:= 0 to 9 do
      if (message[i] = j.ToString()) then
        Inc(count);
    
  end;
  
  Writeln($'Количество цифр в строке: {count}');
  
end.