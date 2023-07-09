 {Program Cetak Persegi Panjang Full}
{ 1}Program Contoh74;
{ 2}var
{ 3}   i,j,m,n:integer;
{ 4}   kar:char;

	function segitiga:char;
{11}begin
	for i:=1 to m do
{12}   begin
{13}      for j:=1 to n do
{14}      begin
{15}        if j>=(m-i+1) then write(kar:2)
{16}        else write('  ')
{17}      end;
{18}      writeln;
{19}   end;
	end;
	
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran persegi panjang yang diinginkan');
{ 9}   write('Panjang= ');readln(m);
{10}   write('Lebar=   ');readln(n);
	   segitiga;
{20}   readln;
{21}end.