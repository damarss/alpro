Program Matematika;

var e,eku,perf,eror:real;
    i,n:integer;
begin
    write(' Jumlah suku: '); readln(n);
    e:=exp(1);
    eku:=1;
    perf:=1;
    writeln(' Exp(1)=  ',e:0:20);
    write(' Eku   = 1');
    for i:=1 to n-1 do
    begin
        perf:=perf/i;
        write(' + ',perf:8:5);
        eku:=eku+perf;
    end;
    writeln;
    writeln(' Eku   =  ',eku:0:20);
    writeln(' Selisih= ',e-eku:0:20);
    readln;
end.
