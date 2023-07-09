program isprima;

//ubah program menjadi tampilkan bilangan prima antara 100 sampai 1000, jumlahnya berapa, tampilkan bilangannya
//1. mencari rentang bilangan yang ingin dicari
//2. bilangan prima antara x sampai z ada ...
//3. menampilkan bilangan

type matriks = array [1..1000] of integer;

var m,n,o:integer;

	function isprima(n:integer):boolean;
	var i:integer;
		flag : boolean;
	begin
		flag:=true;
		for i:=2 to round(sqrt(n)) do
			if (n mod i)=0 then
			begin
				flag:=false;
				break;
			end;
		isprima:=flag;
	end;
	
	procedure tampil(A:matriks;n:integer);
	var i:integer;
	begin
		for i:=1 to n do
			writeln('A[',i:2,']= ', A[i]);
	end;

	procedure prima(var m1:matriks;o:integer);
	var i,j:integer;
	begin
		i:=m; j:=0;
		while i<=o do
		begin
			{while isprima(i)=false do
			begin
				i:=i+1;
			end;}
			if isprima(i) then
			begin
				j:=j+1;
				m1[j]:=i;
				n:=n+1;
//				j:=j+1;
			end;
			i:=i+1;
		end;
	end;

var A:matriks;
	
begin
    writeln('Rentang Bilangan Yang Diinginkan');
    write('Bilangan awal: '); readln(m);
    write('Bilangan akhir: '); readln(o);
	prima(A,o);
	tampil(A,n);
	writeln('Bilangan prima antara ',m,' dan ',o,' ada ',n,' buah');
	readln;
end.