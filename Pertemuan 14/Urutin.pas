program Urutin;
Type Larik = array [1..100] of integer;

Procedure BubbleSort(var data: Larik; n:integer);
var
	i,j,temp:integer;
Begin
	for i:=1 to n-1 do
	for j:=n downto i+1 do
	if (data[j]>data[j-1]) then begin
	temp := data[j];
	data[j] := data[j-1];
	data[j-1] := temp;
	end;
End;

Procedure SelectionSort(var Data:Larik; n:integer);
var 
	i, j, min, temp:integer;
begin
	For i:=1 to n-1 do
	begin
	Min:=i;
	For j:= i+1 to n do
	begin
            If Data[j] > Data[min] then
            Min:=j;
	End;
	    Temp:=Data[i];
        Data[i]:=Data[min];
        Data[min]:=temp;
    End;
End;

Procedure InsertionSort(var data:larik; n:integer);
var
	i,j,key:integer;
begin
	for i:=2 to n do
	begin
	key:=data[i];
	j:=i-1;
	while (j>0)and(data[j]<key) do begin
	data[j+1]:=data[j];
	j:=j-1;
	end;
		data[j+1]:=key;
	end;
End;
var
    data:larik;
    i,n:integer;
begin
    writeln('Program Pengurutan Data');
	write('Banyak data: '); readln(n);
    for i:=1 to n do
	begin
		write('Data [',i,'] = '); readln(data[i]);
	end;
	writeln('Data Sebelum Diurutkan');
	for i:=1 to n do write(data[i]:4);
	writeln;
	writeln('Data Setelah Diurutkan');
    Insertionsort(data,n);
	for i:=1 to n do write(data[i]:4);
	writeln;
	writeln;
    Bubblesort(data,n);
	for i:=1 to n do write(data[i]:4);
	writeln;
	writeln;
    Selectionsort(data,n);
    for i:=1 to n do write(data[i]:4);
	readln;
end.
