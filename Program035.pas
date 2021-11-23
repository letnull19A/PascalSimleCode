// задание 2 вариант 2


Program prog;
        var n, i, r, w : integer;
Begin

     Writeln('Введите количество учеников: ');
     Readln(n);
     
     while (i < n) do
     begin
          Writeln('Введите вес ученика:');
          Readln(w);
          
          if (w < 30) then r:= r +200;
          i:= i + 1;
     end;
     
     Writeln('Результат: ', r, ' литров');
End.