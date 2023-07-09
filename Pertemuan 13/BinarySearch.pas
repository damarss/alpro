program Biner_Rekursif;

type larik= array [1..10] of integer;
    
    function BinnarySearch(A:larik;x,low,high:integer):integer;
    var mid:integer;
    begin
        if low>=high then BinnarySearch:=0;
        mid:=(low+high) div 2;
        if A[mid]>x then 
		begin			
			BinnarySearch(A,x,low,mid-1);
		end
        else if A[mid]<x then 
		begin
			BinnarySearch(A,x,mid+1,high);
		end
        else 
		begin
			BinnarySearch:=mid;
		end;
    end;

var Data:larik;
    low,high,i,n,x,cari:integer;
    
begin
    write('Jumlah data: '); readln(n);
    low:=1;
    high:=n;
    for i:=1 to n do
    begin
        write('Data[',i,'] = ');
        readln(data[i]);
    end;
    write('Nilai yang ingin dicari: '); readln(x);
	writeln(BinnarySearch(data,x,low,high));
	i:=BinnarySearch(data,x,low,high);
	writeln(i);
    cari:=BinnarySearch(data,x,low,high);
	writeln(cari);
    if cari=0 then writeln('Data tidak ditemukan')
    else writeln('Data ditemukan pada data ke ',cari);
    readln;
end.