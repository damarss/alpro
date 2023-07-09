program inputnilailagi;

type
    nilaialpro=record
        NIM: string[3];
        Nama: string[20];
        Tugas: integer;
        UTS: integer;
        UAS: integer;
        Praktikum: integer;
        NA: real;
        Grade: String[1];
    end;
    AlproKS1= array[1..40] of nilaialpro;

var datanilai:AlproKS1;
    i,n:integer;

begin
    write('Jumlah Mahasiswa: '); readln(n);
    for i:=1 to n do
    begin
        with datanilai[i] do
        begin
            write('NIM: '); readln(NIM);
            write('Nama: '); readln(Nama);
            write('Tugas: '); readln(Tugas);
            write('UTS: '); readln(UTS);
            write('UAS: '); readln(UAS);
            write('Praktikum: '); readln(Praktikum);
            NA:=(0.1*Tugas)+(0.3*(UTS+UAS+Praktikum));
            if (NA>=0) or (NA<=100) then
            begin
                if NA<20 then grade:='E'
                else if NA<40 then grade:='D'
                else if NA<60 then grade:='C'
                else if NA<80 then grade:='B'
                else grade:='A';
            end
            else writeln('Anda Salah Input Nilai');
        end;
    end;
    write('NIM':3,'Nama':20,'Tugas':7,'UTS':5,'UAS':5,'Praktikum':10,'NA':6);writeln('Grade':6);
    for i:=1 to n do
    begin
        with datanilai[i] do
        begin
            write(NIM:3,Nama:20,Tugas:7,UTS:5,UAS:5,Praktikum:10,' ':2,NA:0:2);writeln(Grade:3);
        end;
    end;
end.