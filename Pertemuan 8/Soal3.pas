Program kabataku;

var a,hasiltambah,hasilkurang,hasilkali,hasilbagi,pilih:integer;
    b:integer;

function tambah(p,q:integer):integer;
begin
    hasiltambah:=p+q;
end;

function kurang(p,q:integer):integer;
begin
    hasilkurang:=p-q;
end;

function kali(p,q:integer):integer;
begin
    hasilkali:=p*q;
end;

function bagi(p,q:integer):integer;
begin
    hasilbagi:=p div q;
end;

begin
    writeln('Selamat datang di Kalkulator Sederhana');
    repeat
		writeln('Silahkan pilih menu berikut: ');
		writeln('  1. Penjumlahan');
		writeln('  2. Pengurangan');
		writeln('  3. Perkalian');
		writeln('  4. Pembagian');
		writeln('  5. Keluar');
		write('Pilihan Anda: ');
		readln(pilih);
		case pilih of
			1:  begin
					write('Masukkan nilai pertama= ');
					readln(a);
					write('Masukkan nilai kedua= ');
					readln(b);
				    tambah(a,b);
				    writeln(a,' + ',b,' = ',hasiltambah);
				end;
			2:  begin
					write('Masukkan nilai pertama= ');
					readln(a);
					write('Masukkan nilai kedua= ');
					readln(b);
				    kurang(a,b);
				    writeln(a,' - ',b,' = ',hasilkurang);
				end;
			3:  begin
					write('Masukkan nilai pertama= ');
					readln(a);
					write('Masukkan nilai kedua= ');
					readln(b);
				    kali(a,b);
				    writeln(a,' x ',b,' = ',hasilkali);
				end;
			4:  begin
					write('Masukkan nilai pertama= ');
					readln(a);
					write('Masukkan nilai kedua= ');
					readln(b);
				    bagi(a,b);
				    writeln(a,' / ',b,' = ',hasilbagi);
				end;
			5: writeln('Terima kasih dan sampai jumpa kembali');
			else writeln('Anda salah input pilihan');
		end;
		writeln;
	until pilih=5;
    readln;
end.