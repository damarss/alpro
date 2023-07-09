Program CariAkar2;
const e=0.00000001;
    function akar2(x:real):real;
    var l,m,h,selisih:real;
    begin
        l:=0;h:=x+1;selisih:=1;
        while (sqr(selisih)>e) do
        begin
            m:=(l+h)/2;
            selisih:=sqr(m)-x;
            if sqr(m)>x then h:=m
            else l:=m;
        end;
        akar2:=m;
    end;

begin
    writeln(akar2(0.3):0:4);
    readln;
end.
