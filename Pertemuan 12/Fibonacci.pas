program fibonacci;

    function fibiter(n:integer):real;
    var i,fn1,fn2,fn:integer;
    begin
        fn:=1;
        fn1:=1;
        fn2:=1;
        for i:=3 to n do
        begin
            fn:=fn1+fn2;
            fn2:=fn1;
            fn1:=fn;
        end;
        fibiter:=fn;
    end;
    
    function fibrek(n:integer):real;
    begin
        writeln(n:4,' Masuk');
        if (n=1) or (n=2) then fibrek:=1
        else fibrek:=fibrek(n-1)+fibrek(n-2);
        writeln(n:8,' Selesai')
    end;

var n:integer;    

begin
    write('n = '); readln(n);
    writeln;
    writeln('f(',n,') = ',fibiter(n):0:0);
    writeln;
    writeln('f(',n,') = ',fibrek(n):0:0);
end.