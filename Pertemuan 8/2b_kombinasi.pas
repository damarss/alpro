 {Program Cetak Persegi Panjang Full}
{ 1}Program Contoh74;
{ 2}var
{ 3}   i,j,m,n:integer;
{ 4}   kar:char;

    procedure karakter;
    begin
{15}    if j>=(m-i+1) then write(kar:2)
{16}    else write('  ')
    end;
    
    procedure ukuran(p,q:integer);
    begin
        p:=m;
        q:=n;
    end;
    
    function segitiga1(q:integer):char;
    begin
        ukuran(m,n);
{13}    for j:=1 to q do
{14}    begin
            karakter;
{17}    end;
    end;

	function segitiga2:char;
{11}begin
	for i:=1 to m do
{12}   begin
          segitiga1(n);
{18}      writeln;
{19}   end;
	end;
	
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran persegi panjang yang diinginkan');
{ 9}   write('Panjang= ');readln(m);
{10}   write('Lebar=   ');readln(n);
	   segitiga2;
{20}   readln;
{21}end.