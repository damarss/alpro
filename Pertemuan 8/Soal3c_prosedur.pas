{Program Cetak Persegi Panjang Kosong}
{ 1}Program Contoh75;
{ 2}var
{ 3}   i,j,k,m:integer;
{ 4}   kar:char;
	
	procedure segitiga;
	begin
{11}   for i:=1 to m do
{12}   begin
{13}      for j:=1 to m do
{14}         if (i=m)or(j=m-i+1) then
{15}             write(kar:2)
{16}         else write(' ':2);
{17}      for k:=1 to m-1 do
{18}        if (i=m)or(k=i-1) then
{19}            write(kar:2)
{20}        else write(' ':2);
{21}      writeln;
{22}   end;
	end;
	
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran persegi panjang yang diinginkan');
{ 9}   write('Tinggi= ');readln(m);
	   segitiga;
{23}   readln;
{23}end.
