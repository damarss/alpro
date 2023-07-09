program JumlahN;
var
    i,n,data,total:Integer;
begin
    write('Masukkan angka N= '); readln(n);
    write('Misal N= ', n,', maka ');
    i:=1;
    total:=0;
    while i<=n do
        begin
            if i=1 then write(i)
			else write(' + ',i);
            i:=i+1;
            total:=total+i
        end;
    total:=total-(i-1);
    write(' = ',total);
    readln;
end.