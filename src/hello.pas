program BubbleSortDemo;

uses
  SysUtils;

procedure BubbleSort(var A: array of Integer);
var
  i, j, temp: Integer;
  n: Integer;
begin
  n := Length(A);
  for i := 0 to n - 2 do
    for j := 0 to n - i - 2 do
      if A[j] > A[j + 1] then
      begin
        temp := A[j];
        A[j] := A[j + 1];
        A[j + 1] := temp;
      end;
end;

procedure PrintArray(const A: array of Integer);
var
  i: Integer;
begin
  for i := 0 to High(A) do
    Write(A[i], ' ');
  Writeln;
end;

var
  arr: array[0..9] of Integer = (64, 34, 25, 12, 22, 11, 90, 5, 78, 43);

begin
  Writeln('Original array:');
  PrintArray(arr);

  BubbleSort(arr);

  Writeln('Sorted array:');
  PrintArray(arr);
end.
