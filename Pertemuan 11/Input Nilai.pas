Program NilaiAlpro1KS2;

type
    tabel=record
        NIM:string[9];
        Nama:string[20];
        Tugas,UTS,UAS,Praktikum:byte;
        NA:real;
        Grade:char;
    end;
    kelas=array[1..40]of tabel;

var	j,o: integer;
    
    function NAkhir(a,b,c,d:integer):real;
    begin
        Nakhir:=(a+3*(b+c+d))/10;
    end;
    
    function grading(a:real):char;
    var hasil:char;
    begin
        case trunc(a) of
             0..19  : hasil:='E';
            20..39  : hasil:='D';
            40..59  : hasil:='C';
            60..79  : hasil:='B';
            80..100 : hasil:='A';
        end;
        grading:=hasil;
    end;
    
    procedure InputData(var list:kelas;n:integer;var i:integer);
    begin
		if i=0 then i:=i+1;
		j:=j+n;
        while i<=j do
        begin
            writeln('Mahasiswa ke-',i,': ');
            with list[i] do
            begin
                write('NIM:       ');readln(NIM);
                write('Nama:      ');readln(Nama);
                write('Tugas:     ');readln(Tugas);
                write('UTS:       ');readln(UTS);
                write('UAS        ');readln(UAS);
                write('Praktikum: ');readln(Praktikum);
                NA:=Nakhir(Tugas,UTS,UAS,Praktikum);
                Grade:=grading(NA);
            end;
			i:=i+1;
        end;
    end;
    
    procedure output(list:kelas;n:integer);
    var i:integer;
    begin
        writeln(' No ':5,' NIM ':10,' Nama ':20,' Tugas ':8,' UTS ':8,' UAS ':8,'Praktikum':9,' NA ':8,'Grade':5);
        for i:=1 to n do
        begin
            write(i:5);
            with list[i] do
                write(NIM:10,Nama:20,Tugas:8,UTS:8,UAS:8,Praktikum:9,NA:8:1,Grade:5);
            writeln;
        end;
    end;
    
var Alpro1KS2:kelas;
    n,p,pilih:integer;
	pilih2,pilih3:char;
    
begin
	repeat
		writeln('Selamat Datang di Program entri mahasiswa');
		writeln('1. Input Data');
		writeln('2. Tampilkan Data');
		writeln('3. Nilai Alpro Terbesar');
		writeln('  a. Nilai UTS');
		writeln('  b. Nilai UAS');
		writeln('  c. Nilai Akhir');
		writeln('4. Nilai Alpro Terkecil');
		writeln('  a. Nilai UTS');
		writeln('  b. Nilai UAS');
		writeln('  c. Nilai Akhir');
		writeln('5. Rata-rata Nilai Alpro');
		writeln('6. Keluar');
		write('Pilihan Anda: '); readln(pilih);
		writeln;
		case pilih of
			1:	begin
					write('Jumlah Mahasiswa: ');
					readln(n);
					InputData(Alpro1KS2,n,o);
				end;
			2:	begin
					writeln('DAFTAR NILAI MATA KULIAH ALGORITMA DAN PEMROGRAMAN 1KS2 T.A. 2020/2021 ');
					writeln;
					p:=o-1;
					output(Alpro1KS2,p);
				end;
			3:	begin
					writeln('  a. Nilai UTS');
					writeln('  b. Nilai UAS');
					writeln('  c. Nilai Akhir');
					write('Pilihan Anda: '); readln(pilih2);
					if upcase(pilih2)='A' then
					begin				
					end
					else if upcase(pilih2)='B' then
					begin
					end
					else if upcase(pilih2)='C' then
					begin
					end
					else
					begin
						writeln('Anda salah input pilihan');
					end;
				end;
			4:	begin
					writeln('  a. Nilai UTS');
					writeln('  b. Nilai UAS');
					writeln('  c. Nilai Akhir');
					write('Pilihan Anda: '); readln(pilih3);
					if upcase(pilih2)='A' then
					begin				
					end
					else if upcase(pilih2)='B' then
					begin
					end
					else if upcase(pilih2)='C' then
					begin
					end
					else
					begin
						writeln('Anda salah input pilihan');
					end;
				end;
			5:	begin
				end;
			6:	begin
					writeln('Terima kasih telah menggunakan program ini');
				end;
			else
				begin
					writeln('Anda salah input pilihan');
				end;
		end;
	until pilih=6;
	readln;
end.