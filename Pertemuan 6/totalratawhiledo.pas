program totalratarata;
var
    data,i,total:longint;
    rerata:real;
begin
    data:=0;
    total:=0;
    i:=1;
    while data>=0 do
        begin
            write('Data ke-',i,'= ');
            readln(data);
            total:=total+data;
            i:=i+1;
        end;
    total:=total-data;
    i:=i-2;
    rerata:=total/i;
    writeln('Total= ',total);
    writeln('Rata-rata= ',rerata:0:2);
    readln;
end.