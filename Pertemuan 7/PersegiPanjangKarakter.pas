program PersegiPanjangKarakter;


var
    i,j,baris,kolom: integer;
    c: char;

begin
    write('c= '); readln(c);
    write('baris= '); readln(baris);
    write('kolom= '); readln(kolom);
    i:=1;
    while (i<=baris) do
    begin
        j:=1;
        while (j<=kolom) do
        begin
            write(c:3);
            j:=j+1;
        end;
        writeln;
        i:=i+1;
    end;
    readln;
end.
