program arrayProgram;

const
  length = 16;
  
type
  TArray = array of integer;

var
  array1 : TArray; 
  i, removableElement: integer;

procedure DisplayArray(a : TArray);
var
  i: integer;
begin
  for i := 1 to length do
    Writeln($'[{i}]  {a[i]}');
end;

begin
  
  Writeln('Исходный массив:');
  
  for i := 1 to length do
  begin
    array1:= array1 + Random(1, 12);
  end;
  
  DisplayArray(array1);
  
  removableElement := Random(1, length);
  
  Writeln($'Удаляемый элемент массива: {removableElement}');

end.