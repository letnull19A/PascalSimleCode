// ������� 1 ������� 5

program prog2;
var i,n,k:integer;
var a: real;
begin
a:=1;
writeln('������� �����');
readln(n);
writeln('������� �����');
readln(k);
for i:=1 to n do
begin
a:=a*(power(k,i));
end;
writeln(a);
end.