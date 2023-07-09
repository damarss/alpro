Program Array1_InputData;

type dataset= array [1..100] of integer;

var datautama:dataset;

procedure inputdata(var data:dataset;n:integer);
var i:integer;
begin
    for i:=1 to n do
    begin
        write('Data[',i:2,']= ');
        readln(data[i]);
    end;
end;

function total(data:dataset;n:integer):integer;
var	i,tot:integer;
begin
    tot:=0;
    for i:=1 to n do
        tot:=tot+data[i];
end;

function ratata(data:dataset;n:integer):real;
begin
	ratata:=total(data,n)/n;
end;

function standardeviasi(data:dataset;n:integer):real;
var er2,i:integer;
begin
    er2:=0;
    for i:=1 to n do
        er2:=er2+sqr(data[i]-ratata(data,n));
    standardeviasi:=sqrt(er2/(n-1));
end;

function nmin(data:dataset;n:integer):integer;
begin
    nmin:=data[1];
    for i:=2 to n do
        if nmin>data[i] then nmin:=data[i];
end;

function nmaks(data:dataset;n:integer):integer;
begin
    nmaks:=data[1];
    for i:=2 to n do
        if nmaks<data[i] then nmaks:=data[i];
end;

begin
    write('Jumlah data n= ');
    readln(n);
    inputdata(data;n);
    writeln('Total= ',total(datautama,n);
    writeln('Rata-rata= ',ratata(datautama,n):0:2);
    writeln('Standar deviasi= ',standardeviasi(datautama,n):0:2);
    writeln('Nilai Minimum= ',nmin(datautama,n));
    writeln('Nilai Maksimum= ',nmaks(datautama,n));
	readln;
end.
