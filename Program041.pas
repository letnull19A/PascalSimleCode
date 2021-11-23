// задание 1 вариант 8

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
         res:= res * power(x, i);
    end;

    Writeln('–езультат: ', res);
End.