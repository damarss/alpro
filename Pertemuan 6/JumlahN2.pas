program JumlahN2;
var
    i,n,data,total:Integer;
begin
    write('Masukkan angka N= '); readln(n);
    write('Misal N= ', n,', maka ');
    i:=1;
    total:=0;
    while i<=n do
        begin
            total:=total+i;
            i:=i+1;
        end;
	i:=1;
	while i<=n do
		begin
			if i<>n then 
				begin
					write(i,' + ');
				end
			else 
				begin
					write(i,' = ');
				end;
			i:=i+1;
		end;
    write(total);
    readln;
end.