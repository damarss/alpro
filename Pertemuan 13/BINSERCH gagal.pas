program Biner_Rekursif;

type larik= array [1..10] of integer;
    
    function BinnarySearch(A:larik;x,low,high:integer):integer;
    var mid:integer;
    begin
        if high<low then BinnarySearch:=0
		else
		begin
			mid:=(low+high) div 2;
			if A[mid]>x then BinnarySearch(A,x,low,mid-1)
			else if A[mid]<x then BinnarySearch(A,x,mid+1,high)
			else BinnarySearch:=mid;
		end;
    end;

var Data:larik;
    low,high,i,n,x,cari:integer;
    
begin
//    write('Jumlah data: '); readln(n);
    low:=1;
    high:=5;
{    for i:=1 to n do
    begin
        write('Data[',i,'] = ');
        readln(data[i]);
    end;}
	data[1]:=1;data[2]:=2;data[3]:=3;data[4]:=4;data[5]:=5;
    write('Nilai yang ingin dicari: '); readln(x);
    cari:=BinnarySearch(data,x,low,high);
    writeln(cari);
    if cari=0 then writeln('Data tidak ditemukan')
    else writeln('Data ditemukan pada data ke ',cari);
    readln;
end.