program Soal1;

var
    i,j,n:integer;

begin
    write('Masukkan jumlah baris: '); readln(n);
    for i:=1 to n do
        begin
            if (i mod 2)<>0 then
                begin
                    for j:=0 to 9 do
                        write(j:2);
                end
            else
                begin
                    for j:=9 downto 0 do
                        write(j:2);
                end;
        writeln;
        end;
    readln;
end.