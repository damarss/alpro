{Program Cetak Persegi Panjang Full}
{ 1}Program Contoh74;
{ 2}var
{ 3}   i,j,k,m:integer;
{ 4}   kar:char;
	
	procedure karakter;
	begin
	    if j>=(m-i+1) then write(kar:2)
{16}    else write(' ':2);
	end;
	
	procedure tinggi(p:integer);
	begin
	    p:=m;
	end;
	
	function segitiga1(p:integer):char;
	begin
	      tinggi(p);
{13}      for j:=1 to p do
{14}      begin
{15}        karakter;
{17}      end;
{18}      for k:=1 to p-1 do
{19}      begin
{20}        if k<=i-1 then write(kar:2)
{21}        else write(' ':2)
{22}      end;
	end;
	
	function segitiga2:char;
{11}begin
	for i:=1 to m do
{12}   begin
          segitiga1(m);
{23}      writeln;
{24}   end;	
	end;
	
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran segitiga yang diinginkan');
{ 9}   write('Tinggi= ');readln(m);
	   segitiga2;
{25}   readln;
{26}end.