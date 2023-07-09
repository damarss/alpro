program mencariluaslingkaran;
var
    jari_jari,luas: real;
begin
    writeln('Mencari Luas Lingkaran');
    writeln('======================');
    write('Input Panjang jari-jari (cm) = ');
    readln(jari_jari);
    luas:= 22 / 7 * jari_jari * jari_jari;
    write('Luas adalah (cm2) = ', luas:0:2);
    readln;
end.
