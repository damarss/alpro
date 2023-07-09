program Soal6;
var
	i,harga:integer;
begin
	writeln('TABEL HARGA FOTOKOPI');
	writeln('|---------|--------|');
	writeln('|LEMBAR   |HARGA   |');
	writeln('|---------|--------|');
	i:=1;
	harga:=125;
	repeat
		writeln('|',i:9,'|',harga:8,'|');
		i:=i+1;
		harga:=harga+125;
	until i>100;
	writeln('|---------|--------|');
	readln;
end.