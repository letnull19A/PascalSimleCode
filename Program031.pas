Program prog;
  var res, input : integer;
Begin
  
  Readln(input);
  
  res:= input;
  
  while (res > 0) do
  begin
    Writeln(res, '- 7');
    res:= res - 7;
  end;
End.