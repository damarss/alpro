Program InputData1;

var data,i,n,total: integer;
    rerata: real;
    
begin
    total:=0;
    for i:=1 to 5 do
    begin
        write('Data ke-',i:2,'= ');
        readln(data);
        if (data<0) then break;
        total:=total+data;
    end;
    if data<0 then i:=i-1;
    Rerata:=total/(i);
    writeln('Total=     ',total);
    writeln('Rata-rata= ',rerata:0:2);
    
end.
