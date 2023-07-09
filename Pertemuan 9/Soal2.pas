Program soal2;

var a,b,hasil:integer;

function Jumlah(p,q:integer;var hasil1:integer):integer;
begin
    hasil1:=p+q;
end;

begin
    writeln('Program Penjumlahan Dua Bilangan');
    writeln('================================');
    write('Masukkan bilangan pertama: ');
    readln(a);
    write('Masukkan bilangan kedua: ');
    readln(b);
	Jumlah(a,b,hasil);
    writeln(a,' + ',b,' = ',hasil);
    readln;
end.