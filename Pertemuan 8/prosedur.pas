Program Judul;

Procedure Bintang(kar:char);
Begin
      write(kar);
End;
Var i : integer;
    c : char;
Begin
    write(' Karakter yang diinginkan: ');
    readln(c);
	for i:=1 to 9 do bintang(c);
	writeln;
	bintang(c);
	write(' Judul ');
	bintang(c);
	writeln;
	for i:=1 to 9 do bintang(c);
End.
