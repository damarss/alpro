program mencarikonversisuhu;
const
        n = 32;
var
        celcius, fahrenheit: real;
begin
        writeln('MENCARI KONVERSI SUHU');
        writeln('=====================');
        write('Input derjad Celsius = ');
        readln(celcius);
        fahrenheit:= 9/5 * celcius + n;
        write('Derjad Fahrenheit = ', fahrenheit:1:2);
        readln;
end.
