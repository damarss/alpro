Program Matematika3;
var e,eku,perf,eror:real;
    i,n:integer;
begin
//    write(' Jumlah perulangan maksimum: '); readln(n);
    write(' Error maksimal yang diinginkan: ');readln(eror);
    e:=exp(1);
    writeln(' Exp(1)=  ',e:0:20);
    eku:=1;
    perf:=1;
    write(' Eku   =  1 ');
    i:=1;
    while (abs(e-eku)>=eror) do
    begin
        perf:=perf/i;
        write(' + ',perf:8:5);
        eku:=eku+perf;
        i:=i+1;    
    end;
    writeln;
    writeln('       =  ',eku:0:20);
    writeln(' Selisih= ',e-eku:0:20);
    readln;
end.
