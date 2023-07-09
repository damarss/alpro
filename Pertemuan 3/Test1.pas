program test1;
var
    x: real;
    i: integer;
    c: string;
    s: string;
BEGIN
    x := -34.55;
    x := -3.9E-3;
    WRITELN(x);
    readln;
    i := 10;
    i := i * i;
    i := 9933;
    i := -99999;
    i := 999.44;
    c := '1';
    c := 1;
    //tipe data char tidak dapat menampilkan bilangan
    c := 'Bert';
    //data char harus 1 karakter
    c := 'd';
    WRITELN(c);
    readln;
    d := 'c';
    //d tidak ada dalam variabel
    WRITELN(s);
    //tidak akan keluar output apapun karena s tidak diinputkan
    readln;
END.
