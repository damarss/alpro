type
	masuk = record
	tgl : 1..31;
	bln : 1..12;
	thn : integer;
	end;
	alamat = record
	jalan : string[20];
	kota : string[10];
	end;
   nilaipeg = record
	pokok,tunjangan,lembur : real;
	end;
	pegawai = record
	nama : string[20];
	tglmasuk : masuk;
	almt : alamat;
	nilai : nilaipeg;
	end;
var
	datapegawai : array [1..10] of pegawai;
	i: integer;

begin
    for i:=1 to 3 do
    begin
        with datapegawai[i] do
        begin
            write('Nama   : '); readln(nama);
            writeln('Tanggal Masuk');
            with tglmasuk do
            begin
                write('  Tanggal: '); readln(tgl);
                write('  Bulan  : '); readln(bln);
                write('  Tahun  : '); readln(thn);
            end;
            writeln('Alamat');
            with almt do
            begin
                write('  Jalan  : '); readln(jalan);
                write('  Kota   : '); readln(kota);
            end;
            writeln('Nilai');
            with nilai do
            begin
                write('  Pokok     : '); readln(pokok);
                write('  Tunjangan : '); readln(tunjangan);
                write('  Lembur    : '); readln(lembur);
            end;
        end;
    end;
    for i:=1 to 3 do
    begin
        with datapegawai[i] do
        begin
            writeln('Nama: ',nama);
            writeln('Tanggal Masuk: ',tglmasuk.tgl,'-',tglmasuk.bln,'-',tglmasuk.thn);
            writeln('Alamat: ',almt.jalan,', ',almt.kota);
            writeln('Nilai: ',nilai.pokok:0:0,' + ',nilai.tunjangan:0:0,' + ',nilai.lembur:0:0,' = ',(nilai.pokok+nilai.tunjangan+nilai.lembur):0:0);
        end;
    end;
end.