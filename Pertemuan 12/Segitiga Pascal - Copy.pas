program segpas;

var i,j,r,n:integer;

function faktorial(n:integer):real;
begin
	if n=1 then faktorial:=1
	else faktorial:=n*faktorial(n-1);
end;

function permutasi(x,y:integer):real;
begin
    permutasi:=faktorial(x)/faktorial(x-y);
end;

function kombinasi(x,y:integer):real;
begin
    kombinasi:=permutasi(x,y)/faktorial(y);
end;

begin
    write('Tinggi: '); readln(n);
    i:=0;
    while i<=(n-1) do
    begin
        j:=0;
        while j<=i do
        begin
            write(kombinasi(i,j):0:0,'   ');
            j:=j+1;
        end;
        i:=i+1;
        writeln;
    end;
	readln;
end.