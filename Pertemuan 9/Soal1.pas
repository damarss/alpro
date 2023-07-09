Program soal1;

var a,b:integer;

function Jumlah(p,q:integer):integer;
begin
    Jumlah:=p+q;
end;

begin
    writeln('Program Penjumlahan Dua Bilangan');
    writeln('================================');
    write('Masukkan bilangan pertama: ');
    readln(a);
    write('Masukkan bilangan kedua: ');
    readln(b);
    writeln(a,' + ',b,' = ',Jumlah(a,b));
    readln;
end.