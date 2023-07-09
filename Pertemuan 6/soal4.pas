program soal4;

var
	n,k,x:integer;
	total:real;

begin
	write('Jumlah suku ke-N (bilangan ganjil positif): ');readln(n);
	k:=1;
	x:=1;
	total:=0;
	while x<=n do
	begin
		if (k mod 2)=1 then
			begin
			total:=total+(1/x);
			end
		else
			total:=total-(1/x);
		k:=k+1;
		x:=x+2;
	end;
	if (n mod 2)=0 then writeln('Anda salah input nilai N!')
	else writeln(total:0:2);
	readln;
end.