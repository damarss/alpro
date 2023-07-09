Program CariAkar2;

var a,b,c,d:integer;
    ak1,ak2:real;
    
begin
    writeln('Program mencari akar persamaan kuadrat');
    writeln('   f(x)=ax^2+bx+c');
    writeln('======================================');
    writeln;
    write(' a= ');readln(a);writeln(a);
    write(' b= ');readln(b);writeln(b);
    write(' c= ');readln(c);writeln(c);
    
    D:=b*b-4*a*c;
    
    if D>0 then
    begin
        ak1:=(-b+sqrt(d))/(2*a);
        ak2:=(-b-sqrt(d))/(2*a);
        writeln(' akar 1 = ',ak1:0:2);
        writeln(' akar 2 = ',ak2:0:2);
    end
    else if D=0 then
    begin
        ak1:=(-b)/(2*a);
        writeln(' akar 1 = akar 2 = ',ak1:0:2);
    end
    else writeln(' Tidak memiliki akar real');
end.