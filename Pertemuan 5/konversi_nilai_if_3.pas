{Program Menentukan Hasil Ujian}
Program Contoh53;
var
	Nilai : integer;

begin
	writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
	write('Nilai Anda = ');
	readln(Nilai);

	if (nilai>=0) and (nilai<=100) then
		if nilai<60 then
			begin
				writeln(' Anda tidak lulus');
			end
		else
			begin
			write('Anda lulus ');
			if nilai<75 then
				begin
					writeln('dengan nilai cukup');
				end
			else if nilai<90 then
				begin
					writeln('dengan nilai baik');
				end
			else
				begin
					writeln('dengan nilai sangat baik');
				end
			end
	else writeln(' Anda salah input nilai');
	readln;
end.
