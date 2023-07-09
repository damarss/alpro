{Program Konversi Nilai CASE}
{ 1}Program Contoh51; 
{ 2}var  Nilai : integer;
{ 3}     grade : char;
{ 4}begin
{ 5}   writeln('Input nilai yang Anda dapatkan 0 s.d. 100 ');
{ 6}   write('Nilai Anda = ');
{ 7}   readln(Nilai);
{ 8}   
{ 9}   case Nilai of
{10}      0..59:  grade:='D';
{11}     60..69:  grade:='C';
{12}     70..79:  grade:='B';
{13}     80..100: grade:='A';
{14}   end;
{15}   if (nilai>=0) and (nilai <=100) then
{16}       writeln('Grade Anda', Grade )
{17}   else writeln('Anda salah input nilai');
{18}
{19}   Case Grade of
{20}    'D': writeln(' Kurang memuaskan');
{21}    'C': writeln(' Cukup');
{22}    'B': writeln(' Baik');
{23}    'A': writeln(' Sangat Baik');
{24}   end;
{25}   readln
{26}end.
