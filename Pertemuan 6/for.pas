program totalratarata;
var
    data,i,n,total:integer;
    rerata:real;
begin
    write('Jumlah data= '); readln(n);
    
    total:=0;
    for i:=1 to n do
    begin
        write('Data ke-',i:2,'= ');
        readln(data);
        total:=total+data;
    end;
    
    rerata:=total/n;
    writeln('Total= ',total);
    writeln('Rata-rata= ',rerata:0:2);
    readln;
end.