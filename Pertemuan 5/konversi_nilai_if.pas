{Program Konversi Nilai CASE}
Program Contoh51; 
var  Nilai : integer;
     grade : char;
begin
	writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
	write('Nilai Anda = ');
	readln(Nilai);
	
	if (nilai>=0) and (nilai<=100) then
		if nilai < 60 then
			grade:='D'
		else if nilai < 70 then  
			grade:='C'
		else if nilai < 80 then  
			grade:='B'
		else
			grade:='A';
	if (nilai>=0) and (nilai <=100) then
       writeln('Grade Anda', Grade )
	else writeln('Anda salah input nilai');

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
