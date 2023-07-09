program konversi_biner;

procedure biner(n:integer);
begin
    if n=1 then write(1)
    else 
    begin
        biner(n div 2);
        write(n mod 2);
    end;
end;

var n:integer;
	ulang:string;

begin
	writeln('Program Konversi Nilai Desimal Ke Biner');
	writeln('=======================================');
	repeat
		write('n= '); readln(n);
		biner(n);
		writeln;
		write('Ingin mengulangi konversi (y/n): '); readln(ulang);
		ulang:=upcase(ulang);
		writeln;
	until ulang='N';
    readln;
end.