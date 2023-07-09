program isprima;

//ubah program menjadi tampilkan bilangan prima antara 100 sampai 1000, jumlahnya berapa, tampilkan bilangannya
//1. mencari rentang bilangan yang ingin dicari
//2. bilangan prima antara x sampai z ada ...
//3. menampilkan bilangan

type matriks = array [1..100] of integer;

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
	
	procedure prima(var m1:matriks;n:integer);
	var i,j:integer;
	begin
		i:=2; j:=0;
		while j<=n do
		begin
			{while isprima(i)=false do
			begin
				i:=i+1;
			end;}
			if isprima(i) then
			begin
				j:=j+1;
				m1[j]:=i;
//				j:=j+1;
			end;
			i:=i+1;
		end;
	end;

var A:matriks;
	n:integer;
	
begin
	write('Masukkan jumlah bilangan prima yang diinginkan= '); readln(n);
	prima(A,n);
	tampil(A,n);
	readln;
end.
