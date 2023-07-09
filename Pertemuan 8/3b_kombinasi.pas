{Program Cetak Persegi Panjang Kosong}
{ 1}Program Contoh75;
{ 2}var
{ 3}   i,j,m,n:integer;
{ 4}   kar:char;
	
	function ukuran(p,q:integer):integer;
	begin
	    p:=m;
	    q:=n;
	end;
	
	procedure karakter;
	begin
{14}     if (i=m)or(j=n-i+1)or(j=n) then
{15}         write(kar:2)
{16}     else write(' ':2);    
	end;
	
	function segitiga1:char;
	begin
	ukuran(m,n);
;{13}    for j:=1 to n do
            karakter;
{17}    writeln;    
	end;
	
	procedure segitiga2;
	begin
{11}   for i:=1 to m do
{12}   begin
          segitiga1;
{18}   end;	
	end;
	
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran persegi panjang yang diinginkan');
{ 9}   write('Panjang= ');readln(m);
{10}   write('Lebar=   ');readln(n);
	   segitiga2;
{19}   readln;
{20}end.