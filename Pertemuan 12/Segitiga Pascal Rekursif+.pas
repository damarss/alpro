program segitiga_pascal;

function segpascal(x,y:integer):integer;
begin
    if (y=0) or (y=x) then segpascal:=1
    else
        segpascal:=segpascal((x-1),y)+segpascal(x-1,y-1);
end;

var n,i,j,k:integer;

begin
    write('Tinggi: '); readln(n);
    i:=0;
    k:=n;
    while i<=(n-1) do
    begin
        j:=0;
        while j<=k do
        begin
            write('   ');
            j:=j+1;
        end;
        j:=0;
        while j<=i do
        begin
            write('   ',segpascal(i,j),'   ');
            j:=j+1;
        end;
        i:=i+1;
        k:=k-1;
        writeln;
    end;
	readln;
end.