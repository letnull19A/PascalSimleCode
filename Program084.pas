program prog;

  var
    number, i : integer;
    latters : string:= 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';

begin
  
  number:= -1;
  
  while (not((number > 0) and (number < 27))) do
  begin
    Writeln('Введите число от 1 до 26');
    Readln(number);
  end;
  
  Writeln($'Первые {number} букв латинского алфавита:');
  for i:= 1 to number do 
    Write($'{latters[i]:4:0}');
  
end.