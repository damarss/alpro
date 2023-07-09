program Kotakbilangan;

var
    i,j: integer;

begin
    i:=1;
    while (i<=5) do
    begin
        j:=1;
        while (j<=7) do
        begin
            write(j:3);
            j:=j+1;
        end;
        writeln;
        i:=i+1;
    end;
    readln;
end.
