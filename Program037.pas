// задание 1 вариант 5

program prog2;
var i,n,k:integer;
var a: real;
begin
a:=1;
writeln('¬ведите число');
readln(n);
writeln('¬ведите число');
readln(k);
for i:=1 to n do
begin
a:=a*(power(k,i));
end;
writeln(a);
end.