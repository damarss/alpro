program faktorial;

var
    n,i,fak: integer;

begin
    write('n= '); readln(n);
    fak:=1;
    for i:=1 to n do
        fak:=fak*i;
    writeln(i:3,'!= ',fak);
    readln;
end.
