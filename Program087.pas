program prog;

var
  message, _result : string;
  i : integer;

begin
  
  while (not (Length(message) > 0)) do
  begin
    Writeln('Введите строку: (количество символов < 13)');
    Readln(message);
  end;
  
  for i := 1 to Length(message) do
  begin
    
    if (message[i] <> ' ') then
    begin
      
      _result:= _result + message[i] + ' ';
      
    end;
  end;
  
  Writeln(_result);

end.