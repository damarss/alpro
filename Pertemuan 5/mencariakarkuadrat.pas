Program Akar2;

const e=0.01;
var i,n,hasil,bantu:real;

label 1,2;

begin
    writeln(' Input nilai yang anda ingin cari akar kuadratnya');
    write(' nilai: ');
    readln(n);writeln(n:0:2);
    
    if n<0 then writeln(' akar negatif adalah bilangan imajiner')
    else if n=0 then writeln(' akar kuadrat dari 0 adalah 0')
    else
    begin
        i:=1;
        hasil:=0;
1:      bantu:=hasil+i;
        if (bantu*bantu)<n then 
        begin
            hasil:=hasil+i;
            goto 1;
        end
        else if (bantu*bantu=n) or (i<e) then
        begin
            hasil:=hasil+i;
            writeln(' akar kuadrat dari ',n:0:2,' adalah ',hasil:0:2);
            goto 2;
         end
         else 
         begin
            i:=i/10;
            goto 1;
         end;
    end;
    
2:  writeln(' Terima kasih');
	readln;
end.
