program menentukan_bonus_pegawai;
var
    golongan,bonus:string;
    masa_kerja,umur:integer;
begin
    writeln('Program Menentukan Bonus Pegawai');
    writeln('================================');
    write('Golongan (staff/non staff): '); readln(golongan);
    write('Masa kerja (dalam tahun)  : '); readln(masa_kerja);
    write('Umur (dalam tahun)        : '); readln(umur);
    writeln('================================');
    if golongan='staff' then
        if (masa_kerja>=5) and (umur>=50) then
            begin
                bonus:='Rp. 1.000.000'
            end
        else
            begin
                bonus:='Rp. 500.000'
            end
    else if golongan='non staff' then
        if (masa_kerja>=5) and (umur>=50) then
            begin
                bonus:='Rp. 400.000'
            end
        else
            begin
                bonus:='Rp. 250.000'
            end
    else
        begin
            writeln('Anda salah memasukkan input!');
        end;
    if (umur>=0) and (masa_kerja>=0) then writeln('Bonus yang didapat = ',bonus)
    else writeln('Anda salah memasukkan input!');
    readln;
end.