program LatihContinue;
var
    i:integer;
begin
    i:=1;
    while i<10 do
    begin
        i:=i+1;
        write(i:4);
        if i=4 then continue;
        writeln(i:4);
        i:=i+1;
    end;
    readln;
end.
