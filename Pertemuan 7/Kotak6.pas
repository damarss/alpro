program Kotak6;

var
    i,j,baris: integer;
    c: char;

begin
    write('c= '); readln(c);
    write('baris= '); readln(baris);
    i:=1;
    while (i<=baris) do
    begin
        j:=1;
        while (j<=baris) do
        begin
            if (j<=(baris-i+1)) then write(c:3)
            else write(chr(40):3);
            j:=j+1;
        end;
        writeln;
        i:=i+1;
    end;
	readln;
end.
