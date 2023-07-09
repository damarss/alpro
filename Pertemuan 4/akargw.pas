//fpc 3.0.4

program akargw;
var
    a,b,c,D: integer;
    ak1,ak2: real;
begin
    writeln('Program Mencari Akar Kuadrat');
    write('a = ');readln(a);writeln(a);
    write('b = ');readln(b);writeln(b);
    write('c = ');readln(c);writeln(c);
    write('Akar Persamaan Kuadrat adalah ');
    writeln('f(x)=',a,'x^2+',b,'x+',c);
    D:= b*b-(4*a*c);
    if D>0 then
    begin
        ak1:=(-b+sqrt(d))/(2*a);
        ak2:=(-b-sqrt(d))/(2*a);
        writeln('Akar 1 = ',ak1:0:2);
        writeln('Akar 2 = ',ak2:0:2);
    end
    else if D=0 then
    begin
        ak1:=(-b)/(2*a);
        writeln('Akar 1 = Akar 2 = ',ak1:0:2);
    end
    else writeln('Tidak ada akar real');
end.

