// ������� 1 ������� 6

program prog1231431;
var i,n:integer;
var r,x:real;
begin
writeln('������� �����');
readln(n);
writeln('������� x');
readln(x);
for i:=0 to n do
r:=r+(power(-x,2*i)/2*i);
writeln('��������� ',r );


end.