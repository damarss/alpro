program binaryawdea;

type kelas= array [1..100] of integer;

    Function BinarySearch(A:kelas; N: Integer; X:Integer): integer;
    var
    	low, mid, high: integer;
    begin
    	low := 1;
    	high := N;
    	while (low <= high) do
    	begin
    	    mid := (low + high) div 2;
            if (A[mid]>X) then high:=mid-1
	        else if (A[mid] < X) then low := mid + 1
	       else break;
    	end;
	    if A[mid] = X then BinarySearch:= mid {ditemukan} 
	    else BinarySearch := 0; {tidak ditemukan}
    end;

var Data:kelas;
    min,max,med,i,n,x,cari:integer;
    
begin
    write('Jumlah data: '); readln(n);
    for i:=1 to n do
    begin
        write('Data[',i,'] = ');
        readln(data[i]);
    end;
    write('Nilai yang ingin dicari: '); readln(x);
    cari:=BinarySearch(data,n,x);
    if cari=0 then writeln('Data tidak ditemukan')
    else writeln('Data ditemukan pada data ke ',cari);
	readln;
end.