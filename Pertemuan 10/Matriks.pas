program matriks;

type matrik= array[1..5, 1..5] of integer;

var a,b: matrik;

procedure inputmatrik(var x:matrik;m,n:integer);
var i,j:integer;
begin
    for i:=1 to m do
        for j:=1 to n do
        begin
            write('[',i:2,',',j:2,']=');
            readln(x[i,j]);
        end;
end;

procedure tampilmatrik(x:matrik;m,n:integer);
var i,j:integer;
begin
    for i:=1 to m do
    begin
        for j:=1 to n do
            write(x[i,j]:4);
        writeln;
    end;
end;

begin
    writeln('Input Matriks 2x3');
    inputmatrik(a,2,3);
    writeln('Matriks A:');
    tampilmatrik(a,2,3);
    writeln;        
    writeln('Input Matriks 3x3');
    inputmatrik(b,3,3);
    writeln('Matriks B:');
    tampilmatrik(b,3,3);
	readln;
end.