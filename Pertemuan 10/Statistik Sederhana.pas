program statistik_sederhana;

type data= array [1..100] of integer;

var i,pilih,n: integer;
    x: data;

procedure inputdata(p:integer);
begin
    for i:=1 to p do
    begin
        write('X[',i:2,']: ');
        readln(x[i]);
    end;
end;

procedure tampildata(p:integer);
begin
    for i:=1 to p do
        writeln('X[',i:2,']: ',x[i]);
end;

function datamin(p:integer):integer;
begin
    datamin:=x[1];
    for i:=2 to p do
    begin
        if datamin>x[i] then
            datamin:=x[i];
    end;
end;

function datamaks(p:integer):integer;
begin
    datamaks:=x[1];
    for i:=2 to p do
    begin
        if datamaks<x[i] then
            datamaks:=x[i];
    end;
end;

function rerata(p:integer):real;
var total:integer;
begin
    total:=0;
    for i:=1 to p do
        total:=total+x[i];
    rerata:=total/p;
end;

begin
    writeln('Selamat datang di aplikasi statistik sederhana');
    repeat
        writeln('Silahkan pilih menu berikut:');
        writeln('1. Input data');
        writeln('2. Tampilkan semua data');
        writeln('3. Tampilkan data terkecil');
        writeln('4. Tampilkan data terbesar');
        writeln('5. Tampilkan rata-rata');
        writeln('6. Keluar');
        write('Pilihan Anda: ');
        readln(pilih);
        writeln;
        case pilih of
        1:  begin
                writeln('Input Data');
                writeln('==========');
                write('Banyak data: '); readln(n);
                inputdata(n);
            end;
        2:  begin
                writeln('Menampilkan Data');
                writeln('================');
                tampildata(n);
            end;
        3:  begin
                writeln('Data terkecil= ',datamin(n));
            end;
        4:  begin
                writeln('Data terbesar= ',datamaks(n));
            end;
        5:  begin
                writeln('Rata-rata= ',rerata(n):0:2);
            end;
        6: writeln('Terima kasih dan sampai jumpa kembali')
        else 
            begin
                writeln('Anda salah input pilihan');
            end;
        end;
    writeln;
    until pilih=6;
    readln;
end.

