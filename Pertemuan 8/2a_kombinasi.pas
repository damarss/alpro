{Program Cetak Persegi Panjang Full}
{ 1}Program Contoh74;
{ 2}var
{ 3}   i,j,m,n:integer;
{ 4}   kar:char;

    procedure karakter;
    begin
        write(kar:2);
    end;
    
    procedure lebar(p:integer);
    begin
        p:=n;
    end;
    
    function segitiga1(p:integer):integer;
    begin
          lebar(n);
{13}      for j:=1 to p do
{14}        begin
{15}        if j<=i then
{16}         karakter;
{17}        end;
{18}      writeln;
{19}   	end;
    
	function segitiga2:integer;
	begin
		for i:=1 to m do
{12}   	segitiga1(n);
	end;
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran persegi panjang yang diinginkan');
{ 9}   write('Panjang= ');readln(m);
{10}   write('Lebar=   ');readln(n);
{11}   segitiga2;
{20}   readln;
{21}end.
