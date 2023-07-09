program konversi_nilai;
var
    tugas,uts,uas,na:real;
begin
    write('Nilai tugas: '); readln(tugas);
    write('Nilai UTS  : '); readln(uts);
    write('Nilai UAS  : '); readln(uas);
    na:=(20/100)*(tugas)+(30/100)*(uts)+(50/100)*(uas);
    writeln('Nilai akhir: ',na:0:2);
    if (tugas>=0) and (tugas<=100) and (uts>=0) and (uts<=100) and (uas>=0) and (uas<=100) and (na>=0) and(na<=100) then
        begin
            if na<20 then
                begin
                    writeln('Nilai Anda E');
                end
            else if na<40 then
                begin
                    writeln('Nilai Anda D');
                end
            else if na<60 then
                begin
                    writeln('Nilai Anda C');
                end
            else if na<80 then
                begin
                    writeln('Nilai Anda B');
                end
            else
                begin
                    writeln('Nilai Anda A');
                end
        end
    else
        begin
            writeln('Anda salah input nilai!')
        end;
    readln; 
end.