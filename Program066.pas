program prog;

  const 
    length = 6;

  var 
    title, message, answer, userName : string;
    // Вопросы которые задаёт компьютер
    questions : array[1..length] of string := ('Как Вас зовут?', 'Вы читаете книги?', 'Вы любите кофе?', 'Вам нравится', 'Вы любите математику?', '');
    // Два варианта на ответ польлзователя: положительный и отрицательный
    // Там где ? это значит начало, а - означает конец диалога и что ответ от компьютера будет один 
    answerPositive : array[1..length] of string := ('?', 'Это хорошо!', 'Отлично и я', 'Понимаю Ваши предпочтения', 'Правильно! Без математики некуда!', '-');
    answerNegative : array[1..length] of string := ('?', 'Это плохо(', 'У каждого разные вкусы', 'Понимаю Ваши предпочтения', 'Я был о Вас другого мнения...', '-');
    // В этом массиве мы задаём параметры на использование имя пользователя
    useName : array[1..length] of boolean := (false, true, false, true, false, false);
    // Массив из названий цветов для дальнеёшего рандома
    favoriteColor : array[1..6] of string := ('Зелёный', 'Жёлтый', 'Синий', 'Серый', 'Красный', 'оранжевый');
    i : integer;
    
begin
  
  title:= '[COMPUTER] ';
  answer:= '!!';
  userName:= 'NoName';
  
  Writeln('Диалог с компьютером');
  Writeln('1 - это да');
  Writeln('0 - это нет');
  
  for i:= 1 to length do
  begin
    
    // Спрашиваем как зовут пользователя
    if ((answerPositive[i] = '?') and (answerNegative[i] = '?') and (userName = 'NoName')) then
    begin
      message:= title + questions[i];
      
      Writeln(message);
      Readln(userName);
      
    end
    else
    begin
     
      // Сдесьрандомим цвет и спрашиваем нравится ли он.
      // i - это индекс где мы будем спрашивать
      if (i = 4) then
      begin
        if (useName[i]) then
          message:= title + userName + ', ' + questions[i] + ' ' + favoriteColor[Random(4) + 1] + ' цвет?'
        else 
          message:= title + questions[i] + favoriteColor[Random(1, 6)] + ' цвет?'
      end
      else
      begin
        if (useName[i]) then
          message:= title + userName + ', ' + questions[i]
        else
          message:= title + questions[i];
      end;
      
      if ((answerNegative[i] <> '-') and (answerPositive[i] <> '-')) then
      begin
        Writeln(message);
        Readln(answer);
      end
      else
      begin
        answer:= '!!';
        message:= title + 'Было приятно с Вами общаться, ещё увидимся!';
      end;
      
      // Если !! то мы не будем ожидать от пользователя ответа
      if (answer <> '!!') then
      begin
        if (answer = '0') then
          message:= title + answerNegative[i]
        else
          message:= title + answerPositive[i];
      end;
      
      // Выводим сообщения
      
      Writeln(message);
    end; 
  end;
end.