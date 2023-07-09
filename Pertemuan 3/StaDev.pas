Program StaDev;

var x1,x2,x3,x4      : integer; {data}
    n                : integer; {jumlah data}
    sigmax           : integer; {total data}
    rerata           : real; {rata-rata data}
    e1,e2,e3,e4      : real; {selisih xi-xbar}
    sigmae2          : real; {total ei kuadrat}
    sd               : real; {standar deviasi}
    
begin
    writeln(' Input data ');
    writeln(' Data ke-1: ',x1); readln(x1);
    writeln(' Data ke-2: ',x2); readln(x2);
    writeln(' Data ke-3: ',x3); readln(x3);
    writeln(' Data ke-4: ',x4); readln(x4);
    n:=4;
    writeln;
    sigmax:= (x1+x2+x3+x4);
    rerata:= sigmax/n;
    e1:=x1-rerata;
    e2:=x2-rerata;
    e3:=x3-rerata;
    e4:=x4-rerata;
    sigmae2:=sqr(e1)+sqr(e2)+sqr(e3)+sqr(e4);
    sd:=sqrt(sigmae2/(n-1));
    writeln(' Rata-rata=       ',rerata:0:2);
    writeln(' Standar Deviasi= ',sd:0:2);
end.