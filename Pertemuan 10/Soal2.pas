program matrix;

type matrik= array [1..100, 1..100] of integer;

var i,j:integer;

function inputmatriks(var c:matrik;p,q:integer):integer;
begin
	for i:=1 to p do
    begin
    for j:=1 to q do
        begin
            write('[',i,',',j,']= ');
            readln(c[i,j]);
        end;
    end;
end;

function inputmatrikspersegi(var a:matrik; p:integer):integer;
begin
	for i:=1 to p do
    begin
    for j:=1 to p do
        begin
        write ('Elemen A(',i,',',j,') : ');
        readln (a[i,j]);
        end;
    end;
end;

procedure tampil1(var c:matrik;p,q:integer);
begin
	for i:=1 to p do
    begin
    for j:=1 to q do
        write (c[i,j]:4);
    writeln;
    end;
end;

procedure tampil2(var a:matrik; p:integer);
begin
    writeln('Matriks: ');
	for i:=1 to p do
    begin
    for j:=1 to p do
        write (a[i,j]:4);
    writeln;
    end;
end;

function perkalian(var c,d:matrik;x:matrik;m,n,o:integer):integer;
var k:integer;
begin
    for i:=1 to m do
        for j:=1 to o do
            for k:=1 to n do
                x[i,j] := x[i,j] + c[i,k]*d[k,j];
    writeln('Hasil perkalian matriks AxB: ');
    Writeln;
    for i:=1 to m do
    begin
        for j:=1 to o do
        write(x[i,j]:4);
        writeln;
    end;
end;

function determinan(var c:matrik; p:integer):integer;
var d,e:array [1..100] of integer;
    o,q,t,u,z:integer;
begin
    if p=1 then 
    begin
        determinan:=c[i,j];
    end
    else if p=2 then
    begin
        determinan:=(c[1,1])*(c[2,2])-(c[1,2])*(c[2,1]);
    end
    else
    begin
        for i:=1 to p do
        begin
            for j:=(p+1) to p+(p-1) do
            begin
                c[i,j]:=c[i,j-p];
            end;
        end;
        for j:=1 to p do
        begin
            o:=1;
            q:=j-1;
            for z:=1 to p do
            begin
                q:=q+1;
                o:=o*c[z,q];
            end;
            d[j]:=o;
        end;
        for i:=p+(p-1) downto p-1 do
        begin
            o:=1;
            q:=i+1;
            for z:=1 to p do
            begin
                q:=q-1;
                o:=o*c[z,q];
            end;
            e[i]:=o;
        end;
        t:=0;
        u:=0;
        for j:=1 to p do
            t:=t+d[j];
        for i:=p+(p-1) downto p-1 do
            u:=u+e[i];
        determinan:=t-u;
    end;
end;

function transpose(var c:matrik;p,q:integer):integer;
var o:integer;
begin
    o:=p; p:=q; q:=o;
    for j:=1 to p do
    begin
        for i:=1 to q do
            write(c[i,j]:4);
        writeln;
    end;
end;

{function invers(var c:matrik;p:integer):real;
var inv:real;
begin
    if p=2 then
    begin
        inv:=1/determinan(c,p);
        for i:=1 to p do
        begin
            for j:=1 to p do
            begin
                c[i,j]:=c[i,j]*inv;
            end;
        end;
    end;
end;}


var pilih,m,n,o:integer;
    a,b,c: matrik;

begin
    repeat
        writeln('Silahkan Pilih Menu:');
        writeln('1. Perkalian Matriks');
        writeln('2. Determinan Matriks');
        writeln('3. Transpose Matriks');
        writeln('4. Invers Matriks');
        writeln('5. Keluar');
        write('Pilihan Anda: '); readln(pilih);
		writeln;
        case pilih of
        1:  begin
                writeln('Ordo Matriks A');
                write('Baris: '); readln(m);
                write('Kolom: '); readln(n);
                inputmatriks(a,m,n);
                writeln;
                tampil1(a,m,n);
                writeln('Ordo Matriks B');
                writeln('Baris: ',n);
                write('Kolom: '); readln(o);
                inputmatriks(b,n,o);
                tampil1(b,n,o);
                writeln('Matriks A x B: ');
                perkalian(a,b,c,m,n,o)
            end;
        2:  begin
                write('Masukkan ordo matriks (2 = ordo 2x2): '); readln(m);
                inputmatrikspersegi(a,m);
                writeln;
                tampil2(a,m);
                writeln;
                writeln('Determinan matriks a= ',determinan(a,m));
            end;
        3:  begin
                writeln('Ordo Matriks A');
                write('Baris: '); readln(m);
                write('Kolom: '); readln(n);
                inputmatriks(a,m,n);
                writeln;
                tampil1(a,m,n);
                writeln;
                writeln('Matriks A Transpose: ');
                transpose(a,m,n);
            end;
        4:  begin
                write('Masukkan ordo matriks (2 = ordo 2x2): '); readln(m);
                inputmatrikspersegi(a,m);
                writeln;
                tampil2(a,m);
                writeln;
            end;
        5:  begin
                writeln('Terima kasih telah menggunakan program ini');
            end;
        else 
            begin
                writeln('Anda salah input pilihan');
            end;
        end;
        writeln;
    until pilih=5;
	readln;
end.