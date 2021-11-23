Program prog;
  const size = 15;
  var arr : array[1..size] of integer;
  var positivs : array[1..size] of integer;
  var i : integer;
Begin
  
  for i:= 1 to size do
  begin
    arr[i]:= Random(-13, 13);
    positivs[i]:= (arr[i] > 0) ? arr[i] : 0;
  end;
  
end.