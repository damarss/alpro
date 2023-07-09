program BilPrima;
var
    i,n:integer;
    isprima:boolean;
begin
    writeln('Inputkan bilangan bulat positif'); 
    write('n= '); readln(n);
    isprima:=true;
    for i:=2 to (round(sqrt(n))) do
    begin
        if (n mod i)=0 then
            begin
                isprima:=false;
                break;
            end;
    end;
    if isprima=true then
        begin
            writeln('Bilangan Prima');
        end
    else writeln('Bukan Bilangan Prima');
end.