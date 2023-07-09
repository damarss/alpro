program InsertionSort;

type larik=array[1..20] of integer;
	
	procedure Insertion1(var data:larik;n:integer);
	var i,j,key:integer;
	begin
		for i:=2 to n do
		begin
			key:=data[i];
			j:=i-1;
			while (j>0) and (data[j]>key) do
			begin
				data[j+1]:=data[j];
				j:=j-1;
			end;
			data[j+1]:=key;
		end;
	end;
	
	procedure Insertion2(var data:larik;n:integer);
	var i,j,key:integer;
	begin
		for i:=2 to n do
		begin
			key:=data[i];
			j:=i-1;
			while (j>0) and (data[j]<key) do
			begin
				data[j+1]:=data[j];
				j:=j-1;
			end;
			data[j+1]:=key;
		end;
	end;
	
var	a:larik;
	i,n:integer;

begin
    a[1]:=603;a[2]:=127;a[3]:=450;a[4]:=281;a[5]:=69;
    n:=5;
	writeln('Data Sebelum Diurutkan');
	for i:=1 to n do write(a[i]:4);
	writeln;
	writeln('Data Setelah Diurutkan (Ascending)');
	Insertion1(a,n);
	for i:=1 to n do write(a[i]:4);
	writeln;
	writeln('Data Setelah Diurutkan (Descending)');
	Insertion2(a,n);
	for i:=1 to n do write(a[i]:4);
	readln;
end.