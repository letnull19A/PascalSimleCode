// задание 2 вариант 7

Program prog;
        var i, n : integer;
        var x, res : real;
Begin

     Writeln('Введите x: ');
     Readln(x);
     Writeln('Введите n: ');
     Readln(n);

    for i:= 1 to n do
    begin
         res:= res + (1 / (power(x, 2) + power(i, 3)));
    end;
    
    Writeln('Результат: ', res);
End.