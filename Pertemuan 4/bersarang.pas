//fpc 3.0.4

program bersarang;
var
    nilai: integer;
begin
    write('Nilai: ');readln(nilai);writeln(nilai);
    if (nilai>=0) and (nilai<=100) then
        if nilai<60 then 
            writeln('Anda Gagal')
        else if nilai<80 then 
            writeln('Cadangan')
        else writeln('Anda Lulus')
    else writeln('Anda Salah Input Nilai');
end.
