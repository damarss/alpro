{Program Cetak Persegi Panjang Kosong}
{ 1}Program Contoh75;
{ 2}var
{ 3}   i,j,m,n:integer;
{ 4}   kar:char;
{ 5}begin
{ 6}   Write('Karakter yang digunakan: ');
{ 7}   readln(kar);
{ 8}   writeln('Ukuran persegi panjang yang diinginkan');
{ 9}   write('Panjang= ');readln(m);
{10}   write('Lebar=   ');readln(n);
{11}   for i:=1 to m do
{12}   begin
{13}      for j:=1 to n do
{14}         if (i=m)or(j=i)or(j=1) then
{15}             write(kar:2)
{16}         else write(' ':2);
{17}      writeln;
{18}   end;
{19}   readln;
{20}end.