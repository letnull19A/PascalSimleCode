// ������� 1 ������� 2

Program prog;
    var n, i : integer;
    var r, x : real;
Begin
     Writeln('������� ����� n');
     Readln(n);
     Writeln('������� ����� x');
     Readln(x);
     
     for i:=0 to n do
     begin
          r:= r + power(x, i) + n;
     end;
     
     Writeln('���������: ', r);
End.