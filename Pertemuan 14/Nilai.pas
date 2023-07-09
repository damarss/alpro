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
    larik=array[1..10]of integer;

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
	
	function maks(list:kelas;pil,n:integer):integer;
	var i,imaks:integer;
	begin
	    imaks:=1;
		case pil of
		    1:  begin
		            for i:=2 to n do
		            begin
		                if imaks<list[i].uts then
				            imaks:=i;
				    end;
		        end;
		    2:  begin
		            for i:=2 to n do
		            begin
		                if imaks<list[i].uas then
				            imaks:=i;
				    end;
		        end;
		    3:  begin
		            for i:=2 to n do
		            begin
		                if imaks<list[i].NA then
				            imaks:=i;
				    end;
		        end;
		end;
		maks:=imaks;
	end;
	
	function min(list:kelas;pil,n:integer):integer;
	var i,imin:integer;
	begin
	    imin:=1;
		case pil of
		    1:  begin
		            for i:=2 to n do
		            begin
		                if imin>list[i].uts then
				            imin:=i;
				    end;
		        end;
		    2:  begin
		            for i:=2 to n do
		            begin
		                if imin>list[i].uas then
				            imin:=i;
				    end;
		        end;
		    3:  begin
		            for i:=2 to n do
		            begin
		                if imin>list[i].NA then
				            imin:=i;
				    end;
		        end;
		end;
		min:=imin;
	end;
	
	function reruts(data:kelas;n:integer):real;
	var	i,jumlah:integer;
	begin
		for i:=1 to n do
		begin
			with data[i] do
			begin
				jumlah:=jumlah+uts;
			end;
		end;
		reruts:=jumlah/n;
	end;
    
	function reruas(data:kelas;n:integer):real;
	var	i,jumlah:integer;
	begin
		for i:=1 to n do
		begin
			with data[i] do
			begin
				jumlah:=jumlah+uas;
			end;
		end;
		reruas:=jumlah/n;
	end;
	
	function rerana(data:kelas;n:integer):real;
	var	i:integer;
		jumlah:real;
	begin
		for i:=1 to n do
		begin
			with data[i] do
			begin
				jumlah:=jumlah+NA;
			end;
		end;
		rerana:=jumlah/n;
	end;
	
    function carinilai(A:kelas;n:integer;x:integer;var dupli:larik; pilcari1:integer):integer;
    var i:integer;
    begin
        carinilai:=0;
        while i<n do
        begin
            i:=i+1;
            case pilcari1 of
                1:  begin
                        if A[i].uts=x then 
                        begin
                            carinilai:=carinilai+1;
                            dupli[carinilai]:=i;
                        end;
                    end;
                2:  begin
                        if A[i].uas=x then 
                        begin
                            carinilai:=carinilai+1;
                            dupli[carinilai]:=i;
                        end;
                    end;
                3:  begin
                        if A[i].NA=x then 
                        begin
                            carinilai:=carinilai+1;
                            dupli[carinilai]:=i;
                        end;
                    end;
            end;
        end;
    end;
	
	procedure tukar(var a,b:kelas);
	var	c:kelas;
	begin
		c:=a; a:=b; b:=c;
	end;
	
	procedure urutnama(var data:kelas;n:integer);
	var	i,j:integer;
		simpan:tabel;
	begin
		for i:=1 to n-1 do
			for j:=n downto i+1 do
				if data[j].nama<data[j-1].nama then
				begin
				    simpan:=data[j];
					data[j]:=data[j-1];
					data[j-1]:=simpan;
				end;
	end;
	
	procedure urutnilaiuts(var data:kelas;n:integer);
	var	i,j:integer;
		simpan:tabel;
	begin
		for i:=1 to n-1 do
			for j:=n downto i+1 do
				if data[j].uts>data[j-1].uts then
				begin
				    simpan:=data[j];
					data[j]:=data[j-1];
					data[j-1]:=simpan;
				end;
	end;
	
	procedure urutnilaiuas(var data:kelas;n:integer);
	var	i,j:integer;
		simpan:tabel;
	begin
		for i:=1 to n-1 do
			for j:=n downto i+1 do
				if data[j].uas>data[j-1].uas then
				begin
				    simpan:=data[j];
					data[j]:=data[j-1];
					data[j-1]:=simpan;
				end;
	end;
	
	procedure urutnilaiakhir(var data:kelas;n:integer);
	var	i,j:integer;
		simpan:tabel;
	begin
		for i:=1 to n-1 do
			for j:=n downto i+1 do
				if data[j].NA>data[j-1].NA then
				begin
				    simpan:=data[j];
					data[j]:=data[j-1];
					data[j-1]:=simpan;
				end;
	end;
	
var Alpro1KS2:kelas;
    i,n,p,q,r,s:integer;
	pilih,maxi,mini,pilih2,pilih3,pilih4:integer;
cari,pilcari1,x,cari2:integer;
    duplikat:larik;
    
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
		writeln('6. Cari Nilai Mahasiswa');
		writeln('   a. Nilai UTS');
		writeln('   b. Nilai UAS');
		writeln('   c. Nilai Akhir');
		writeln('7. Urutkan Berdasarkan Nama');
		writeln('8. Urutkan Berdasarkan Nilai Alpro');
		writeln('9. Keluar');
		write('Pilihan Anda (1-9): '); readln(pilih);
		writeln;
		case pilih of
			1:	begin
					writeln('INPUT DATA');
					writeln('==============');
					write('Jumlah Mahasiswa: ');
					readln(n);
					InputData(Alpro1KS2,n,o);
					writeln;
				end;
			2:	begin
					writeln('TAMPIL DATA');
					writeln('=======================================================================');
					writeln('DAFTAR NILAI MATA KULIAH ALGORITMA DAN PEMROGRAMAN 1KS2 T.A. 2020/2021 ');
					writeln('=======================================================================');
					p:=o-1;
					output(Alpro1KS2,p);
					writeln;
				end;
			3:	begin
					writeln('NILAI ALPRO TERBESAR');
					writeln('=======================');
					writeln('  1. Nilai UTS');
					writeln('  2. Nilai UAS');
					writeln('  3. Nilai Akhir');
					write('Pilihan Anda: '); readln(pilih2);
					writeln;
					q:=o-1;
					maxi:=maks(Alpro1KS2,pilih2,p);
					writeln(' No ':5,' NIM ':10,' Nama ':20,' Tugas ':8,' UTS ':8,' UAS ':8,'Praktikum':9,' NA ':8,'Grade':5);
					with Alpro1KS2[maxi] do
                        write(maxi:5,NIM:10,Nama:20,Tugas:8,UTS:8,UAS:8,Praktikum:9,NA:8:1,Grade:5);
					writeln;
				end;
			4:	begin
					writeln('NILAI ALPRO TERKECIL');
					writeln('=========================');
					writeln('  1. Nilai UTS');
					writeln('  2. Nilai UAS');
					writeln('  3. Nilai Akhir');
					write('Pilihan Anda: '); readln(pilih3);
					writeln;
					r:=o-1;
					mini:=min(Alpro1KS2,pilih3,p);
					writeln(' No ':5,' NIM ':10,' Nama ':20,' Tugas ':8,' UTS ':8,' UAS ':8,'Praktikum':9,' NA ':8,'Grade':5);
					with Alpro1KS2[mini] do
                        write(mini:5,NIM:10,Nama:20,Tugas:8,UTS:8,UAS:8,Praktikum:9,NA:8:1,Grade:5);
					writeln;
				end;
			5:	begin
					writeln('RATA-RATA NILAI ALPRO');
					writeln('===========================');
					s:=o-1;
					writeln('Rata-rata Nilai UTS = ',reruts(Alpro1KS2,p):0:2);
					writeln('Rata-rata Nilai UAS = ',reruas(Alpro1KS2,p):0:2);
					writeln('Rata-rata Nilai Akhir = ',rerana(Alpro1KS2,p):0:2);
				end;
			6:  begin
			        writeln('CARI NILAI');
			        writeln('==============');
			        writeln('  1. Nilai UTS');
			        writeln('  2. Nilai UAS');
			        writeln('  3. Nilai Akhir');
			        write('Pilihan Anda: '); readln(pilcari1);
			        case pilcari1 of
			            1:  begin
			                    write('Nilai yang dicari: '); readln(x);
			                    cari2:=carinilai(Alpro1KS2,n,x,duplikat,pilcari1);
			                    if cari2=0 then writeln('Data mahasiswa tidak ditemukan')
			                    else
			                    begin
			                        writeln('========================================');
			                        writeln('Data Mahasiswa dengan nilai ',x);
			                        writeln('========================================');
			                        writeln(' No ':5,' NIM ':10,' Nama ':20,' Tugas ':8,' UTS ':8,' UAS ':8,'Praktikum':9,' NA ':8,'Grade':5);
    			                    for i:=1 to cari2 do
    			                    begin
    			                        with Alpro1KS2[duplikat[i]] do
    			                            writeln(duplikat[i]:5,NIM:10,Nama:20,Tugas:8,UTS:8,UAS:8,Praktikum:9,NA:8:1,Grade:5);
    			                    end;       
			                    end;
			                end;
			            2:  begin
			                    write('Nilai yang dicari: '); readln(x);
			                    cari2:=carinilai(Alpro1KS2,n,x,duplikat,pilcari1);
			                    if cari2=0 then writeln('Data mahasiswa tidak ditemukan')
			                    else 
			                    begin
			                        writeln('========================================');
			                        writeln('Data Mahasiswa dengan nilai ',x);
			                        writeln('========================================');
			                        writeln(' No ':5,' NIM ':10,' Nama ':20,' Tugas ':8,' UTS ':8,' UAS ':8,'Praktikum':9,' NA ':8,'Grade':5);
    			                    for i:=1 to cari2 do
    			                    begin
    			                        with Alpro1KS2[duplikat[i]] do
    			                            writeln(duplikat[i]:5,NIM:10,Nama:20,Tugas:8,UTS:8,UAS:8,Praktikum:9,NA:8:1,Grade:5);
    			                    end;       
			                    end;
			                end;
			            3:  begin
			                    write('Nilai yang dicari: '); readln(x);
			                    cari2:=carinilai(Alpro1KS2,n,x,duplikat,pilcari1);
			                    if cari2=0 then writeln('Data mahasiswa tidak ditemukan')
			                    else 
			                    begin
			                        writeln('========================================');
			                        writeln('Data Mahasiswa dengan nilai ',x);
			                        writeln('========================================');
			                        writeln(' No ':5,' NIM ':10,' Nama ':20,' Tugas ':8,' UTS ':8,' UAS ':8,'Praktikum':9,' NA ':8,'Grade':5);
    			                    for i:=1 to cari2 do
    			                    begin
    			                        with Alpro1KS2[duplikat[i]] do
    			                            writeln(duplikat[i]:5,NIM:10,Nama:20,Tugas:8,UTS:8,UAS:8,Praktikum:9,NA:8:1,Grade:5);
    			                    end;       
			                    end;
			                end;
			            else writeln('Anda salah input pilihan');
			        end;
			    end;
			7:	begin
					p:=o-1;
					urutnama(Alpro1KS2,p);
					writeln('======================================');
					writeln('Data Telah Diurutkan Berdasarkan Nama!');
					writeln('======================================');
				end;
			8:	begin
					p:=o-1;
					writeln('Urutkan Berdasarkan: ');
					writeln('  1. Nilai UTS');
					writeln('  2. Nilai UAS');
					writeln('  3. Nilai Akhir');
					write('Pilihan Anda: '); readln(pilih4);
					case pilih4 of
						1:	urutnilaiuts(Alpro1KS2,p);
						2:	urutnilaiuas(Alpro1KS2,p);
						3:	urutnilaiakhir(Alpro1KS2,p);
						else writeln('Anda salah input pilihan');
					end;
					writeln('=============================================');
					writeln('Data Telah Diurutkan Berdasarkan Nilai Alpro!');
					writeln('=============================================');
				end;
			9:	begin
					writeln('Terima kasih telah menggunakan program ini');
				end;
			else
				begin
					writeln('Anda salah input pilihan');
				end;
		end;
		writeln;
	until pilih=9;
	readln;
end.