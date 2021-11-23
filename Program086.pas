program prog;

  var 
    message, _result : string[13];
    i : integer;

begin
  
  while (not((Length(message) > 0) and (Length(message) < 14))) do
  begin
    Writeln('Введите строку: (количество символов < 13)');
    Readln(message);
  end;
  
  for i:= 1 to Length(message) do
  begin
    _result:= _result + message[Length(message) - i];
  end;
  
  Writeln($'Результат: {_result}');
  
end.