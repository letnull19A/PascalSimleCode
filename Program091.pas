program prog;

var
  cityName: string := '';
  lastLatter: char := 'А';
  alphabetUp: string := 'АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ';
  alphabetDown: string := 'абвгдеёжзийклмнопрстуфхцчшщъыьэюя';

begin
  
  for var i: integer := 1 to 10 do
  begin
    
    cityName := '';
    
    while (cityName = '') do
    begin
      Writeln('Введите название города начинающийся на ' + lastLatter + ':');
      Readln(cityName);
      
      if (cityName[1] = lastLatter) then
      begin
        
        if (cityName[Length(cityName)] = 'ь') then
          lastLatter := cityName[Length(cityName) - 1]
        else
          lastLatter := cityName[Length(cityName)];
        
        for var j : integer := 1 to Length(alphabetDown) do
        begin
          
          if (alphabetDown[j] = lastLatter) then
            lastLatter:= alphabetUp[j];
          
        end;
        
      end
      else
      begin
        Writeln('Вы ввели не правильный город!');
        cityName := '';
      end;
    end;
  end;
end.