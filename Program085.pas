program prog;

  var
    number, i : integer;
    latters : string:= 'abcdefghijklmnopqrstuvwxyz';

begin
  
  number:= -1;
  
  while (not((number > 0) and (number < 27))) do
  begin
    Writeln('Введите число от 1 до 26');
    Readln(number);
  end;
  
  Writeln($'Последние {number} букв латинского алфавита:');
  for i:= 26 downto ((26 - number) + 1) do 
    Write($'{latters[i]:4:0}');
  
end.