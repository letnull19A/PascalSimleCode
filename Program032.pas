Program prog;
  const size = 20;
  var arr : array[1..size] of real;
  var i, positive, negative : integer;
  
Begin
  
  for i:= 1 to 15 do
  begin
    
    arr[i]:= Random(-16, 16);
    
    if (arr[i] < 0) then 
      Inc(negative) 
    else 
      inc(positive);
    
  end;
  
  Writeln($'Positive: {positive} Negative: {negative}');
  
end.