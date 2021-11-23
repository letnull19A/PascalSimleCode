program prog;
  
  var
    days : array[1..7] of string := ('Понедельник', 'Вторник', 'Среда', 'Четверг', 'Пятница', 'Суббота', 'Воскресенье');
    i, sum : integer;
    temperature : array[1..7] of integer;
  
begin
  Writeln('Введите данные температур:');
  
  for i:= 1 to 7 do
  begin
    Writeln('Температура воздуха в ' + days[i]);
    Readln(temperature[i]);
    sum:= sum + temperature[i];
  end;
  
  for i:= 1 to 7 do
  begin
    Writeln($'{days[i]:11:0}{temperature[i]:7:0}');
  end;
  
  Writeln($'Средняя температура:{(sum / 7):4:0} градусов');
  
end.