program UlangFor1;
var
    i:real;
    n:integer;
begin
    write('n: '); 
    readln(n);
    i:=1;
    while i<=n do
        begin
            writeln(i:5:0);
            i:=i+1;
        end;
end.