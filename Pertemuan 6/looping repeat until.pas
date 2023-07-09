program UlangFor1;
var
    i,n:integer;
    lagi:char;
begin
    repeat
        write('n: '); 
        readln(n);
        i:=1;
        repeat
            begin
                writeln(i:5);
                i:=i+1;
            end;
        until i>n;
        writeln;
        write('Ingin melakukan lagi?(y/n) '); readln(lagi);
    until upcase(lagi)='N';
end.