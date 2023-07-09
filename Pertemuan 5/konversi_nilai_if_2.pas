{Program Konversi Nilai CASE-ELSE}
Program Contoh52; 
var  Nilai : integer;
     grade : char;
begin
	writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
	write('Nilai Anda = ');
	readln(Nilai);
	if  (nilai>=0) and (nilai<=100) then
		if nilai<60 then
			begin
				grade:='D'
			end
		else if nilai<70 then
			begin
				grade:='C'
			end
		else if nilai<80 then
			begin
				grade:='C'
			end
		else
			begin
				grade:='A'
			end
	else
		begin
			grade:='F'
		end;
	if Grade='F' then
		begin
			writeln('Anda salah input nilai');
		end
	else writeln('Grade Anda ', Grade );

	if grade='D' then
		begin
			writeln(' Kurang memuaskan');
		end
	else if grade='C' then
		begin
			writeln(' Cukup');
		end
	else if grade='B' then
		begin
			writeln(' Baik');
		end
	else if grade='A' then
		begin
			writeln(' Sangat Baik');
		end;
	readln;
end.
