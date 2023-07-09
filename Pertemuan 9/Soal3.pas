Program soal3;

var a,b,pilih,hasiltambah,hasilkurang,hasilkali:integer;
	hasilbagi:real;

function tambah(p,q:integer;var hasil:integer):integer;
begin
    hasil:=p+q;
end;

function kurang(p,q:integer;var hasil:integer):integer;
begin
	hasil:=p-q;
end;

function kali(p,q:integer;var hasil:integer):integer;
begin
    hasil:=p*q;
end;

function bagi(p,q:integer;var hasil:real):real;
begin
    hasil:=p/q;
end;

begin
	while pilih<>5 do
	begin
		writeln('Program Kalkulator Sederhana');
		writeln(' 1. Penjumlahan');
		writeln(' 2. Pengurangan');
		writeln(' 3. Perkalian');
		writeln(' 4. Pembagian');
		writeln(' 5. Keluar');
		write('Pilihan anda: ');readln(pilih);
		case pilih of
			1:	begin
					write('Masukkan nilai pertama: ');readln(a);
					write('Masukkan nilai kedua  : ');readln(b);
					tambah(a,b,hasiltambah);
					writeln(a,' + ',b,' = ',hasiltambah);
				end;
			2:	begin
					write('Masukkan nilai pertama: ');readln(a);
					write('Masukkan nilai kedua  : ');readln(b);
					kurang(a,b,hasilkurang);
					writeln(a,' - ',b,' = ',hasilkurang);	
				end;
			3:	begin
					write('Masukkan nilai pertama: ');readln(a);
					write('Masukkan nilai kedua  : ');readln(b);
					kali(a,b,hasilkali);
					writeln(a,' x ',b,' = ',hasilkali);
				end;
			4:	begin
					write('Masukkan nilai pertama: ');readln(a);
					write('Masukkan nilai kedua  : ');readln(b);
					bagi(a,b,hasilbagi);
					writeln(a,' / ',b,' = ',hasilbagi:0:2);
				end;
			5:	writeln('Terima kasih dan sampai jumpa kembali');
			else writeln('Anda salah memilih, silakan pilih ulang');
		end;
		writeln;
	end;
	readln;
end.