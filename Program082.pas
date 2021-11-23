program prog;
  var 
    symbol : char;
    
begin
  
  Writeln('Введите символ:');
  Read(symbol);
  
  Writeln($'Результат: {Ord(symbol)}');
end.