(* Пз-3 Вариант 1 *)

Program prog;

  uses Crt;

  var numberOfStudents, i : integer;
  var heightOfStudents : array of real;
  var averageOfHeight, sum : real;

begin
  Writeln('Введите количество учеников:');
  Readln(numberOfStudents);
  
  ClrScr();
  
  while(numberOfStudents <= 0) do
  begin
    ClrScr();
    Writeln('Вы ввели число 0 или меньше 0!');
    Writeln('Введите количество учеников:');
    Readln(numberOfStudents);
  end;
  
  SetLength(heightOfStudents, numberOfStudents + 1);
  
  for i:= 1 to numberOfStudents do
  begin
    Writeln('Введите рост ученика: (м)');
    Writeln($'Осталось ввести {(numberOfStudents - i) + 1} запесей');
    Readln(heightOfStudents[i]);
    
    while (heightOfStudents[i] <= 0) do
    begin
      ClrScr();
      Writeln('Вы ввели число 0 или меньше 0!');
      Writeln('Введите рост ученика: (м)');
      Writeln($'Осталось ввести {(numberOfStudents - i) + 1} запесей');
      Readln(heightOfStudents[i]);
    end;
    
    sum:= sum + heightOfStudents[i];
    
    ClrScr();
  end;
  
  averageOfHeight:= sum / numberOfStudents;
  
  ClrScr();
  
  Writeln('┌────────────────────────────────────────┐');
  Writeln('│Данные:                                 │');
  Writeln('├────────────────────────────────────────┤');
  
  for i:= 1 to numberOfStudents do
  begin
    if (heightOfStudents[i] <> 0) AND (heightOfStudents[i] > 0) then
      Writeln($'│Рост{i:3:0}-го ученика:{heightOfStudents[i]:19:2} м│');
  end;
  
  Writeln('├────────────────────────────────────────┤');
  Writeln($'│Средний рост:{averageOfHeight:25:2} м│');
  Writeln('└────────────────────────────────────────┘');
end.