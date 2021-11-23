// задание 2 вариант 1

program mvp;
 var i, n, buffer_z, resMex, resIndex : integer;
begin

     Writeln ('ведите число для старта');
     Readln (n);

     while (n <> 0) do
     begin
          i:= i + 1;
          
          buffer_z:= n;
          Writeln('ведите число');
          Readln(n);
          
          if (n > buffer_z) then
          begin
              resMex:= n;
              resIndex:= i;
          end
          else
          begin
               resMex:= buffer_z;
               resIndex:= i;
          end;

     end;
     
     Writeln('Результат:', resMex, ' ', resIndex);
end.
