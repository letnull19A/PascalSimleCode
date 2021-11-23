program prog;

var
  a: string := '';
  b: char := 'А';
  c: string := 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ';
  d: string := 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя';

begin
  
  for var i: integer := 1 to 10 do
  begin
    
    a := '';
    
    // While будет исполняться пока условие верно
    // Защита от некорректного ответа
    while (a = '') do
    begin
      // Запрос данных у пользователя
      Writeln('Введите название города начинающийся на ' + b + ':');
      Readln(a);
      
      // Если первая буква из названия города совпало, то:
      if (a[1] = b) then
      begin
        
        // Защита от мягкого знака в конце
        if (a[Length(a)] = 'ь') then
          b := a[Length(a) - 1]
        else
          b := a[Length(a)];
        
        // Сдесь из маленьких букв мы делаем БОЛЬШИЕ 
        for var j : integer := 1 to Length(d) do
        begin
          
          if (d[j] = b) then
            b:= c[j];
          
        end;
        
      end // Иначе скажем пользователю об ошибке и вернёмся к While - циклу
      else
      begin
        Writeln('Вы ввели не правильный город!');
        a := '';
      end;
    end;
  end;
end.