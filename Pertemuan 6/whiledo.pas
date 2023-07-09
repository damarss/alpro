program totalratarata;
var
    data,i,n,total:integer;
    rerata:real;
begin
    write('Jumlah data= '); readln(n);
    
    total:=0;
    i:=1;
    while i<=n do
        begin
            write('Data ke-',i,'= ');
            readln(data);
            total:=total+data;
            i:=i+1;
        end;
    
    rerata:=total/n;
    writeln('Total= ',total);
    writeln('Rata-rata= ',rerata:0:2);
    readln;
end.