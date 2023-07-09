var
    n,bil,total,i:integer;
    rerata:real;
begin
    write('Ingin melakukan pada berapa bilangan: ');readln(n);
    total:=0;
    for i:=1 to n do
        begin
            write('Masukkan nilai ke-',i,': '); readln(bil);
            total:=total+bil;
        end;
    for i:=1 to n do
        begin
            if i<>n then
                begin
                    write(i,' + ');
                end
            else write(i);
        end;
    writeln(' = ',total);
end.