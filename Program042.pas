// задание 2 вариант 3

Program prog;
        var way, day, procent : real;
Begin

// 10 - 100
//
// x - 12

     way:= 10;

     while (day < 30) do
     begin
          procent:= (12 * way) / 100;
          way:= way + procent;
          day:= day + 1;
     end;
     Writeln('Общая длина пробега: ', way);
End.