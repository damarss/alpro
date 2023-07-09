program BinarySearchRekursif;

var mid:integer;

type larik=array [1..100] of integer;

    Function BinarySearch(A:larik;low:integer;high:integer;x:integer):integer;
    begin
        if high>=low then
        begin
            mid:=(low+high) div 2;
            if A[mid]=x then BinarySearch:=mid
            else if A[mid]>x then BinarySearch(A,low,mid-1,x)
            else BinarySearch(A,mid+1,high,x);
        end
        else BinarySearch:=0;
    end;

var data:larik;
    i,n,x,low,high,cari:integer;

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
    cari:=BinarySearch(data,low,high,x);
    cari:=cari+mid;
    if cari=0 then writeln('Data tidak ditemukan')
    else writeln('Data ditemukan pada data ke ',cari);
    readln;
end.