var
    n,bil,total,i:integer;
    rerata:real;
begin
    write('Ingin melakukan pada berapa bilangan: ');readln(n);
    total:=0;
    for i:=1 to n do
            total:=total+i;
    for i:=1 to n do
        begin
            if i<>n then
                begin
                    write(i,' + ');
                end
            else write(i);
        end;
    writeln(' = ',total);
    readln;
end.
