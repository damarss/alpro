uses crt;
var
    tugas,uts,uas,NA:integer;
    grade:char;
begin
    clrscr;
    writeln(' Inputkan nilai Anda ');
    write('Tugas : '); readln(tugas);
    write('UTS   : '); readln(uts);
    write('UAS   : '); readln(uas);

    NA:= (tugas*2+uts*3+uas*5) div 10;
    writeln(' Nilai Akhir= ',NA);

    case NA of
      0,1,2,3,4..19 : grade:='E';
      20..39 : grade:='D';
      40..59 : grade:='C';
      60..79 : grade:='B';
      80..100: grade:='A';
    end;

    if ord(grade)<>0 then writeln('Grade anda ',grade)
    else writeln(' Maaf, anda salah input nilai');

    writeln(' Terima kasih');
    readln;
end.
