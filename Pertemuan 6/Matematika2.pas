Program Matematika2;

var e,eku,perf,eror:real;
    i,n:integer;
begin
    write(' Jumlah perulangan maksimum: '); readln(n);
    write(' Error maksimal yang diinginkan: '); readln(eror);
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
        if (abs(e-eku)<eror) then break;
    end;
    writeln;
    writeln(' Eku   =  ',eku:0:20);
    writeln(' Selisih= ',e-eku:0:20);
    readln;
end.
