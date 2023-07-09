program Soal4;

var a,b,n:word;
    pilih:integer;

function faktorial(p:integer):real;
var i:integer;
begin
    faktorial:=1;
	if (p=1) then
	begin
		faktorial:=1;
	end
	else
	begin
		for i:=1 to p do
		begin
			faktorial:=faktorial*i;
		end;
	end;
end;

function permutasi(p,q:integer):real;
var h:integer;
begin
    h:=p-q;
    permutasi:=faktorial(p)/faktorial(h);
end;

function kombinasi(p,q:integer):real;
var h:integer;
begin
    kombinasi:=permutasi(p,q)/faktorial(q);
end;

begin
    repeat
        writeln('Silahkan Pilih Menu Berikut');
        writeln('1. Faktorial');
        writeln('2. Permutasi');
        writeln('3. Kombinasi');
        writeln('4. Keluar');
        write('Pilihan Anda: ');readln(pilih);
        case pilih of
            1:  begin
                    write('Masukkan nilai n: ');readln(n);
                    writeln(n,'! = ',faktorial(n):0:0);
                end;
            2:  begin
                    write('Masukkan nilai pertama: ');readln(a);
                    write('Masukkan nilai kedua  : ');readln(b);
					if b<=a then
					begin
						writeln(a,'P',b,' = ',permutasi(a,b):0:2);
					end
					else
					begin
						writeln('Nilai b seharusnya lebih kecil atau sama dengan a');
					end;
                end;
            3:  begin
                    write('Masukkan nilai pertama: ');readln(a);
                    write('Masukkan nilai kedua  : ');readln(b);
					if b<=a then
					begin
						writeln(a,'C',b,' = ',kombinasi(a,b):0:2);
					end
					else
					begin
						writeln('Nilai b seharusnya lebih kecil atau sama dengan a');
					end;
                end;
            4:  writeln('Terima kasih dan sampai jumpa kembali');
            else writeln('Anda salah input pilihan, silahkan pilih kembali');
        end;
        writeln;
    until pilih=4;
    readln;
end.