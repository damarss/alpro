program Soal7;
var
	jml,i,n,u17,u18,u19,u20,ulain:integer;
begin
	write('Masukkan jumlah mahasiswa: ');readln(n);
	i:=1;
	u17:=0;
	u18:=0;
	u19:=0;
	u20:=0;
	ulain:=0;
	repeat
		write('Masukkan usia mahasiswa ke-',i,': ');readln(jml);
		if jml=17 then
			begin
				u17:=u17+1;
			end
		else if jml=18 then
			begin
				u18:=u18+1;
			end
		else if jml=19 then
			begin
				u19:=u19+1;
			end
		else if jml=20 then
			begin
				u20:=u20+1;
			end
		else ulain:=ulain+1;
		i:=i+1;
	until i>n;
	writeln('Jumlah mahasiswa berusia 17 tahun = ',u17);
	writeln('Jumlah mahasiswa berusia 18 tahun = ',u18);
	writeln('Jumlah mahasiswa berusia 19 tahun = ',u19);
	writeln('Jumlah mahasiswa berusia 20 tahun = ',u20);
	writeln('Jumlah mahasiswa berusia selain itu = ',ulain);
	readln;
end.