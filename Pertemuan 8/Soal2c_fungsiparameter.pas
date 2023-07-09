{Program Cetak Persegi Panjang Full}
{ 1}Program Contoh74;
{ 2}var
{ 3}   i,j,k,m:integer;
{ 4}   kar:char;
	
	function segitiga(p:integer):char;
{11}begin
	for i:=1 to p do
{12}   begin
{13}      for j:=1 to p do
{14}      begin
{15}        if j>=(p-i+1) then write(kar:2)
{16}        else write(' ':2)
{17}      end;
{18}      for k:=1 to p-1 do
{19}      begin
{20}        if k<=i-1 then write(kar:2)
{21}        else write(' ':2)
{22}      end;
{23}      writeln;
{24}   end;	
	end;
	
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran segitiga yang diinginkan');
{ 9}   write('Tinggi= ');readln(m);
	   segitiga(m);
{25}   readln;
{26}end.