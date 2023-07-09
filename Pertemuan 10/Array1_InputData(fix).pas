Program Array1_InputData;
type dataset= array [1..100] of integer;

    procedure inputdata(var data:dataset;n:integer);
    var i:integer;
    begin
        for i:=1 to n do 
        begin
            write('data[',i:2,']= ');
            readln(data[i]);
        end;
    end;
    
    function total(data:dataset;n:integer):integer;
    var i,tot:integer;
    begin
        tot:=0;
        for i:=1 to n do
            tot:=tot+data[i];
        total:=tot;
    end;
    
    function rata(data:dataset;n:integer):real;
    begin
        rata:=total(data,n)/n;
    end;
function std(data:dataset;n:integer):real;
    var i:integer;
        er2,rerata:real;
    begin
        er2:=0;
        rerata:=rata(data,n);
        for i:=1 to n do
            er2:=er2+sqr(data[i]-rerata);
        
        std:=sqrt(er2/(n-1));
    end;
    
    function nmin(data:dataset;n:integer):integer;
    var i,min:integer;
    begin
        min:=data[1];
        for i:=2 to n do
            if min>data[i] then min:=data[i];
        nmin:=min;
    end;
    
    function nmaks(data:dataset;n:integer):integer;
    var i,maks:integer;
    begin
        maks:=data[1];
        for i:=2 to n do
            if maks<data[i] then maks:=data[i];
        nmaks:=maks;
    end;
	
var datautama:dataset;
    n:integer;

begin
    write('Jumlah data n= ');
    readln(n);
    inputdata(datautama,n);
    
    writeln('Total= ',Total(datautama,n));
    writeln('Rata-rata= ',rata(datautama,n):0:2);
    writeln('Standar deviasi= ',std(datautama,n):0:2);
    writeln('Nilai Minimum= ',nmin(datautama,n));
    writeln('Nilai Maksimum= ',nmaks(datautama,n));
	readln;
end.
