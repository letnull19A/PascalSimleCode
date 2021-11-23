// задание 1 вариант 4

Program prog;
        var i, n : integer;
        var x, res : real;
Begin

     Writeln('¬ведите x: ');
     Readln(x);
     Writeln('¬ведите n: ');
     Readln(n);

    for i:= 1 to n do
    begin
         res:= res + (power(x, 2) / i);
    end;

    Writeln('–езультат: ', res);
End.