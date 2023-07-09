program Bubblesort;

type larik=array [1..20] of integer;

    procedure tukar(var a,b:integer);
    var c:integer;
    begin
        c:=a; a:=b; b:=c;
    end;
    
    procedure bubble1(var data:larik;n:integer);
    var i,j:integer;
    begin
        for i:=1 to n-1 do
            for j:=n downto i+1 do
                if(data[j]<data[j-1]) then
                    tukar(data[j],data[j-1]);
    end;
    
	procedure bubble2(var data:larik;n:integer);
	var i,j:integer;
	begin
        for i:=1 to n-1 do
            for j:=1 to n-i do
                if(data[n-j+1]>data[n-j]) then
                    tukar(data[n-j+1],data[n-j]);
    end;
	
var a:larik;
    n,i:integer;
    
begin
    a[1]:=603;a[2]:=127;a[3]:=450;a[4]:=281;a[5]:=69;
    n:=5;
    writeln('Data sebelum diurutkan');
    for i:=1 to n do
        write(a[i]:4);
    bubble1(a,n);
    writeln;
    writeln('Data setelah diurutkan (Ascending)');
    for i:=1 to n do write(a[i]:4);
	writeln;
	bubble2(a,n);
	writeln('Data setelah diurutkan (Descending)');
    for i:=1 to n do write(a[i]:4);
	readln;
end.