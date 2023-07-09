program menentukanhargabayar;
var
    jumlah_barang: word;
    harga_satuan,pajak,harga_bayar: real;
begin
    writeln('Menentukan Harga Bayar');
    writeln('======================');
    write('Jumlah barang = ');
    readln(jumlah_barang);
    write('Harga satuan Rp. = ');
    readln(harga_satuan);
    write('Pajak Rp. = ');
    readln(pajak);
    harga_bayar:= jumlah_barang * harga_satuan + pajak;
    write('Harga bayar Rp. = ', harga_bayar:0:2);
    readln;
end.
