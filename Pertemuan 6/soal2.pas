program anakayam;

var
    i,ayam:integer;

begin
    write('Masukkan jumlah anak ayam: '); readln(ayam);
    writeln('Anak ayam turun ',ayam);
    i:=ayam;
    while i>1 do
        begin
            write('Anak ayam turun ',i);
            i:=i-1;
            writeln(', mati satu tinggal ',i);
        end;
    writeln('Anak ayam turun ',i,', mati satu tinggal induknya');
    readln;
end.
