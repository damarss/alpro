program selectionsort;

type larik=array [1..20] of integer;

	procedure tukar(var a,b:integer);
	var c:integer;
    begin
        c:=a; a:=b; b:=c;
    end;
	
	function indexmin(var data:larik;awal,akhir:integer):integer;
	var i,IMin:integer;
	begin
		IMin:=awal;
		for i:=awal+1 to akhir do
			if data[IMin]>data[i] then IMin:=i;
		indexmin:=IMin;
	end;
	
	procedure Selection1(var data:larik;n:integer);
	var i,IMin:integer;
	begin
		for i:=1 to n-1 do
		begin
			IMin:=indexmin(data,i,n);
			Tukar(data[i],data[IMin]);
		end;
	end;
	
	procedure Selection2(var data:larik;n:integer);
    var i,IMin:integer;
    begin
        for i:=1 to n-1 do
        begin
            IMin:=indexmin(data,1,n-i+1);
            Tukar(data[n-i+1],data[IMin]);
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
	selection1(a,n);
	for i:=1 to n do write(a[i]:4);
	writeln;
	writeln('Data Setelah Diurutkan (Descending)');
	selection2(a,n);
	for i:=1 to n do write(a[i]:4);
	readln;
end.