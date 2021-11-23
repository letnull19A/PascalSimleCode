program prog;

  var a : array[1..6] of integer;
  var i, j, Min, MinI : integer;

begin
  
  for i:= 1 to 5 do
  begin
    Min:= a[i];
    MinI:= i;
    
    for j:= i + 1 to 6 do
    begin
      if (a[j] < Min) then
      begin
        Min:= a[j];
        MinI:= j;
      end;
    end;
    
    a[MinI]:= a[i];
    a[i]:= Min;
    
  end;
  
end.