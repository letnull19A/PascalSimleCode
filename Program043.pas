// задание 1 вариант 6

program prog1231431;
var i,n:integer;
var r,x:real;
begin
writeln('¬ведите число');
readln(n);
writeln('¬ведите x');
readln(x);
for i:=0 to n do
r:=r+(power(-x,2*i)/2*i);
writeln('–езультат ',r );


end.