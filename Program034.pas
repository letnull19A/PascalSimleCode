// задание 1 вариант 2

Program prog;
    var n, i : integer;
    var r, x : real;
Begin
     Writeln('¬ведите число n');
     Readln(n);
     Writeln('¬ведите число x');
     Readln(x);
     
     for i:=0 to n do
     begin
          r:= r + power(x, i) + n;
     end;
     
     Writeln('–езультат: ', r);
End.