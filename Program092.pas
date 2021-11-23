program prog1;

var
  a: Integer;
  c: string;
  g: string;

begin
  WriteLn('как вас зовут ?'); 
  readln(c); 
  Writeln('ты любишь играть в футбол?( Если любишь, введи 1. Если нет, то введи 0.)'); 
  Read(a); 
  if a = 1 then 
    WriteLn('да') 
    else 
      WriteLn('нет'); 
      Writeln('у тебя есть хобби ?( Если есть, введи 1. Если нет, то введи 0.)');
      Read(a); 
      if a = 1 then 
        begin 
        WriteLn('да, я играю в футбол'); 
        WriteLn('Молодец,занятие спортом это залог хорошего здоровья!') 
        end 
        else 
          begin 
          WriteLn('нет,у меня совсем нет свободного времени'); 
          end; 
          Writeln('ты любишь читать книги ?( Если любишь, введи 1. Если нет, то введи 0.)');
          Read(a); 
          if a = 1 then 
            begin 
            WriteLn('да');
            WriteLn('Молодец, книги это залог хороших знаний!!') 
            end 
            else 
              begin 
              WriteLn('нет'); 
              Writeln('Плохо,тебе это срочно нужно исправлять'); 
              end; 
              Writeln('ты хорошо учишься ?( Если да, введи 1. Если нет, то введи 0.)');
              Read(a); 
              if a = 1 then 
                begin
    WriteLn('да');
    WriteLn('Молодец, я тобой горжусь!!'); 
    end 
    else 
      begin 
      WriteLn('нет'); 
      WriteLn('Бездельник,как так можно, надо исправлять'); 
      end; 
      Writeln('у тебя есть любимое занятие?( Если любишь, введи 1. Если нет, то введи 0.)');
      Read(a); 
      if a = 1 then begin
      WriteLn('да');
      end 
      else
        begin 
        WriteLn('нет');
        end; 
        Writeln('Я вот люблю считать считать криптовалюту.'); 
        Writeln('Ой, я же совсем про это забыл! Было приятно пообщаться с тобой. Мне пора.');
        end.