// задание 2 вариант Last

Program prog;
        var way, day, procent : real;
Begin

// 10 - 100
//
// x - 12

     way:= 10;

     while (way < 25) do
     begin
          procent:= (12 * way) / 100;
          way:= way + procent;
          day:= day + 1;
     end;
     Writeln(day);
End.