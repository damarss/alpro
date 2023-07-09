Program Hitung_Luas;

const pi=3.14;

var p,l,r,luas:real;
    pilih,pilih2:integer;

label 1,2,3,4,5,6;

begin
    writeln('Silahkan pilih menu:');
    writeln('  1.Hitung luas persegi');
    writeln('  2.Hitung luas persegi panjang');
    writeln('  3.Hitung luas lingkaran');
    writeln('  4.keluar');
1:  write(' Pilihan Anda: ');readln(pilih);
    writeln;
	case pilih of
        1: begin
             write(' Panjang= ');
             readln(p);
             luas:=p*p;
             writeln(' Luas persegi dengan panjang ',p:0:1,' adalah ',luas:0:1);
             goto 5;
           end;
        2: begin
             write(' Panjang= ');readln(p);
             write(' Lebar=   ');readln(l);
             luas:=p*l;
             writeln(' Luas persegi panjang ukuran ',p:0:1,' kali ',l:0:1,' adalah ',luas:0:1);
             goto 5;
           end;
        3: begin
             write(' Jari-jari= ');readln(r);
             luas:=pi*r*r;
             writeln(' Luas lingkaran dengan jari-jari ',r:0:1,' adalah ',luas:0:1);
             goto 5;
           end;
        4: goto 6;
        else
			begin
				writeln(' Maaf, Anda salah memilih');
				writeln(' Silahkan memilih lagi');
				goto 1;
			end;
    end;
    writeln;
5:	write(' Apakah Anda ingin melakukan penghitungan lagi? (1=ya/2=tidak)');readln(pilih2);
	case pilih2 of
		1: goto 1;
		2: goto 6;
		else
			begin
				writeln(' Maaf, Anda salah memilih');
				writeln(' Silahkan memilih lagi');
				goto 5;
			end;
	end;
6:  writeln(' Terima kasih');
	readln;
end.
