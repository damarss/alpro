program Soal3;
var
	n,i,total,jml:integer;
	rerata:real;
begin
	write('Masukkan jumlah bilangan N: ');readln(n);
	i:=1;
	total:=0;
	repeat
		write('Masukkan bilangan ke-',i,': ');readln(jml);
		total:=total+jml;
		i:=i+1;
	until i>n;
	i:=i-1;
	rerata:=total/i;
	writeln('Rata-rata bilangan = ',rerata:0:2);
	readln;
end.