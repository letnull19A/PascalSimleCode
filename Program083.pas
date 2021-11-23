program prog;

  var
    number,i : integer;

begin
  
  number:= -1;
  
  while (not((number > 31) and (number < 126))) do
  begin
    Writeln('Введите число от 32 до 126:');
    Readln(number);
  end;
  
  Writeln($'[{number}]   {Chr(number)} ');
  
end.