Program Konversi_Nilai;

var tugas,uts,uas: integer;
    NA           : real;
    grade        : char;
    
begin
    writeln('Input nilai Anda ');
    write(' Tugas: ');readln(tugas);writeln(tugas);
    write(' UTS: ');readln(uts);writeln(uts);
    write(' UAS: ');readln(uas);writeln(uas);
    
    NA:=tugas*0.2+uts*0.3+uas*0.5;
    writeln(' Nilai akhir= ',NA:0:2); {coba di Turbo Pascal}
    
    if NA<0 then writeln(' salah input nilai')
    else if NA<20 then
        grade:='E'
    else if NA<40 then 
        grade:='D'
    else if NA<60 then 
        grade:='C'
    else if NA<80 then 
        grade:='B'
    else if NA<=100 then
        grade:='A'
    else writeln(' salah input nilai');
    if ord(grade)<>0 then writeln('Grade= ',grade);
   
end.