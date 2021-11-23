// задание 1 вариант 3

program prog21124;
var i,n:integer;
var r,x:real;
begin
writeln('Введите n');
readln(n);
writeln('Введите x');
readln(x);
for i:= 1 to n do
begin
r:=r+(1/(power(x,3)*power(i,2)));
end;
writeln('Результат ',r);





end.