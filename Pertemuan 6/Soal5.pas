program Soal5;
var
	n,i,total,jml:integer;
begin
	write('Masukkan jumlah bilangan N: ');readln(n);
	i:=1;
	total:=0;
	repeat
		write('Masukkan bilangan ke-',i,': ');readln(jml);
		if ((jml mod 2)=0) then total:=total+jml;
		i:=i+1;
	until i>n;
	i:=i-1;
	writeln('Jumlah bilangan genap = ',total);
	readln;
end.