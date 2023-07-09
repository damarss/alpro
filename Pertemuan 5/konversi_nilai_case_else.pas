{Program Konversi Nilai CASE-ELSE}
{ 1}Program Contoh52; 
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
{14}     else grade:='F';
{15}   end;
{16}   if Grade='F' then 
{17}      writeln('Anda salah input nilai')
{18}   else writeln('Grade Anda ', Grade );
{19}
{20}   Case Grade of
{21}    'D': writeln(' Kurang memuaskan');
{22}    'C': writeln(' Cukup');
{23}    'B': writeln(' Baik');
{24}    'A': writeln(' Sangat Baik');
{25}   end;
{26}   readln
{27}end.
