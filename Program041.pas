// ������� 1 ������� 8

Program prog;
        var i, n : integer;
        var x, res : real;
Begin

     Writeln('������� x: ');
     Readln(x);
     Writeln('������� n: ');
     Readln(n);

    for i:= 1 to n do
    begin
         res:= res * power(x, i);
    end;

    Writeln('���������: ', res);
End.