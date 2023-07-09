program matakuliah;
var
    nama_hari: string;
begin
    writeln('Program Mencari Mata Kuliah');
    writeln('===========================');
    write('Masukkan nama hari (Senin/Selasa/Rabu/Kamis/Jum''at/Sabtu): '); readln(nama_hari);
    if nama_hari='Senin' then
        begin
            writeln('Mata kuliah = Algoritma dan Pemrograman I');
        end
    else if nama_hari='Selasa' then
        begin
            writeln('Mata kuliah = Kalkulus');
        end
    else if nama_hari='Rabu' then
        begin
            writeln('Mata kuliah = Bahasa Indonesia');
        end
    else if nama_hari='Kamis' then
        begin
            writeln('Mata kuliah = Pengantar Teknik Informatika');
        end
    else if nama_hari='Jum''at' then
        begin
            writeln('Mata kuliah = Bahasa Inggris');
        end
    else if nama_hari='Sabtu' then
        begin
            writeln('Mata kuliah = Basis Data');
        end
    else writeln('Salah input nama hari!');
    readln;
end.