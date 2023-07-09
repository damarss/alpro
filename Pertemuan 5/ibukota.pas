Program Ibukota;

uses crt;
var ibk:string[20];

begin
    write(' Input nama kota di pulau jawa: ');
    readln(ibk);writeln(ibk);
    ibk:=upcase(ibk);
    
    case ibk of
        'JAKARTA' : writeln(' Ibukota propinsi DKI Jakarta');
        'SERANG'  : writeln(' Ibukota propinsi Banten');
        'BANDUNG' : writeln(' Ibukota propinsi Jawa Barat');
        'SEMARANG': writeln(' Ibukota propinsi Jawa Tengah');
        'SURABAYA': writeln(' Ibukota propinsi Jawa Timur');
        else writeln(' Bukan ibukota propinsi di pulau jawa');
    end;

end.
