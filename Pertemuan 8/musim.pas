program latihan;

var
    bulan:(desember, januari, februari, maret, april, mei, juni, juli, agustus, september, oktober, november);
    musim: string;
    
begin
    write('Masukkan bulan saat ini: ');readln(bulan);
    case ord(bulan) of 
        0..2: musim:='dingin';
        3..5: musim:='semi';
        6..8: musim:='panas';
        9..11: musim:='gugur';
    end;
    writeln('Anda berada di musim ',musim);
    readln;
end.